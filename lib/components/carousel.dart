import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselCustom extends StatefulWidget {
  CarouselCustom({super.key});

  @override
  State<CarouselCustom> createState() => _CarouselCustomState();
}

class _CarouselCustomState extends State<CarouselCustom> {
  final List<Map<String, String>> data = [
    {'title': '1', 'imagePath': 'assets/images/pc3.jpg'},
    {'title': '2', 'imagePath': 'assets/images/pc2.jpg'},
    {'title': '3', 'imagePath': 'assets/images/pc1.jpg'},
  ];

  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            height: 80.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
          items: data.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      i['imagePath']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          carouselController: _controller,
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: _current,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotWidth: 8,
            dotHeight: 7,
            dotColor: Color(0xFF77B05A),
            activeDotColor: Colors.amber,
          ),
        )
      ],
    );
  }
}
