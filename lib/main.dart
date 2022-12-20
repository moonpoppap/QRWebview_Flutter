
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_qrcode_module/main.dart';


void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  MyAppp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TesCallModule(),
    );
  }
}

class TesCallModule extends StatefulWidget {
  TesCallModule({Key? key}) : super(key: key);

  @override
  State<TesCallModule> createState() => _TesCallModuleState();
}

class _TesCallModuleState extends State<TesCallModule> {
  // static const platform = MethodChannel('samples.flutter.dev/battery');

  void _pushPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (_) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ElevatedButton(
          child: Text('go to qrcode module'),
          onPressed: () {
            _pushPage(context);
          },
        ),
      ),
    );
  }
}
