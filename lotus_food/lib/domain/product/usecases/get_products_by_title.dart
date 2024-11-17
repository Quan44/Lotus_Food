
import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/product/repository/product.dart';
import 'package:lotus_food/service_locator.dart';

class GetProductsByTitleUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String? params}) async {
    return await sl<ProductRepository>().getProductsByTitle(params!);
  }

}