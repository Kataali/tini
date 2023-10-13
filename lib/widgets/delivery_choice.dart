import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryChoiceWidget extends StatelessWidget {
  const DeliveryChoiceWidget(
      {super.key,
      required this.image,
      required this.type,
      required this.description});
  final String image;
  final String type;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          Text(
            type,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Color(0xFF27272A),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 0.09,
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              color: Color(0xFF7F7F89),
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          )
        ],
      ),
    );
  }
}
