import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReservationWidget extends StatelessWidget {
  const ReservationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 8),
      height: 150,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: "Online Reservation",
                  style: GoogleFonts.inter(
                    color: const Color(0xFF27272A),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                  children: [
                    TextSpan(
                      text: "\nTable booking",
                      style: GoogleFonts.inter(
                        color: const Color(0xFF7F7F89),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      side: const BorderSide(color: Color(0xFF1A94FF)),
                    ),
                  ),
                  child: Row(children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      color: Color(0xFF1A94FF),
                    ),
                    Text(
                      "Reserve a Table",
                      style: GoogleFonts.inter(
                        color: const Color(0xFF1A94FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        // VerticalDivider(),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/reservation.png"),
              SizedBox(
                height: 35,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      side: const BorderSide(color: Color(0xFF1A94FF)),
                    ),
                  ),
                  child: Text("My Reservations",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: const Color(0xFF1A94FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      )),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
