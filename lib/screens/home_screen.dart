import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tini/widgets/carousel_widget.dart';
import 'package:tini/widgets/delivery_choice.dart';
import 'package:tini/widgets/gridview_widget.dart';
import 'package:tini/widgets/reservation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "images/avatar.png",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: "Welcome to",
                              style: GoogleFonts.inter(
                                color: const Color(0xFF27272A),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                              children: [
                                TextSpan(
                                  text: "\nSample Restaurant",
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF27272A),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          height: 20,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.more_horiz_outlined,
                                size: 15,
                              ),
                              const VerticalDivider(),
                              Container(
                                margin: const EdgeInsets.all(1),
                                // height: 22,
                                // width: 22,
                                decoration: const ShapeDecoration(
                                  shape: CircleBorder(
                                    side: BorderSide(style: BorderStyle.solid),
                                  ),
                                ),
                                child:
                                    const Icon(Icons.close_outlined, size: 10),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                FlutterCarousel(
                  options: CarouselOptions(
                    showIndicator: true,
                    height: 150,
                    floatingIndicator: false,
                    slideIndicator: CircularWaveSlideIndicator(
                      currentIndicatorColor: Colors.blue,
                      indicatorBackgroundColor: Colors.black.withOpacity(0.1),
                    ),
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    pageSnapping: true,
                    viewportFraction: 1.0,
                  ),
                  items: [
                    "images/carousel0.png",
                    "images/carousel2.png",
                    "images/carousel3.png"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CarouselWidget(image: i);
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 335,
                  height: 170,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DeliveryChoiceWidget(
                          image: "images/store.png",
                          type: "Store Pickup",
                          description: "Best quality"),
                      VerticalDivider(
                        endIndent: 30,
                        indent: 30,
                      ),
                      DeliveryChoiceWidget(
                          image: "images/delivery.png",
                          type: "Delivery",
                          description: "Always on time")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ReservationWidget(),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Promotion campaign",
                  style: GoogleFonts.inter(
                    color: const Color(0xFF27272A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 0.09,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.count(
                  primary: false,
                  childAspectRatio: 3 / 4,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: const [
                    GridWidget(
                        image: "images/Image.png",
                        discount: 20,
                        startDate: "20/04/20",
                        endDate: "06/09/2020",
                        name: "Excelsa"),
                    GridWidget(
                        image: "images/Image (1).png",
                        discount: 20,
                        startDate: "20/04/20",
                        endDate: "06/09/2020",
                        name: "Liberica"),
                    GridWidget(
                        image: "images/Image (2).png",
                        discount: 20,
                        startDate: "20/04/20",
                        endDate: "06/09/2020",
                        name: "Liberica"),
                    GridWidget(
                        image: "images/Image (3).png",
                        discount: 20,
                        startDate: "20/04/20",
                        endDate: "06/09/2020",
                        name: "Liberica"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
