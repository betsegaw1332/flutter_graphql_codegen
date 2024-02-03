import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/src/config/export.dart';
import 'package:flutter_graphql_codegen/src/presentation/widgets/country_with_code_tile.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class QuestionTwoPage extends StatelessWidget {
  const QuestionTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Two Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Query(
                  options: QueryOptions(
                      document: documentNodeQueryGetCountryWithCode,
                      variables: const {"code": 'UZ'}),
                  builder: (QueryResult result, {refetch, fetchMore}) {
                    if (result.hasException) {
                      return Text('Error: ${result.exception.toString()}');
                    }

                    if (result.isLoading) {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: Colors.black,
                      ));
                    }

                    final data = result.data;

                    if (data != null) {
                      final fetchedCountries = data['getCountryWithCode'];

                      final codeCountry =
                          Query$FetchCountry$fetchCountry.fromJson(
                              fetchedCountries);

                      return codeCountry.name != null
                          ? CountryWithCodeTile(
                              countryName: codeCountry.name!,
                            )
                          : const SizedBox.shrink();
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Query(
                  options: QueryOptions(
                      document: documentNodeQueryGetCountryWithCode,
                      variables: const {"code": 'TN'}),
                  builder: (QueryResult result, {refetch, fetchMore}) {
                    if (result.hasException) {
                      return Text('Error: ${result.exception.toString()}');
                    }

                    if (result.isLoading) {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: Colors.black,
                      ));
                    }

                    final data = result.data;

                    if (data != null) {
                      final fetchedCountries = data['getCountryWithCode'];

                      final codeCountry =
                          Query$FetchCountry$fetchCountry.fromJson(
                              fetchedCountries);

                      return codeCountry.name != null
                          ? CountryWithCodeTile(
                              countryName: codeCountry.name!,
                            )
                          : const SizedBox.shrink();
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
