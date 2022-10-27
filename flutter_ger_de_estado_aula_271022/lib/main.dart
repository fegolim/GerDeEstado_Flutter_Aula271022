import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class AppController extends GetxController {
  var counter = 0, obs;
  void add() => counter.value++;
  void subtract() => counter.value--;
}

class Home extends StatelessWidget {
  final AppController controller = Get.put(AppController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The counter value is: ', style: TextStyle(fontSize:25.0)),
            Obx(()=> Text(
              '${controller.counter.value}',
              style: TextStyle(
                fontSize: 40.0,
                ),
            ))
          ]),)
    )
  }
}
