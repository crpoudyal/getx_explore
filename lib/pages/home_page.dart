import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_explore/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(ProfilePage());
                  },
                  child: const Text("Profile"))
            ],
          ),
        ),
      ),
    );
  }
}
