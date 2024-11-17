import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/product/repository/product.dart';
import 'package:lotus_food/service_locator.dart';

class IsFavoriteUseCase implements UseCase<bool,String> {

  @override
  Future<bool> call({String ? params}) async {
    return await sl<ProductRepository>().isFavorite(params!);
  }

}