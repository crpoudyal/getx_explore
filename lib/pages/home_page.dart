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
                  Get.defaultDialog(
                      title: "Profile Page",
                      content: const Text(""),
                      actions: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            Get.off(() => const ProfilePage());
                          },
                          icon: const Icon(
                            Icons.done,
                          ),
                          label: const Text("Go"),
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.cancel),
                          label: const Text("Cancel"),
                        )
                      ]);
                },
                child: const Text("Dialog box"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Getx Explore", "SnackBAR message",
                        margin: const EdgeInsets.all(12),
                        snackPosition: SnackPosition.BOTTOM,
                        icon: const Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        ),
                        colorText: Colors.white,
                        backgroundColor: Colors.blue);
                  },
                  child: const Text("Snack Bar"))
            ],
          ),
        ),
      ),
    );
  }
}
