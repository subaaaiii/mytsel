import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> listPaket = [
      {"icon": "assets/icons/internet.png", "name": "Internet"},
      {"icon": "assets/icons/telpon.png", "name": "Telpon"},
      {"icon": "assets/icons/sms.png", "name": "SMS"},
      {"icon": "assets/icons/roaming.png", "name": "Roaming"},
      {"icon": "assets/icons/hiburan.png", "name": "Hiburan"},
      {"icon": "assets/icons/unggulan.png", "name": "Unggulan"},
      {"icon": "assets/icons/tersimpan.png", "name": "Tersimpan"},
      {"icon": "assets/icons/riwayat.png", "name": "Riwayat"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: "Hi, ",
            style: TextStyle(fontSize: 20),
            children: [
              TextSpan(
                text: "Subairi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 18,
              width: 18,
              child: Image.asset("assets/icons/qr.png", fit: BoxFit.contain),
            ),
          ),
        ],
        backgroundColor: Color(0xFFEC2028),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 220,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            // color: Colors.amber,
            // width: double.infinity,
            // height: 500,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        // padding: EdgeInsets.all(20),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        // height: 250,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFE52D27), Color(0xFFB31217)],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "081290112333",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        width: 84,
                                        height: 15,
                                        child: Image.asset(
                                          "assets/icons/simpati.png",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 21),
                                  Text(
                                    "Sisa Pulsa Anda",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rp34.000",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xffF7B731),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          "Isi Pulsa",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // SizedBox(height: 12,),
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                              thickness: 0.27,
                              color: Colors.black38,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Berlaku sampai ",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "19 April 2020",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Text(
                                        "Telkomsel POIN",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Color(0xffF7B731),
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                        ),
                                        child: Text(
                                          "172",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        spacing: 12,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InfoCard(
                              title: "Internet",
                              value: "12.19 ",
                              currency: "GB",
                            ),
                          ),
                          Expanded(
                            child: InfoCard(
                              title: "Telpon",
                              value: "0 ",
                              currency: "Min",
                            ),
                          ),
                          Expanded(
                            child: InfoCard(
                              title: "SMS",
                              value: "23 ",
                              currency: "SMS",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(color: Color(0xffF1F2F6), height: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      // width: double.infinity,
                      alignment: Alignment.topLeft,
                      // color: Colors.amberAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Kategori Paket",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              int itemsPerRow = 4;
                              double spacing = 12.0;

                              double totalSpacing = spacing * (itemsPerRow - 1);

                              double itemWidth =
                                  (constraints.maxWidth - totalSpacing) /
                                  itemsPerRow;

                              return SizedBox(
                                width: double.infinity,
                                child: Wrap(
                                  spacing: spacing,
                                  runSpacing: 12,
                                  alignment: WrapAlignment.start,
                                  children: [
                                    for (var paket in listPaket)
                                      SizedBox(
                                        width: itemWidth,
                                        child: PaketWidget(
                                          icon: paket["icon"]!,
                                          name: paket["name"]!,
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(child: Text("ANU")),
    );
  }
}

class PaketWidget extends StatelessWidget {
  const PaketWidget({super.key, required this.icon, required this.name});

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      // color: Colors.redAccent,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF7B731).withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(icon, fit: BoxFit.contain),
          ),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.value,
    required this.currency,
  }) : super(key: key);

  final String title;
  final String value;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            SizedBox(height: 4),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: value,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFFB31217),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: currency,
                    style: TextStyle(fontSize: 14, color: Color(0xff747D8C)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
