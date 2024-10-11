import 'package:flutter/material.dart';
import 'Games.dart';
import 'package:google_fonts/google_fonts.dart';

class GameDetail extends StatelessWidget {
  final Games game;

  const GameDetail({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          game.name ?? '',
          style: GoogleFonts.sixtyfour(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
            shadows: [
              Shadow(
                color: Color(0xff5a0000),
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xff0003b4),
      ),
      backgroundColor: Color(0xffeaeaea),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(game.image ?? ''),
            const SizedBox(height: 16),
            Text(
              game.name ?? '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '\฿${game.price}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Text(
              'รายละเอียด: ${game.gdetail ?? ''}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
