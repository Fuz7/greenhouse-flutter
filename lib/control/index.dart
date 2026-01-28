import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),

          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
            child: Text(
              "Controls",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width * 0.92,
            margin: EdgeInsets.fromLTRB(16, 20, 16, 0),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Control Mode",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                ManualAutomaticToggle(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ManualAutomaticToggle extends StatefulWidget {
  const ManualAutomaticToggle({super.key});

  @override
  State<ManualAutomaticToggle> createState() => _ManualAutomaticToggleState();
}

class _ManualAutomaticToggleState extends State<ManualAutomaticToggle> {
  List<bool> isSelected = [true, false]; // mutable state

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ToggleButtons(
            isSelected: isSelected,
            onPressed: (index) {
              setState(() {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = i == index;
                }
              });
            },
            borderRadius: BorderRadius.circular(8),
            borderWidth: 2,
            borderColor: Colors.grey,
            selectedBorderColor: Colors.green,
            selectedColor: Colors.white,
            fillColor: Colors.green,
            color: Colors.black,
            constraints: BoxConstraints.expand(
              width:
                  (MediaQuery.of(context).size.width - 80) /
                  2, // 2 buttons, subtracting some margin
              height: 40,
            ),
            children: const [Text("Automatic"), Text("Manual")],
          ),
        ),
        SizedBox(height: 40),
        Text(
          "Climate Control",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home/temp.png", height: 24),
                    Text(
                      "Temperature",
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.5,
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) => false,
                        activeTrackColor: Colors.green.shade500,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(0, 0, 12, 0),
                  child: Text(
                    "Target: 28°c",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home/humidity.png", height: 24),
                    Text(
                      "Humidity",
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.5,
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) => false,
                        activeTrackColor: Colors.green.shade500,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsetsGeometry.fromLTRB(0, 0, 12, 0),
                  child: Text(
                    "Target: 22%",
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 40),
        Text(
          "Lighting & Irrigation",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home/bulb.png", height: 24),
                    Text(
                      "LED Lights",
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.5,
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) => false,
                        activeTrackColor: Colors.green.shade500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home/water.png", height: 24),
                    Text(
                      "Irrigation",
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.5,
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) => false,
                        activeTrackColor: Colors.green.shade500,
                      ),
                    ),
                  ],
                ),

                Container(
                  padding: EdgeInsetsGeometry.fromLTRB(6, 2, 6, 2),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(63, 197, 66, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Water Now",
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 40),
        Text(
          "Bio-Electric Simulation",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home/voltage.png", height: 24),
                    Text(
                      "Voltage",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      ": 5v",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/home/time.png", height: 24),
                    Text(
                      "Duration",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    SizedBox(width: 8),
                    TimeDropdown(),
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TimeDropdown extends StatefulWidget {
  const TimeDropdown({super.key});

  @override
  State<TimeDropdown> createState() => _TimeDropdownState();
}

class _TimeDropdownState extends State<TimeDropdown> {
  String selectedValue = "10 min";

  final List<String> times = ["10 min", "20 min", "30 min", "40 min", "50 min"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      style: TextStyle(fontSize: 12, color: Colors.black),
      items: times.map((time) {
        return DropdownMenuItem<String>(value: time, child: Text(time));
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedValue = value!;
        });
      },
    );
  }
}
