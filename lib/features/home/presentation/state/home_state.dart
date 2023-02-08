
import 'package:ecommerce_cubit_getit/features/home/domain/model/brand_model.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/category_model.dart';
import 'package:ecommerce_cubit_getit/features/home/domain/model/featured_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([])
    List<String> banners,
    @Default([])
    List<BrandModel> brands,
    @Default([])
    List<CategoryModel> categories,
    @Default([])
    List<FeaturedProductModel> featuredProducts,
  }) = _HomeState;
}