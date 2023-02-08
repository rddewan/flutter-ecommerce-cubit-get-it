
import 'package:dewan_image_carousel/dewan_image_carousel.dart';
import 'package:flutter/material.dart';


class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [];
    
    return SliverToBoxAdapter(
      child: BCBRImageCarousel(
            images: images,
            boxColor: Colors.white,
            positionTextStyle: const TextStyle(color: Colors.black),
            boxFit: BoxFit.fill,
            autoPlay: true,
            dotColor: Colors.white,
            dotType: DotType.circular,
            isOutOfStock: false,
            showCount: false,
         )
    );
  }
}