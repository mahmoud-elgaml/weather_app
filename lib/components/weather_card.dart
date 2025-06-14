import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/manager/provider/weather_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/manager/provider/weather_state.dart';

class WeatherCard extends ConsumerWidget {
  final int index;
  const WeatherCard({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(weatherProvider);
    final theme = Theme.of(context);

    if (state is! WeatherSuccess) return Placeholder();

    final day = state.weather.forecast.days[index];
    final parsedDate = DateTime.parse(day.date);
    final dayName = DateFormat('EEEE').format(parsedDate);

    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: theme.cardColor.withAlpha(76),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.onSurface.withAlpha(51)),
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(20), offset: const Offset(2, 4), blurRadius: 6),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(dayName, style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          Image.network(day.icon, width: 80, height: 80),
          const SizedBox(height: 8),
          Text(day.condition, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium),
          const SizedBox(height: 8),
          Text('${day.avgTemp.toStringAsFixed(1)}°C', style: theme.textTheme.titleMedium),
        ],
      ),
    );
  }
}
