CREATE TABLE sec_cumulative_equities_new (
    dissemination_identifier VARCHAR(255),
    original_dissemination_identifier VARCHAR(255),
    action_type VARCHAR(255),
    event_type VARCHAR(255),
    event_timestamp TIMESTAMP,
    amendment_indicator VARCHAR(255),
    asset_class VARCHAR(255),
    product_name TEXT,
    cleared CHAR(1),
    mandatory_clearing_indicator VARCHAR(255),
    execution_timestamp TIMESTAMP,
    effective_date DATE,
    expiration_date DATE,
    maturity_date_of_the_underlier DATE,
    non_standardized_term_indicator VARCHAR(255),
    platform_identifier VARCHAR(255),
    prime_brokerage_transaction_indicator VARCHAR(255),
    block_trade_election_indicator VARCHAR(255),
    large_notional_off_facility_swap_election_indicator VARCHAR(255),
    notional_amount_leg_1 NUMERIC,
    notional_amount_leg_2 NUMERIC,
    notional_currency_leg_1 VARCHAR(255),
    notional_currency_leg_2 VARCHAR(255),
    notional_quantity_leg_1 NUMERIC,
    notional_quantity_leg_2 NUMERIC,
    total_notional_quantity_leg_1 NUMERIC,
    total_notional_quantity_leg_2 NUMERIC,
    quantity_frequency_multiplier_leg_1 NUMERIC,
    quantity_frequency_multiplier_leg_2 NUMERIC,
    quantity_unit_of_measure_leg_1 VARCHAR(255),
    quantity_unit_of_measure_leg_2 VARCHAR(255),
    quantity_frequency_leg_1 VARCHAR(255),
    quantity_frequency_leg_2 VARCHAR(255),
    notional_amount_in_effect_on_associated_effective_date_leg_1 NUMERIC,
    notional_amount_in_effect_on_associated_effective_date_leg_2 NUMERIC,
    effective_date_of_the_notional_amount_leg_1 DATE,
    effective_date_of_the_notional_amount_leg_2 DATE,
    end_date_of_the_notional_amount_leg_1 DATE,
    end_date_of_the_notional_amount_leg_2 DATE,
    call_amount NUMERIC,
    call_currency VARCHAR(255),
    put_amount NUMERIC,
    put_currency VARCHAR(255),
    exchange_rate NUMERIC,
    exchange_rate_basis VARCHAR(255),
    first_exercise_date DATE,
    fixed_rate_leg_1 NUMERIC,
    fixed_rate_leg_2 NUMERIC,
    option_premium_amount NUMERIC,
    option_premium_currency VARCHAR(255),
    price NUMERIC,
    price_unit_of_measure VARCHAR(255),
    spread_leg_1 NUMERIC,
    spread_leg_2 NUMERIC,
    spread_currency_leg_1 VARCHAR(255),
    spread_currency_leg_2 VARCHAR(255),
    strike_price NUMERIC,
    strike_price_currency_or_currency_pair VARCHAR(255),
    post_priced_swap_indicator VARCHAR(255),
    price_currency VARCHAR(255),
    price_notation VARCHAR(255),
    spread_notation_leg_1 VARCHAR(255),
    spread_notation_leg_2 VARCHAR(255),
    strike_price_notation VARCHAR(255),
    fixed_rate_day_count_convention_leg_1 VARCHAR(255),
    fixed_rate_day_count_convention_leg_2 VARCHAR(255),
    floating_rate_day_count_convention_leg_1 VARCHAR(255),
    floating_rate_day_count_convention_leg_2 VARCHAR(255),
    floating_rate_reset_frequency_period_leg_1 VARCHAR(255),
    floating_rate_reset_frequency_period_leg_2 VARCHAR(255),
    floating_rate_reset_frequency_period_multiplier_leg_1 NUMERIC,
    floating_rate_reset_frequency_period_multiplier_leg_2 NUMERIC,
    other_payment_amount NUMERIC,
    fixed_rate_payment_frequency_period_leg_1 VARCHAR(255),
    floating_rate_payment_frequency_period_leg_1 VARCHAR(255),
    fixed_rate_payment_frequency_period_leg_2 VARCHAR(255),
    floating_rate_payment_frequency_period_leg_2 VARCHAR(255),
    fixed_rate_payment_frequency_period_multiplier_leg_1 NUMERIC,
    floating_rate_payment_frequency_period_multiplier_leg_1 NUMERIC,
    fixed_rate_payment_frequency_period_multiplier_leg_2 NUMERIC,
    floating_rate_payment_frequency_period_multiplier_leg_2 NUMERIC,
    other_payment_type VARCHAR(255),
    other_payment_currency VARCHAR(255),
    settlement_currency_leg_1 VARCHAR(255),
    settlement_currency_leg_2 VARCHAR(255),
    settlement_location VARCHAR(255),
    collateralisation_category VARCHAR(255),
    custom_basket_indicator VARCHAR(255),
    index_factor NUMERIC,
    underlier_id_leg_1 VARCHAR(255),
    underlier_id_leg_2 VARCHAR(255),
    underlier_id_source_leg_1 VARCHAR(255),
    underlying_asset_name VARCHAR(255),
    underlying_asset_subtype_or_underlying_contract_subtype_leg_1 VARCHAR(255),
    underlying_asset_subtype_or_underlying_contract_subtype_leg_2 VARCHAR(255),
    embedded_option_type VARCHAR(255),
    option_type VARCHAR(255),
    option_style VARCHAR(255),
    package_indicator BOOLEAN,
    package_transaction_price NUMERIC,
    package_transaction_price_currency VARCHAR(255),
    package_transaction_price_notation VARCHAR(255),
    package_transaction_spread NUMERIC,
    package_transaction_spread_currency VARCHAR(255),
    package_transaction_spread_notation VARCHAR(255),
    physical_delivery_location_leg_1 VARCHAR(255),
    delivery_type VARCHAR(255),
    unique_product_identifier VARCHAR(255),
    upi_fisn VARCHAR(255),
    upi_underlier_name VARCHAR(255),
    UNIQUE (dissemination_identifier, event_timestamp)
);
