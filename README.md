# Coinmerce Crypto Prices App

A Simple Flutter application that displays the top 10 cryptocurrencies by market capitalization using the CoinGecko API.

## Features

- List of top 10 cryptocurrencies
- Displays:
  - Name
  - Symbol
  - Current price (USD)
  - 24-hour price change percentage
- Pull-to-refresh functionality
- Clean and modular code structure
- Search functionality
- Simple price chart for each cryptocurrency
- Dark mode toggle

## Tech Stack

- **Flutter**
- **State Management**: flutter_bloc
- **HTTP package**: Retrofit & Dio

## API

Using the [CoinGecko API](https://www.coingecko.com/en/api):

```url
https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false
