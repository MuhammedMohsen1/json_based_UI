import 'package:flutter/material.dart';
import 'package:testapp/core/routing/routes.dart';
import 'package:testapp/core/utils/app_extensions.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Center(
          child: CustomButton(
            onPressed: () {
              context.push(Routes.form);
            },
            title: 'احجز في مكتب التوثيق',
          ),
        ),
      ),
    );
  }
}
