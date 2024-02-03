import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/src/config/export.dart';
import 'package:flutter_graphql_codegen/src/data/models/country_model.dart';
import 'package:flutter_graphql_codegen/src/presentation/widgets/country_tile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class QuestionOnePage extends StatelessWidget {
  const QuestionOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question One'),
      ),
      body: Query(
        options: QueryOptions(
          document: documentNodeQueryFetchCountry,
        ),
        builder: (QueryResult result, {refetch, fetchMore}) {
          if (result.hasException) {
            return Text('Error: ${result.exception.toString()}');
          }

          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = result.data;

          if (data != null) {
            List<dynamic> fetchedCountries = data['fetchCountry'] ?? [];

            final countriesData = fetchedCountries
                .map((country) =>
                    Query$FetchCountry$fetchCountry.fromJson(country))
                .toList();

            return ListView.builder(
                itemCount: countriesData.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  final country = countriesData[index];
                  return country.name != null
                      ? Column(
                          children: [
                            CountryTile(
                                country: CountryModel(
                                    name: country.name!,
                                    capital: country.capital)),
                            index != countriesData.length - 1
                                ? const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Divider(
                                      height: 0,
                                    ),
                                  )
                                : const SizedBox.shrink()
                          ],
                        )
                      : const SizedBox.shrink();
                }));
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
