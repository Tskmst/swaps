import requests
from bs4 import BeautifulSoup
import pandas as pd

def scrape_options_chain(stock):
    url = f"https://chartexchange.com/symbol/nyse-{stock}/optionchain/summary/"
    response = requests.get(url)
    if response.status_code != 200:
        print(f"Failed to retrieve page: {response.status_code}")
        return None

    soup = BeautifulSoup(response.content, 'html.parser')
    chain_table = soup.find('table', {'id': 'chain'})

    if not chain_table:
        print("Could not find the options chain table.")
        return None

    headers = [header.text for header in chain_table.find_all('th')]
    rows = []

    for row in chain_table.find_all('tr')[1:]:
        cells = row.find_all('td')
        if len(cells) == len(headers):
            rows.append([cell.text.strip() for cell in cells])

    options_df = pd.DataFrame(rows, columns=headers)
    return options_df

if __name__ == "__main__":
    stock = 'amc'  # Example stock
    options_df = scrape_options_chain(stock)
    if options_df is not None:
        options_df.to_csv(f"{stock}_options_chain.csv", index=False)
        print(f"Options chain data saved to {stock}_options_chain.csv")
