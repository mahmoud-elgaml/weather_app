import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/components/loading_indicator.dart';
import 'package:weather_app/manager/provider/weather_provider.dart';
import 'package:weather_app/manager/provider/weather_state.dart';
import 'package:weather_app/pages/error_page.dart';
import 'package:weather_app/widgets/custom_search_field.dart';
import 'package:weather_app/widgets/weather_body.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(weatherProvider.notifier).getWeatherByLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(weatherProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          state is WeatherSuccess ? state.weather.location.country : 'Weather App',
          style: theme.textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const CustomSearchField(),
            const SizedBox(height: 80),
            Expanded(
              child: Builder(
                builder: (_) {
                  if (state is WeatherLoading) {
                    return const Center(child: LoadingIndicator());
                  } else if (state is WeatherSuccess) {
                    return SingleChildScrollView(child: WeatherBody(weather: state.weather));
                  } else if (state is WeatherFailure) {
                    return const ErrorPage();
                  } else {
                    return const ErrorPage();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
