import 'package:custom_theme/controller/app_configu_controller.dart';
import 'package:custom_theme/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherScreen extends StatelessWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  launchUrl(Uri.parse(
                      "https://github.com/thecodexhub/flutter-interview-questions/blob/main/README.md"));
                },
                child: Text(
                  "github interview",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w900),
                )),
            Switch(
              value: context.watch<AppConfiguController>().isDark,
              onChanged: (value) {
                context.read<AppConfiguController>().onToggleTheme(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
