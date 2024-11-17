import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_food/domain/order/usecases/get_orders.dart';
import 'package:lotus_food/presentation/settings/bloc/orders_display_state.dart';
import 'package:lotus_food/service_locator.dart';

class OrdersDisplayCubit extends Cubit<OrdersDisplayState> {
  OrdersDisplayCubit() : super(OrdersLoading());

  void displayOrders() async {
    var returnedData = await sl<GetOrdersUseCase>().call();
    returnedData.fold(
      (error){
        emit(LoadOrdersFailure(errorMessage: error));
      }, 
      (orders) {
        emit(OrdersLoaded(orders: orders));
      }
    );
  }
}