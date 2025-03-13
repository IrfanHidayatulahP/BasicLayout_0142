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
        title: const Text("Weather App", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text("Yogyakarta", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Today", style: TextStyle(fontSize: 18, color: Colors.blueGrey)),
              const SizedBox(height: 20),
              const Text("28°C", style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: Colors.blue)),
              const Divider(height: 40, thickness: 1, color: Colors.white),
              const Text("Sunny", style: TextStyle(fontSize: 22, color: Colors.grey)),
              const SizedBox(height: 10),
              const Text("❄ 5 km/h", style: TextStyle(fontSize: 18, color: Colors.blue)),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
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
      ),
    );
  }

  Widget weatherForecastTile(String time) {
    return Column(
      children: [
        Text(time, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text("❄", style: TextStyle(fontSize: 24, color: Colors.blue)),
        SizedBox(height: 8),
        Text("28°C", style: TextStyle(fontSize: 16, color: Colors.blue)),
        SizedBox(height: 8),
        Text("💨 10 km/h", style: TextStyle(fontSize: 14, color: Colors.red)),
        SizedBox(height: 8),
        Text("☂ 0%", style: TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}