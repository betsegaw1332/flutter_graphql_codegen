import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/src/config/export.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

GetIt serviceLocator = GetIt.instance;

Future<void> serviceLocatorInit() async {
  final graphQlClient = GraphQLConfiguration().initializeClient();
  serviceLocator.registerSingleton<ValueNotifier<GraphQLClient>>(graphQlClient);
}
