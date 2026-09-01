import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bantuan_controller.dart';

class BantuanView extends GetView<BantuanController> {
  const BantuanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BantuanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BantuanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
