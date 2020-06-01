import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:uparty/entities/device_info.dart';
import 'package:uparty/framework/application.dart';
import 'package:uparty/framework/utils.dart';
import 'package:uparty/stores/app_store.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashPage> {
  AppStore _appStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _appStore = Provider.of<AppStore>(context);
    autoLogin();
  }

  @override
  void initState() {
    super.initState();
  }

  autoLogin() async {
    TotalDeviceInfo deviceInfo = await getDeviceInfo();
    await _appStore.quickLogin(deviceInfo.deviceId , context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Text(
                  'splash page',
                  style: TextStyle(
                      fontSize: 40, decoration: null, color: Colors.blue),
                )),
              ]),
        ),
      ),
    );
  }
}
