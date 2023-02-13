
import 'package:dewan_image_carousel/dewan_image_carousel.dart';
import 'package:ecommerce_cubit_getit/common/class/break_point.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/state/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SliverToBoxAdapter(
        child: Center(
        child: SizedBox(
          width: BreakPoint.tablet,
          child: BCBLImageCarousel(
            images: context.watch<HomeController>().state.banners,
            boxColor: Colors.white,
            positionTextStyle: const TextStyle(
              color: Colors.black,
            ),
            boxFit: BoxFit.fill,
            autoPlay: false,
            dotColor: Colors.white,
            dotType: DotType.circular,
            isOutOfStock: false,
            showCount: false,
          ),
        ),
      ),
    );
  }
}
