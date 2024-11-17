import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/data/order/models/add_to_cart_req.dart';
import 'package:lotus_food/domain/order/repository/order.dart';
import 'package:lotus_food/service_locator.dart';


class AddToCartUseCase implements UseCase<Either,AddToCartReq> {
  @override
  Future<Either> call({AddToCartReq ? params}) async {
    return sl<OrderRepository>().addToCart(params!);
  }

}