import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_food/common/bloc/categories/categories_display_state.dart';
import 'package:lotus_food/domain/category/usecases/get_categories.dart';
import 'package:lotus_food/service_locator.dart';

class CategoriesDisplayCubit extends Cubit<CategoriesDisplayState> {

  CategoriesDisplayCubit() : super (CategoriesLoading());

  void displayCategories() async {
    var returnedData = await sl<GetCategoriesUseCase>().call();
    returnedData.fold(
      (error){
        emit(
          LoadCategoriesFailure()
        );
      }, 
      (data) {
        emit(
          CategoriesLoaded(categories: data)
        );
      }
    );
  }

}