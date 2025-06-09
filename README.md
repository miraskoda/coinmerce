# Coinmerce Crypto Prices App

A Simple Flutter application that displays the top 10 cryptocurrencies by market capitalization using the CoinGecko API. The app is fully responsive and works seamlessly on mobile, web, and desktop platforms.

## Features

- List of top 10 cryptocurrencies
- Displays:
  - Name
  - Symbol
  - Current price (USD)
  - 24-hour price change percentage
  - Market cap and rank
  - 24h volume
  - Circulating supply
  - Price statistics (24h high/low, all-time high/low)
- Pull-to-refresh functionality
- Real-time search with instant filtering
- Clean and modular code structure
- Responsive design for all platforms
- Multi-language support (English, Czech, Dutch)
- Dark mode toggle

## Tech Stack

- **Flutter** - Cross-platform UI framework
- **State Management**: flutter_bloc
- **HTTP package**: Retrofit & Dio
- **Localization**: intl
- **Dependency Injection**: Custom injector
- **Code Generation**: freezed, json_serializable, retrofit_generator

## Web Support

The app is fully optimized for web platforms with the following features:

- Responsive layout that adapts to different screen sizes
- Touch-friendly interface for tablet users
- Keyboard navigation support
- Optimized image loading and caching
- Efficient state management for web performance
- Cross-browser compatibility

### Running on Web

To run the app on web:

```bash
flutter run -d chrome
```

For production build:

```bash
flutter build web
```

## API

Using the [CoinGecko API](https://www.coingecko.com/en/api):

```url
https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false
```

## Getting Started

1. Clone the repository
2. Run script:
   ```bash
   sh init.sh
   ```
3. Run the app:
   ```bash
   flutter run
   ```

