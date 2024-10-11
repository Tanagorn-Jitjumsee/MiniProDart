import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Projec',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Game Store',
          style: GoogleFonts.getFont(
            'Sixtyfour', // Replace with the actual Google Font name
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
            shadows: [
              const Shadow(
                color: Color(0xff5a0000),
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff0003b4),
      ),
      backgroundColor: Color(0xff040130),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0), // เพิ่ม padding
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the Shop1 page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Store()),
              );
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 80),
                textStyle: TextStyle(fontSize: 30),
                foregroundColor: Colors.white,
                backgroundColor: Colors.green),
            child: Text('ไปที่ร้าน'),
          ),
        ),
      ),
    );
  }
}
