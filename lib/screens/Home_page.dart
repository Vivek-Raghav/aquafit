import 'package:aquafit/screens/graph_screen.dart';
import 'package:aquafit/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    // required this.temperature,
    // required this.pressure,
    // required this.phvalue,
    // required this.conductivity,
    // required this.humidity
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String temperature = " 24";
  String temperature = "24°C";
  String pressure = "1013.25 hPa";
  String phvalue = "5.0";
  String conductivity = "50 W";
  String humidity = "60";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "AquaFit",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black
              // backgroundColor: Color.fromARGB(255, 157, 178, 231),
              ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/unsplash2.jpg",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     shape: BoxShape.rectangle,
                      //     color: Colors.transparent,
                      //     border: Border.all(color: Colors.blueAccent)),
                      padding: const EdgeInsets.all(30),
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        // 800 pixel /6 => 400
                        // mainAxisAlignm ent: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: -1,
                            child: Image.asset(
                              "assets/weather2.png",
                              // color: Colors.black,
                              fit: BoxFit.cover,
                            ),
                          ),
                          DataVal(
                              color: Colors.blue,
                              text: "TEMPERATURE",
                              value: temperature,
                              icon: Icons.thermostat_rounded),
                          DataVal(
                              color: Colors.pink,
                              //16
                              text: "PRESSURE",
                              value: pressure,
                              icon: Icons.air_outlined),
                          DataVal(
                              color: Colors.cyan,
                              text: "PH VALUE",
                              value: phvalue,
                              icon: Icons.water_sharp),
                          DataVal(
                              color: Colors.green,
                              text: "CONDUCTIVITY",
                              value: conductivity,
                              icon: Icons.thunderstorm),
                          DataVal(
                              color: Colors.amber,
                              text: "HUMIDITY",
                              value: humidity,
                              icon: Icons.water_drop),
                        ],
                      )),
                  GraphScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
