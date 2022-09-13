import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_explore/pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(HomePage());
                  },
                  child: const Text("Home"))
            ],
          ),
        ),
      ),
    );
  }
}
