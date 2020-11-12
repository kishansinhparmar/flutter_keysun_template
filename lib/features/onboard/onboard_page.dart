import 'package:flutter/material.dart';
import 'package:flutter_keysun_template/common/flavor/flavor_config.dart';
import 'package:flutter_keysun_template/widgets/app_scaffold_wrapper.dart';
import 'package:package_info/package_info.dart';

class OnBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffoldWrapper(
      body: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('OnBoard Page ${FlavorConfig.instance.environment}'),
              FutureBuilder(
                future: PackageInfo.fromPlatform(),
                builder: (_,snapshot){
                  if(snapshot.data!=null){
                    return Text((snapshot.data as PackageInfo).packageName);
                  }
                  else{
                    return SizedBox.shrink();
                  }                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
