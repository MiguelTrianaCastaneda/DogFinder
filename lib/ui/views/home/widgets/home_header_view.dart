import 'package:dogfinder_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Let's start the adoption",
            style: AppTheme.kStyleTittleHome(),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Find your lovely dog.",
            style: AppTheme.kStyleSubTittleHome(),
          ),
        )
      ],
    );
  }
}
