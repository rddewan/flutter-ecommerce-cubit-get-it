
import 'package:dewan_image_carousel/core/const.dart';
import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/extensions/text_theme.dart';
import 'package:ecommerce_cubit_getit/common/widget/cache_image.dart';
import 'package:flutter/material.dart';


class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = [];
    
    return SliverToBoxAdapter(
      child: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: kSmall,),
          
                Text(
                  'Category'.hardcoded,
                  style: context.textTheme.titleSmall,
                ),
          
                const SizedBox(height: kSmall,),
          
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                  ), 
                  itemBuilder: (context, index) {
                    final category = data[index];
                
                      return Stack(
                        alignment: Alignment.center,   
                        children: [
          
                          Card(
                            child: CacheImage(
                              imageUrl: category.thumbnail,
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
                                category.name,
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
                )
          
              ],
            ),
          )
    );
   
  }
}