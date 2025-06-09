import 'package:coinmerce/core/injector/injector.dart';
import 'package:coinmerce/generated/l10n.dart';
import 'package:coinmerce/presentation/error/error_screen.dart';
import 'package:coinmerce/presentation/main/home/infrastructure/coin_bloc/coin_bloc.dart';
import 'package:coinmerce/presentation/main/home/presentation/coin_item.dart';
import 'package:coinmerce/presentation/others/app_bar.dart';
import 'package:coinmerce/presentation/others/empty_screen.dart';
import 'package:coinmerce/presentation/others/primary_constants.dart';
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
      child: BlocProvider(
        create: (_) => Injector.instance<CoinBloc>()..add(const CoinEvent.init()),
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
                            background: ColoredBox(
                              color: Theme.of(context).colorScheme.surface,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: PrimaryConstants.kDefaultSpacing),
                                child: SizedBox(
                                  height: PrimaryConstants.kLargeSpacing,
                                  child: TextFormField(
                                    style: Theme.of(context).textTheme.bodyLarge,
                                    onChanged:
                                        (String str) => context.read<CoinBloc>().add(CoinEvent.search(phrase: str)),
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
                          ),
                        ),
                    ];
                  },
                  body: Builder(
                    builder: (context) {
                      return switch (state) {
                        CoinState(isLoading: true) => const Center(child: CircularProgressIndicator()),
                        CoinState(isError: true) => ErrorScreen(
                          '${S.of(context).error} \n\n Tap here to reload again!',
                        ),
                        CoinState(coinsData: []) => const EmptyScreen(),
                        _ => RefreshIndicator(
                          onRefresh: () async {
                            _controller.text = '';
                            context.read<CoinBloc>().add(const CoinEvent.refresh());
                          },
                          child: ListView.builder(
                            itemCount: state.coinsData.length,
                            itemBuilder: (_, index) {
                              final coin = state.coinsData[index];
                              return CoinItem(coin);
                            },
                          ),
                        ),
                      };
                    },
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
