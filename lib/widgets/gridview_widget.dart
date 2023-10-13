import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridWidget extends StatelessWidget {
  const GridWidget(
      {super.key,
      required this.image,
      required this.discount,
      required this.startDate,
      required this.endDate,
      required this.name});
  final String image;
  final String name;
  final int discount;
  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 155,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill)),
            ),
            RichText(
                text: TextSpan(
                    text: "Discount all $name",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF27272A),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                    children: [
                  TextSpan(
                    text: "\n$discount% in all stores",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF27272A),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: "\n$startDate - $endDate",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF7F7F89),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ]))
          ]),
    );
  }
}
