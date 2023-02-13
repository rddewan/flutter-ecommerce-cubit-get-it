
import 'package:ecommerce_cubit_getit/common/class/break_point.dart';
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/extensions/text_theme.dart';
import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
import 'package:ecommerce_cubit_getit/common/widget/cache_image.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeBrandWidget extends StatelessWidget {
  const HomeBrandWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = context.watch<HomeController>().state.brands;
    
    return SliverToBoxAdapter(
      child: Center(
        child: SizedBox(
          width: BreakPoint.tablet,
          child: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: kSmall,),
          
                Text(
                  'Brand'.hardcoded,
                  style: context.textTheme.titleSmall,
                ),
          
                const SizedBox(height: kSmall,),
          
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal, 
                    physics: const ClampingScrollPhysics(),                    
                    itemBuilder: (context, index) {
                      final brands = data[index];
                  
                        return Stack(
                          alignment: Alignment.center,   
                          children: [
                          
                            Card(
                              child: CacheImage(
                                imageUrl: brands.thumbnail,
                              ),
                            ),
                          
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(kSmall),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: kXSmall),
                                child: Text(
                                  brands.name,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: Colors.white,
                                    fontSize: kSmall,
                                  ),
                                ),
                              ),
                            )
                          ],
                      );
                    },
                  ),
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}