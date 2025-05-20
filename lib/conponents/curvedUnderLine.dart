import 'package:flutter/material.dart';

class CurvedUnderlineText extends StatelessWidget {
  const CurvedUnderlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Text(
            'wide',
            style: const TextStyle(
              fontSize: 30,
              // fontWeight: FontWeight.bold,
              color:  Color(0xFFFF7029),
              fontFamily: "Comgeometr",
            ),
          ),
          // Custom curve under the text
          Positioned(
            bottom: 0,
            child: CustomPaint(
              size: const Size(50, 20), // Width of the text
              painter: CurvedUnderlinePainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedUnderlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();

    // Triangle-like shape: narrow on edges, wide in the center
    path.moveTo(0, size.height); // left bottom
    path.lineTo(size.width / 2, 0); // peak (center top)
    path.lineTo(size.width, size.height); // right bottom
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}