import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/textstyle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  List<String> items = [
    'assets/images/offer_banner.png',
    'assets/images/offer_banner.png',
    'assets/images/offer_banner.png',
    'assets/images/offer_banner.png',
    'assets/images/offer_banner.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search Product",
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.favorite_border_outlined),
                  SizedBox(width: 16),
                  Icon(Icons.notifications_outlined)
                ],
              ),
            ),
            const Divider(
              color: borderColor,
              thickness: 0.8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 206,
                width: double.infinity,
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      height: 206,
                      viewportFraction: 1.0,
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: items.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 206,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(i),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 32,
                              right: 24,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Super Flash Sale 50% Off",
                                    style: headerBold24,
                                    maxLines: 2,
                                  ),
                                  const SizedBox(height: 29),
                                  const Row(
                                    children: [
                                      TimerBox(
                                        timer: "08",
                                        displayColon: true,
                                      ),
                                      TimerBox(
                                        timer: "34",
                                        displayColon: true,
                                      ),
                                      TimerBox(
                                          timer: "52", displayColon: false),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            DotsIndicator(
              dotsCount: items.length,
              position: _current.toDouble(),
              decorator: DotsDecorator(
                shape: const Border(),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                size: const Size(10, 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimerBox extends StatelessWidget {
  final String timer;

  final bool displayColon;

  const TimerBox({
    super.key,
    required this.timer,
    required this.displayColon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            timer,
            style: bodyHeading16,
          ),
        ),
        const SizedBox(width: 4),
        if (displayColon)
          Text(
            ":",
            style: bodyHeading16.copyWith(
              color: Colors.white,
            ),
          ),
        const SizedBox(width: 4)
      ],
    );
  }
}
