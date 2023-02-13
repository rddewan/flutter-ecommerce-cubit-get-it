

import 'package:ecommerce_cubit_getit/common/extensions/string_hardcoded.dart';
import 'package:ecommerce_cubit_getit/common/widget/app_scaffold_sliver.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/controller/home_controller.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/ui/widget/home_banner_widget.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/ui/widget/home_brand_widget.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/ui/widget/home_category_widget.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/ui/widget/home_featured_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    context.read<HomeController>().init();
  }
  
  @override
  Widget build(BuildContext context) {
    return AppScaffoldSliver(
      title: Text('Home'.hardcoded), 
      slivers: const [
        HomeBannerWidget(),
        HomeCategoryWidget(),
        HomeBrandWidget(),
        HomeFeaturedProductWidget()
      ],
    );
  }
}