import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text("Yogyakarta", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Today", style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 20),
            const Text("28°C", style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: Colors.blue)),
            const Divider(height: 40, thickness: 1),
            const Text("Sunny", style: TextStyle(fontSize: 22, color: Colors.grey)),
            const SizedBox(height: 10),
            const Text("❄ 5 km/h", style: TextStyle(fontSize: 18, color: Colors.blue)),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text("Next 7 days", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      weatherForecastTile("Now"),
                      weatherForecastTile("17.00"),
                      weatherForecastTile("20.00"),
                      weatherForecastTile("23.00"),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            const Text("Developed by: ipancuki.id", style: TextStyle(fontSize: 14, color: Colors.black)),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget weatherForecastTile(String time) {
    return Column(
      children: [
        Text(time, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text("❄", style: TextStyle(fontSize: 24, color: Colors.blue)),
        SizedBox(height: 5),
        Text("28°C", style: TextStyle(fontSize: 16, color: Colors.blue)),
        SizedBox(height: 5),
        Text("💨 10 km/h", style: TextStyle(fontSize: 14, color: Colors.red)),
        SizedBox(height: 5),
        Text("☂ 0%", style: TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}