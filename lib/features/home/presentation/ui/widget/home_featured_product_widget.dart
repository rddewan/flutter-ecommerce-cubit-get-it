
import 'package:ecommerce_cubit_getit/common/class/break_point.dart';
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/extensions/text_theme.dart';
import 'package:ecommerce_cubit_getit/common/styles/dimens.dart';
import 'package:ecommerce_cubit_getit/common/widget/cache_image.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/ui/widget/featured_product_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class HomeFeaturedProductWidget extends StatelessWidget {
  const HomeFeaturedProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final product = context.watch<HomeController>().state.featuredProducts;

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
                      'Featured Products'.hardcoded,
                      style: context.textTheme.titleSmall,
                    ),
              
                    const SizedBox(height: kSmall,),
              
                    Flexible(
                      child: AlignedGridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: product.length,
                        crossAxisCount: mediaQueryData.size.width >= BreakPoint.desktop
                          ? 4
                          : mediaQueryData.size.width >= BreakPoint.tablet
                          ? 3
                          : 2,
                          crossAxisSpacing: kSmall,
                          mainAxisSpacing: kSmall,
                          itemBuilder: (context, index) {
                            final data = product[index];
                    
                            return GestureDetector(
                              onTap: () {
                                context.go('/product/detail/${data.id}');
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Theme.of(context).colorScheme.outline,
                                  ),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(kSmall)),
                                ),  
                                child: Padding(
                                  padding: const EdgeInsets.all(kSmall),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: CacheImage(
                                          imageUrl: data.images,
                                          height: 150,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: kSmall,
                                      ),
                                      Text(
                                        data.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: Colors.black87,
                                        ),
                                      ),
              
                                      FeaturedProductPriceWidget(
                                        discount: data.formattedDiscount,
                                        discountedPrice: data.formattedDiscountedPrice,
                                        price: data.formattedPrice,
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              ),
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