import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 32),
            Container(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/hero/loginHero.png",
                width: 150,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 46),
            Text(
              "Silahkan masuk dengan nomor telkomsel kamu",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Text(
              "Nomor HP",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.phone,
              controller: controller.phoneC,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(
                      0xFFEC2028,
                    ), // Warna saat aktif (contoh: Merah)
                    width: 1.5, // Biasanya dibuat lebih tebal saat aktif
                  ),
                ),
                hint: Text(
                  "Cth. 08129011xxxx",
                  style: TextStyle(color: Color(0xffA4B0BE)),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Color(0xFFEC2028),
                    value: controller.checkC.value,
                    onChanged: (value) => controller.checkC.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      children: [
                        TextSpan(text: "Saya menyetujui "),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("click syarat");
                            },
                          text: "syarat",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ", "),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("click ketentuan");
                            },
                          text: "ketentuan ",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ", dan "),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("click privasi");
                            },
                          text: "privasi ",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "Telkomsel"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFEC2028),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: Text("LANJUT", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 16),
            Center(child: Text("Atau masuk menggunakan")),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(157, 42),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(
                        color: Color(0xff3B5998),
                        // width: 2.0,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset("assets/icons/facebook.png"),
                      Text("Facebook"),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(157, 42),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(
                        color: Color(0xff1DA1F2),
                        // width: 2.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/twitter.png"),
                      Text("Twitter"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
