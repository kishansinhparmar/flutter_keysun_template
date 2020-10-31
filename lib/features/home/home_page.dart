import 'package:flutter/material.dart';
import 'package:flutter_keysun_template/common/flavor/flavor_config.dart';
import 'package:flutter_keysun_template/widgets/app_scaffold_wrapper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      body: Scaffold(
        body: Center(
          child: Text('Home Page ${FlavorConfig.instance.environment}'),
        ),
      ),
    );
  }
}
