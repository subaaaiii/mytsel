import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytsel/app/modules/bantuan/views/bantuan_view.dart';
import 'package:mytsel/app/modules/home/views/home_view.dart';
import 'package:mytsel/app/modules/inbox/views/inbox_view.dart';
import 'package:mytsel/app/modules/navigation/controllers/navigation_controller.dart';
import 'package:mytsel/app/modules/profile/views/profile_view.dart';
import 'package:mytsel/app/modules/riwayat/views/riwayat_view.dart';

class NavigationView extends StatelessWidget {
  NavigationView({super.key});

  // 1. Inisialisasi Controller
  final NavigationController controller = Get.put(NavigationController());

  // 2. Daftar halaman (tetap dipisah di file masing-masing)
  final List<Widget> _pages = [
    const HomeView(),
    const ProfileView(),
    const InboxView(),
    const RiwayatView(),
    const BantuanView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3. Gunakan Obx untuk merender ulang body jika currentIndex berubah
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: _pages,
        ),
      ),

      // 4. Gunakan Obx juga di BottomNavigationBar
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (index) => controller.changeTab(index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Riwayat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Bantuan"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Inbox"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
        ),
      ),
    );
  }
}
