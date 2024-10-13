import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart'; // Import ConvexAppBar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This Widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    ); // MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: const TabBarView(
          children: [
            HomePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Colors.amber,
          color: Colors.white,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.people, title: 'Profile'), // Corrected icon from .people to Icons.people
          ],
          // initialActiveIndex: 0 // optional, default as 0
          onTap: (int i) => print('index page $i'),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/pic.jpeg"),
            radius: 50.0,
          ),
          Text(
            'Muhamad Bintang Saputra',
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
          const Text(
            'Coding & Learn a new Thing!',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            color: Colors.white,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Icon(
                    Icons.phone_android,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  '088211296424',
                  style: TextStyle(color: Colors.teal, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            color: Colors.white,
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 10.0), // Corrected typo 'left' to 'left:'
                  child: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                ),
                Text(
                  '41823010129@umb.ac.id',
                  style: TextStyle(color: Colors.teal, fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget { // Corrected class declaration
  const HomePage({Key? key}) : super(key: key); // Fixed constructor and added 'const'

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage("images/Logo_UMB.png"), // Corrected the property 'Image' to 'image'
      ),
    );
  }
}
