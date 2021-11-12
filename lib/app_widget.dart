import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'loja_virtual.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Loja Virtual',
      debugShowCheckedModeBanner: false,
      home: const LojaVirtual(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
    );
  }
}
