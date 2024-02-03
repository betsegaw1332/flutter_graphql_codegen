import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/src/config/export.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class QuestionTwoPage extends StatelessWidget {
  const QuestionTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question One'),
      ),
      body: Query(
        options: QueryOptions(
            document: documentNodeQueryGetCountryWithCode,
            variables: const {"code": 'UZ'}),
        builder: (QueryResult result, {refetch, fetchMore}) {
          if (result.hasException) {
            return Text('Error: ${result.exception.toString()}');
          }

          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = result.data;

          if (data != null) {
            print("HERE IS THE DATA ## $data");
            final fetchedCountries = data['getCountryWithCode'];

            print("CHECK IF DATA IS NULL ### ${fetchedCountries == null}");
            //  final parsedData = Query$FetchCountry$fetchCountry.fromJson(data['fetchCountry'].first);
            final codeCountry =
                Query$FetchCountry$fetchCountry.fromJson(fetchedCountries);

            print("HERE IS THE DATA YOU QUERYING### ${codeCountry.name}");
          }
          return Text('GraphQL Data:');
        },
      ),
    );
  }
}
