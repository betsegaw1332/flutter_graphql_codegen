import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/service_locator.dart';
import 'package:flutter_graphql_codegen/src/presentation/pages/question_one_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await serviceLocatorInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: serviceLocator<ValueNotifier<GraphQLClient>>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const QuestionOnePage(),
      ),
    );
  }
}
