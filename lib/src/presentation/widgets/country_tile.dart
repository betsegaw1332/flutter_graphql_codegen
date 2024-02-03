import 'package:flutter/material.dart';
import 'package:flutter_graphql_codegen/src/data/models/country_model.dart';

class CountryTile extends StatelessWidget {
  const CountryTile({super.key, required this.country});

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(country.name,style: const TextStyle(fontWeight: FontWeight.w500),),
      subtitle: country.capital != null
          ? Text(country.capital!,style: const TextStyle(color: Colors.grey),)
          : const SizedBox.shrink(),
    );
  }
}
