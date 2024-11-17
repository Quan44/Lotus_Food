import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_food/domain/order/entities/product_ordered.dart';
import 'package:lotus_food/domain/order/usecases/get_cart_products.dart';
import 'package:lotus_food/domain/order/usecases/remove_cart_product.dart';
import 'package:lotus_food/presentation/cart/bloc/cart_products_display_state.dart';
import 'package:lotus_food/service_locator.dart';

class CartProductsDisplayCubit extends Cubit<CartProductsDisplayState> {
  CartProductsDisplayCubit(): super(CartProductsLoading());

  void displayCartProducts() async {

   var returnedData = await sl<GetCartProductsUseCase>().call();

    returnedData.fold(
      (error) {
        emit(LoadCartProductsFailure(errorMessage: error));
      },
      (data) {
        emit(CartProductsLoaded(products: data));
      }
    );
  }

  Future<void> removeProduct(ProductOrderedEntity product) async {
   emit(CartProductsLoading());
   var returnedData = await sl<RemoveCartProductUseCase>().call(
    params: product.id
   );

    returnedData.fold(
      (error) {
        emit(LoadCartProductsFailure(errorMessage: error));
      },
      (data) {
        displayCartProducts();
      }
    );
  }
}