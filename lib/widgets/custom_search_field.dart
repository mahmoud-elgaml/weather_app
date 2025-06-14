import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/manager/provider/weather_provider.dart';

class CustomSearchField extends ConsumerStatefulWidget {
  const CustomSearchField({super.key});

  @override
  ConsumerState<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends ConsumerState<CustomSearchField> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: theme.cardColor.withAlpha(127),            ),
            child: Center(
              child: TextField(
                controller: searchController,
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    ref.read(weatherProvider.notifier).getWeather(cityName: value);
                    searchController.clear();
                  }
                },
                style: theme.textTheme.bodyMedium,
                cursorColor: theme.colorScheme.primary,
                decoration: InputDecoration(
                  hintText: 'Search City',
                  suffixIcon: Icon(Icons.search_outlined, size: 28, color: theme.iconTheme.color),
                  hintStyle: theme.textTheme.bodyMedium?.copyWith(color: theme.hintColor),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
