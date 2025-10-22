import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({
    super.key,
    required this.text,
    this.color,
    this.style,
    this.side,
    this.onPressed,
  });
  final String text;
  final Color? color;
  final TextStyle? style;
  final BorderSide? side;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: side ?? BorderSide.none,
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
          backgroundColor: color ?? Color(0xff3498DB),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:
              style ??
              GoogleFonts.arimo(
                fontSize: 15,
                color: Color(0xffffffff),
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
