import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/src/config/export.dart';
import 'package:flutter_graphql_codegen/src/data/models/country_model.dart';
import 'package:flutter_graphql_codegen/src/presentation/pages/question_two_page.dart';
import 'package:flutter_graphql_codegen/src/presentation/widgets/country_tile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class QuestionOnePage extends StatelessWidget {
  const QuestionOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question One Page'),
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
            return const Center(child: CircularProgressIndicator(color: Colors.black,));
          }

          final data = result.data;

          if (data != null) {
            List<dynamic> fetchedCountries = data['fetchCountry'] ?? [];

            final countriesData = fetchedCountries
                .map((country) =>
                    Query$FetchCountry$fetchCountry.fromJson(country))
                .toList();

            return Stack(
              children: [
                ListView.builder(
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Divider(
                                          height: 0,
                                        ),
                                      )
                                    : const SizedBox.shrink()
                              ],
                            )
                          : const SizedBox.shrink();
                    })),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const QuestionTwoPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade400,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: const Text('Goto Question Two'),
                    ),
                  ),
                )
              ],
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
