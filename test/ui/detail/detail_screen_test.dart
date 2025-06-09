import 'package:coinmerce/api/model/coin.dart';
import 'package:coinmerce/api/model/roi.dart';
import 'package:coinmerce/generated/l10n.dart';
import 'package:coinmerce/ui/detail/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Coin mock;

  setUp(() {
    mock = Coin(
      id: 'bitcoin',
      symbol: 'btc',
      name: 'Bitcoin',
      image: 'https://example.com/bitcoin.png',
      currentPrice: 50000,
      marketCap: 1000000000000,
      marketCapRank: 1,
      fullyDilutedValuation: 1100000000000,
      totalVolume: 50000000000,
      high24h: 51000,
      low24h: 49000,
      priceChange24h: 1000,
      priceChangePercentage24h: 2,
      marketCapChange24h: 20000000000,
      marketCapChangePercentage24h: 2,
      circulatingSupply: 19000000,
      totalSupply: 21000000,
      maxSupply: 21000000,
      ath: 69000,
      athChangePercentage: -27.5,
      athDate: DateTime(2021, 11, 10),
      atl: 67.81,
      atlChangePercentage: 73650,
      atlDate: DateTime(2013, 7, 6),
      roi: Roi(times: 1.5, currency: 'btc', percentage: 50),
      lastUpdated: DateTime(2024),
    );
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: DetailScreen(coin: mock),
    );
  }

  testWidgets('DetailScreen displays coin information correctly', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle(); // Wait for localization to load

    // Verify coin name and symbol
    expect(find.text('Bitcoin'), findsOneWidget);
    expect(find.text('BTC'), findsOneWidget);

    // Verify price information
    expect(find.text(r'$50,000.00'), findsOneWidget);
    expect(find.text(r'+$2.00'), findsOneWidget);

    // Verify market data section
    expect(find.text('Market Data'), findsOneWidget);
    expect(find.text('Market Cap'), findsOneWidget);
    expect(find.text('Market Cap Rank'), findsOneWidget);
    expect(find.text('24h Volume'), findsOneWidget);
    expect(find.text('Circulating Supply'), findsOneWidget);

    // Verify price statistics section
    expect(find.text('Price Statistics'), findsOneWidget);
    expect(find.text('24h High'), findsOneWidget);
    expect(find.text('24h Low'), findsOneWidget);
    expect(find.text('All Time High'), findsOneWidget);
    expect(find.text('All Time Low'), findsOneWidget);

    // Verify additional info section
    expect(find.text('Additional Info'), findsOneWidget);
    expect(find.text('Last Updated'), findsOneWidget);
    expect(find.text('ROI'), findsOneWidget);
  });

  testWidgets('DetailScreen handles image loading error', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle(); // Wait for localization to load

    // Verify error icon is displayed
    expect(find.byIcon(Icons.image_not_supported), findsOneWidget);
  });

  testWidgets('DetailScreen displays correct price change color', (WidgetTester tester) async {
    // Test positive price change
    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle(); // Wait for localization to load

    final priceChangeText = find.text(r'+$2.00');
    expect(priceChangeText, findsOneWidget);

    final priceChangeWidget = tester.widget<Text>(priceChangeText);
    expect(priceChangeWidget.style?.color, Colors.green);

    // Test negative price change
    final coinWithNegativeChange = Coin(
      id: 'bitcoin',
      symbol: 'btc',
      name: 'Bitcoin',
      image: 'https://example.com/bitcoin.png',
      currentPrice: 50000,
      marketCap: 1000000000000,
      marketCapRank: 1,
      fullyDilutedValuation: 1100000000000,
      totalVolume: 50000000000,
      high24h: 51000,
      low24h: 49000,
      priceChange24h: -1000,
      priceChangePercentage24h: -2,
      marketCapChange24h: -20000000000,
      marketCapChangePercentage24h: -2,
      circulatingSupply: 19000000,
      totalSupply: 21000000,
      maxSupply: 21000000,
      ath: 69000,
      athChangePercentage: -27.5,
      athDate: DateTime(2021, 11, 10),
      atl: 67.81,
      atlChangePercentage: 73650,
      atlDate: DateTime(2013, 7, 6),
      roi: Roi(times: 1.5, currency: 'btc', percentage: 50),
      lastUpdated: DateTime(2024),
    );

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: DetailScreen(coin: coinWithNegativeChange),
      ),
    );
    await tester.pumpAndSettle(); // Wait for localization to load

    final negativePriceChangeText = find.text(r'-$2.00');
    expect(negativePriceChangeText, findsOneWidget);

    final negativePriceChangeWidget = tester.widget<Text>(negativePriceChangeText);
    expect(negativePriceChangeWidget.style?.color, Colors.red);
  });
}
