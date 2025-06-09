import 'package:coinmerce/core/injector/injector.dart';
import 'package:coinmerce/generated/l10n.dart';
import 'package:coinmerce/ui/error/error_screen.dart';
import 'package:coinmerce/ui/main/home/infrastructure/coin_bloc/coin_bloc.dart';
import 'package:coinmerce/ui/main/home/presentation/coin_item.dart';
import 'package:coinmerce/ui/others/app_bar.dart';
import 'package:coinmerce/ui/others/empty_screen.dart';
import 'package:coinmerce/ui/others/primary_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _CoinState();
}

class _CoinState extends State<MainScreen> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (_) => Injector.instance<CoinBloc>()..add(const CoinEvent.init()))],
        child: Scaffold(
          appBar: const PrimaryAppbar(),
          body: BlocBuilder<CoinBloc, CoinState>(
            builder:
                (context, state) => NestedScrollView(
                  floatHeaderSlivers: true,
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      if (!state.isError)
                        SliverAppBar(
                          expandedHeight: 40,
                          elevation: 1,
                          flexibleSpace: FlexibleSpaceBar(
                            collapseMode: CollapseMode.none,
                            background: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: PrimaryConstants.kDefaultSpacing,
                                vertical: PrimaryConstants.kSmallSpacing,
                              ),
                              child: SizedBox(
                                height: PrimaryConstants.kLargeSpacing,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).listTileTheme.tileColor,
                                          borderRadius: BorderRadius.circular(PrimaryConstants.kNormalBorderRadius),
                                        ),
                                        child: SizedBox(
                                          height: PrimaryConstants.kLargeSpacing,
                                          child: TextFormField(
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            onChanged:
                                                (String str) =>
                                                    Injector.instance<CoinBloc>().add(CoinEvent.search(phrase: str)),
                                            decoration: InputDecoration(
                                              suffixIconConstraints: const BoxConstraints(
                                                maxHeight: PrimaryConstants.kDefaultSpacing,
                                              ),

                                              hintText: S.of(context).search,
                                              contentPadding: const EdgeInsets.all(PrimaryConstants.kContentPadding),
                                            ),
                                            controller: _controller,
                                            focusNode: _focusNode,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ];
                  },
                  body: Builder(
                    builder: (context) {
                      if (state.isLoading) return const Center(child: CircularProgressIndicator());
                      if (state.isError) {
                        return ErrorScreen('${S.of(context).error} \n\n Tap here to reload again!');
                      }
                      if (state.coinsData.isEmpty) return const EmptyScreen();
                      return RefreshIndicator(
                        onRefresh: () async {
                          Injector.instance<CoinBloc>().add(const CoinEvent.init());
                        },
                        child: ListView.builder(
                          itemCount: state.coinsData.length,
                          itemBuilder: (_, index) {
                            final coin = state.coinsData[index];
                            return CoinItem(coin);
                          },
                        ),
                      );
                    },
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
