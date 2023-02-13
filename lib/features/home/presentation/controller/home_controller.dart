
import 'package:ecommerce_cubit_getit/core/exception/failure.dart';
import 'package:ecommerce_cubit_getit/features/home/application/ihome_service.dart';
import 'package:ecommerce_cubit_getit/features/home/presentation/state/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeController extends Cubit<HomeState> {
  final IHomeService _homeService;

  HomeController(this._homeService) : super(const HomeState());

  void init() {

    Future.wait([      
      _getBrands(),
      _getCategories(),
      _getFeaturedProduct(),
      _getHomeBanner(),
    ]);
    
  }

  Future<void> _getHomeBanner() async {

    try {

      final result = await _homeService.getHomeBanner();
      emit(state.copyWith(banners: result,));
      
    } on Failure catch (e) {
      emit(
        state.copyWith(
          errorMsg: e.message,
        ),
      );
    }
 
  }

  Future<void> _getBrands() async {
    
    try {
      
      final result = await _homeService.getBrands();
      emit(state.copyWith(brands: result,));

    } on Failure catch (e) {
      emit(
        state.copyWith(
          errorMsg: e.message,
        ),
      );
    }
    

  }

  Future<void> _getCategories() async {

    try {

      final result = await _homeService.getCategories();
      emit(state.copyWith(categories: result));
      
    } on Failure catch (e) {
      emit(
        state.copyWith(
          errorMsg: e.message,
        ),
      );
    }
    

  }

  Future<void> _getFeaturedProduct() async {

    try {

      final result = await _homeService.getFeaturedProduct();
      emit(state.copyWith(featuredProducts: result));
      
    } on Failure catch (e) {
      emit(
        state.copyWith(
          errorMsg: e.message,
        ),
      );
    }

  }
}