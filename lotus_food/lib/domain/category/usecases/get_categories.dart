import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/category/repository/category.dart';
import 'package:lotus_food/service_locator.dart';

class GetCategoriesUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return await sl<CategoryRepository>().getCategories();
  }

}