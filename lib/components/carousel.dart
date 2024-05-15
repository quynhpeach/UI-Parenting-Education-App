import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class CarouselCustom extends StatelessWidget {
  List<BannerModel> listBanners = [
    BannerModel(id: "1", imagePath: 'assets/images/podcast.png'),
    BannerModel(id: "2", imagePath: 'assets/images/podcast.png'),
    // BannerModel( id: "3", imagePath: ''),
    // BannerModel( id: "4", imagePath: ''),
  ];
  CarouselCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
      banners: listBanners,
      customizedIndicators: const IndicatorModel.animation(
          width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
      height: 120,
      activeColor: Colors.amberAccent,
      disableColor: Colors.white,
      animation: true,
      borderRadius: 10,
      width: 250,
      indicatorBottom: false,
    );
  }
}
