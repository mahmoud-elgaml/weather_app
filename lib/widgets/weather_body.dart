import 'package:flutter/material.dart';
import 'package:weather_app/components/weather_card.dart';
import 'package:weather_app/services/model/weather_model.dart';

class WeatherBody extends StatelessWidget {
  final WeatherModel weather;
  const WeatherBody({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.location_pin, size: 32, color: theme.iconTheme.color),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      weather.location.country,
                      style: theme.textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      weather.location.name,
                      style: theme.textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      weather.current.status,
                      style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${weather.current.tempC} °C',
                      style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Image.network(
                weather.current.iconUrl,
                width: 60,
                height: 60,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported_outlined, size: 60),
              ),
            ],
          ),

          const SizedBox(height: 50),

          // Forecast Cards
          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, index) => WeatherCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
