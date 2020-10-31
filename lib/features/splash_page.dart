import 'package:flutter/material.dart';
import 'package:flutter_keysun_template/widgets/app_scaffold_wrapper.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      body: Scaffold(
        body: Center(
          child: Icon(
            Icons.add_call,
            size: 72,
          ),
        ),
      ),
    );
  }
}
