import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keysun_template/common/themes/app_colors.dart';

class AppScaffoldWrapper extends StatelessWidget {
  final Color statusColor;
  final WillPopCallback isPopFun;
  final Widget body;

  const AppScaffoldWrapper({
    Key key,
    this.isPopFun,
    this.statusColor = AppColors.status_bar_color,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kIsWeb ? null : this.statusColor,
      child: SafeArea(
        bottom: false,
        child: WillPopScope(
          onWillPop:
              isPopFun == null ? () => Future.value(true) : this.isPopFun,
          child: this.body,
        ),
      ),
    );
  }
}
