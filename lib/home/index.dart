import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.92,
            margin: EdgeInsets.fromLTRB(12, 20, 12, 0),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                Text(
                  "Welcome Back, Farmer! ☀️",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Monitor and control your seedling growth chamber",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                statCard(
                  imagePath: "assets/images/home/temp.png",
                  title: "Temperature",
                  value: "36°C",
                ),
                statCard(
                  imagePath: "assets/images/home/water.png",
                  title: "Humidity",
                  value: "76 %",
                ),
                statCard(
                  imagePath: "assets/images/home/bulb.png",
                  title: "Light",
                  value: "777 Lux",
                ),
                statCard(
                  imagePath: "assets/images/home/grass.png",
                  title: "Growth Day",
                  value: "Day 1",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 14, vertical: 14),
            child: Row(
              spacing: 12,
              children: [environmentMonitoring(), controls()],
            ),
          ),
          activeCrop(context: context),
        ],
      ),
    );
  }
}

Widget statCard({
  required String imagePath,
  required String title,
  required String value,
}) {
  return Expanded(
    child: Container(
      height: 104,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 28),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}

Widget environmentMonitoring() {
  return Expanded(
    child: Container(
      height: 306,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          SizedBox(height: 10),
          Text(
            "Environmental Monitoring",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Image.asset(
                        "assets/images/home/co2.png",
                        fit: BoxFit.contain,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "CO2 Level",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        "442",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "ppm",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Image.asset(
                        "assets/images/home/moisture.png",
                        fit: BoxFit.contain,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Soil Moisture",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "%",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 80),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Image.asset(
                        "assets/images/home/ph.png",
                        fit: BoxFit.contain,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Soil pH",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        "8.3",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "ph",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 30),
                      Image.asset(
                        "assets/images/home/water.png",
                        fit: BoxFit.contain,
                        width: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Water Level",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        "23",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "%",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget controls() {
  return Container(
    height: 306,

    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black, width: 1),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      children: [
        SizedBox(height: 10),
        Text(
          "Controls",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 32),
        Container(
          padding: EdgeInsetsGeometry.fromLTRB(10, 0, 4, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Climate",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Control",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Transform.scale(
                scale: 0.5,
                child: Switch(
                  value: true,
                  onChanged: (value) => false,
                  activeTrackColor: Colors.green.shade500,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsetsGeometry.fromLTRB(10, 0, 4, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Irrigation",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Transform.scale(
                scale: 0.5,
                child: Switch(
                  value: true,
                  onChanged: (value) => false,
                  activeTrackColor: Colors.green.shade500,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsetsGeometry.fromLTRB(10, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "LED Lights",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Transform.scale(
                scale: 0.5,
                child: Switch(
                  value: true,
                  onChanged: (value) => false,
                  activeTrackColor: Colors.green.shade500,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsetsGeometry.fromLTRB(10, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bio-Electric",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Transform.scale(
                scale: 0.5,
                child: Switch(
                  value: true,
                  onChanged: (value) => false,
                  activeTrackColor: Colors.green.shade500,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget activeCrop({required BuildContext context}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.92,
    margin: EdgeInsets.fromLTRB(12, 20, 12, 80),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    height: 220,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black, width: 1),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
            Text(
              "Active Crop : Pechay Seedlings",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
            ),
          ],
        ),
        SizedBox(height: 4),
        Image.asset("assets/images/home/pechay.png"),
        SizedBox(height: 4),
        Text(
          "Bio-Electric Mode Active ",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 16),
        Text(
          "Seedling process shock (6 to 7 days traditional cultivating time)",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
