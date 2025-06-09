import 'package:coinmerce/core/app_bloc/app_bloc.dart';
import 'package:coinmerce/generated/assets.gen.dart';
import 'package:coinmerce/generated/l10n.dart';
import 'package:coinmerce/presentation/main/info/dark_mode_list_tile.dart';
import 'package:coinmerce/presentation/main/info/lang_list_tile.dart';
import 'package:coinmerce/presentation/others/primary_constants.dart';
import 'package:coinmerce/presentation/others/primary_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String locale = context.select((AppBloc bloc) => bloc.state.locale);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(PrimaryConstants.kDefaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).about, style: Theme.of(context).textTheme.headlineMedium),
              const PrimarySpacing.gapMd(),
              Text(S.of(context).description_text, style: Theme.of(context).textTheme.bodyMedium),
              const PrimarySpacing.gapMd(),
              Center(child: Assets.images.logo.image(color: Theme.of(context).colorScheme.onSurface)),
              const PrimarySpacing.gapLg(),
              Text(S.of(context).language, style: Theme.of(context).textTheme.headlineMedium),
              const PrimarySpacing.gapMd(),
              LangListTile(locale: locale, lang: 'en', title: 'English'),
              LangListTile(locale: locale, lang: 'cs', title: 'Czech'),
              LangListTile(locale: locale, lang: 'nl', title: 'Dutch'),
              const PrimarySpacing.gapMd(),
              Text(S.of(context).darkMode, style: Theme.of(context).textTheme.headlineMedium),
              const PrimarySpacing.gapMd(),
              const DarkModeListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
