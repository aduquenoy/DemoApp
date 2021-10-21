import 'package:flutter/material.dart';
import 'package:weatherplay/state/cubit/googleplace/googleplace_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherplay/config/theme/app_textstyle.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class PlaceSearch extends SearchDelegate<String> {
  
  final String hintText;
  PlaceSearch({required this.hintText});

  @override
  String get searchFieldLabel => hintText;

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, "");
            } else {
              query = "";
            }
          },
        ),
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, ""),
        icon: const Icon(Icons.arrow_back),
      );

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {

    if (query.isNotEmpty) {
      context.read<GoogleplaceCubit>().searchPlaces(query, Localizations.localeOf(context).languageCode);
      final state = context.select((GoogleplaceCubit places) => places.state);

      if (state is GoogleplaceLoading) {
        return ListView(
          children: [
            ListTile(
              leading: Icon(Icons.query_builder_rounded, color: Theme.of(context).accentColor),
              title: Text(AppLocalizations.of(context)!.loading),
            ),
          ],
        );
      } else if (state is GoogleplaceLoaded) {

        final suggestions = state.places;

        return ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final suggestion = suggestions[index].description;
            final queryText = suggestion.substring(0, query.length);
            final remainingText = suggestion.substring(query.length);

            return ListTile(
              onTap: () {
                query = suggestion;
                close(context, suggestion);
                //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ResultPage()));
                //showResults(context);
              },
              leading: Icon(Icons.place_outlined, color: Theme.of(context).accentColor),
              title: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: queryText,
                  style: GlobalTextStyles.searchbarBold,
                  children: [
                    TextSpan(
                      text: remainingText,
                      style: GlobalTextStyles.searchbarRegular,
                    )
                  ],
                ),
              ),
            );
          },
        );
      } else if (state is GoogleplaceError) {
        return ListView(
          children: [
            ListTile(
              leading: Icon(Icons.error_outline_rounded, color: Theme.of(context).accentColor),
              title: Text(state.error, style: GlobalTextStyles.error),
            ),
          ],
        );
      } else {
        return Container();
      }
    } else {
      return Container();
    }
  }
}