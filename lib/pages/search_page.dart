import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_search_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return CustomSearchField();
  }
}

