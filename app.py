from flask import Flask, render_template, g
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.orm import sessionmaker
from sqlalchemy import func

app = Flask(__name__)

# Configure database URIs
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_BINDS'] = {
    'amc_data': 'postgresql://postgres:s3cUr3PW@localhost/amc_data',
    'gme_data': 'postgresql://postgres:s3cUr3PW@localhost/gme_data',
    'xrt_data': 'postgresql://postgres:s3cUr3PW@localhost/xrt_data'
}

db = SQLAlchemy(app)

# Model for the new schema table
class SecCumulativeEquitiesNew(db.Model):
    __tablename__ = 'sec_cumulative_equities_new'
    dissemination_identifier = db.Column(db.String, primary_key=True)
    original_dissemination_identifier = db.Column(db.String)
    action_type = db.Column(db.String)
    event_timestamp = db.Column(db.String)
    notional_amount_leg_1 = db.Column(db.String)
    notional_amount_leg_2 = db.Column(db.String)
    total_notional_quantity_leg_1 = db.Column(db.String)
    total_notional_quantity_leg_2 = db.Column(db.String)
    floating_rate_payment_frequency_period_leg_2 = db.Column(db.String)
    price = db.Column(db.String)
    effective_date = db.Column(db.String)
    expiration_date = db.Column(db.String)
    underlier_id_leg_1 = db.Column(db.String)

# Model for the old schema table
class SecCumulativeEquitiesOld(db.Model):
    __tablename__ = 'sec_cumulative_equities_old'
    dissemination_identifier = db.Column(db.String, primary_key=True)
    original_dissemination_identifier = db.Column(db.String)
    action_type = db.Column(db.String)
    event_timestamp = db.Column(db.String)
    notional_amount_leg_1 = db.Column(db.String)
    notional_amount_leg_2 = db.Column(db.String)
    total_notional_quantity_leg_1 = db.Column(db.String)
    total_notional_quantity_leg_2 = db.Column(db.String)
    floating_rate_payment_frequency_period_leg_2 = db.Column(db.String)
    price = db.Column(db.String)
    effective_date = db.Column(db.String)
    expiration_date = db.Column(db.String)
    underlier_id_leg_1 = db.Column(db.String)

def get_session(bind_key):
    engine = db.get_engine(app, bind=bind_key)
    Session = sessionmaker(bind=engine)
    return Session()

@app.route('/')
def index():
    amc_counts = get_dissemination_counts('amc_data')
    gme_counts = get_dissemination_counts('gme_data')
    xrt_counts = get_dissemination_counts('xrt_data')

    return render_template('index.html', amc_counts=amc_counts, gme_counts=gme_counts, xrt_counts=xrt_counts)

def get_dissemination_counts(bind_key):
    session = get_session(bind_key)

    unique_original_new = session.query(SecCumulativeEquitiesNew.original_dissemination_identifier).distinct().count()
    unique_original_old = session.query(SecCumulativeEquitiesOld.original_dissemination_identifier).distinct().count()
    total_unique = unique_original_new + unique_original_old

    blank_or_null_new = session.query(SecCumulativeEquitiesNew).filter(
        (SecCumulativeEquitiesNew.original_dissemination_identifier == None) |
        (SecCumulativeEquitiesNew.original_dissemination_identifier == '')
    ).count()
    blank_or_null_old = session.query(SecCumulativeEquitiesOld).filter(
        (SecCumulativeEquitiesOld.original_dissemination_identifier == None) |
        (SecCumulativeEquitiesOld.original_dissemination_identifier == '')
    ).count()
    total_new = blank_or_null_new + blank_or_null_old

    total = total_unique + total_new

    session.close()
    return {'total_unique': total_unique, 'total_new': total_new, 'total': total}

@app.route('/<stock>')
def show_stock(stock):
    if stock not in ['amc', 'gme', 'xrt']:
        return "Stock not found", 404

    bind_key = f'{stock}_data'
    session = get_session(bind_key)
    data_new = session.query(SecCumulativeEquitiesNew).all()
    data_old = session.query(SecCumulativeEquitiesOld).all()
    session.close()
    return render_template('data.html', data_new=data_new, data_old=data_old, stock=stock.upper())

if __name__ == '__main__':
    app.run(debug=True)
