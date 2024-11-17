import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/product/repository/product.dart';
import 'package:lotus_food/service_locator.dart';

class GetNewInUseCase implements UseCase<Either,dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return await sl<ProductRepository>().getNewIn();
  }

}