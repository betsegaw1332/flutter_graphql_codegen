import 'package:flutter/material.dart';

class CountryWithCodeTile extends StatelessWidget {
  final String countryName;
  const CountryWithCodeTile({super.key, required this.countryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade400, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        countryName,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      )),
    );
  }
}
