


import 'package:ecommerce_cubit_getit/features/dashboard/presentation/state/dashboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardController extends Cubit<DashboardState> {
  DashboardController() : super(const DashboardState());

  void setPageIndex(int value) {
    emit(state.copyWith(pageIndex: value));    
  }
  
}