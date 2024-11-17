import 'package:get_it/get_it.dart';
import 'package:lotus_food/data/auth/repository/auth_repository_impl.dart';
import 'package:lotus_food/data/auth/source/auth_firebase_service.dart';
import 'package:lotus_food/data/category/repository/category.dart';
import 'package:lotus_food/data/category/source/category_firebase_service.dart';
import 'package:lotus_food/data/order/repository/order.dart';
import 'package:lotus_food/data/order/source/order_firebase_service.dart';
import 'package:lotus_food/data/product/repository/product.dart';
import 'package:lotus_food/data/product/source/product_firebase_service.dart';
import 'package:lotus_food/domain/auth/repository/auth.dart';
import 'package:lotus_food/domain/auth/usecases/get_ages.dart';
import 'package:lotus_food/domain/auth/usecases/get_user.dart';
import 'package:lotus_food/domain/auth/usecases/is_logged_in.dart';
import 'package:lotus_food/domain/auth/usecases/send_password_reset_email.dart';
import 'package:lotus_food/domain/auth/usecases/signin.dart';
import 'package:lotus_food/domain/auth/usecases/signup.dart';
import 'package:lotus_food/domain/category/repository/category.dart';
import 'package:lotus_food/domain/category/usecases/get_categories.dart';
import 'package:lotus_food/domain/order/repository/order.dart';
import 'package:lotus_food/domain/order/usecases/add_to_cart.dart';
import 'package:lotus_food/domain/order/usecases/get_cart_products.dart';
import 'package:lotus_food/domain/order/usecases/get_orders.dart';
import 'package:lotus_food/domain/order/usecases/order_registration.dart';
import 'package:lotus_food/domain/order/usecases/remove_cart_product.dart';
import 'package:lotus_food/domain/product/repository/product.dart';
import 'package:lotus_food/domain/product/usecases/add_or_remove_favorite_product.dart';
import 'package:lotus_food/domain/product/usecases/get_favorties_products.dart';
import 'package:lotus_food/domain/product/usecases/get_new_in.dart';
import 'package:lotus_food/domain/product/usecases/get_products_by_category_id.dart';
import 'package:lotus_food/domain/product/usecases/get_products_by_title.dart';
import 'package:lotus_food/domain/product/usecases/get_top_selling.dart';
import 'package:lotus_food/domain/product/usecases/is_favorite.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  // Service

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  sl.registerSingleton<CategoryFirebaseService>(
    CategoryFirebaseServiceImpl()
  );

  sl.registerSingleton<ProductFirebaseService>(
    ProductFirebaseServiceImpl()
  );

  sl.registerSingleton<OrderFirebaseService>(
    OrderFirebaseServiceImpl()
  );

  // Repos

  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  sl.registerSingleton<CategoryRepository>(
    CategoryRepositoryImpl()
  );

  sl.registerSingleton<ProductRepository>(
    ProductRepositoryImpl()
  );

  sl.registerSingleton<OrderRepository>(
    OrderRepositoryImpl()
  );


  // Usecases

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );

  sl.registerSingleton<GetAgesUseCase>(
    GetAgesUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
    SigninUseCase()
  );

  sl.registerSingleton<SendPasswordResetEmailUseCase>(
    SendPasswordResetEmailUseCase()
  );

  sl.registerSingleton<IsLoggedInUseCase>(
    IsLoggedInUseCase()
  );

  sl.registerSingleton<GetUserUseCase>(
    GetUserUseCase()
  );

  sl.registerSingleton<GetCategoriesUseCase>(
    GetCategoriesUseCase()
  );

  sl.registerSingleton<GetTopSellingUseCase>(
    GetTopSellingUseCase()
  );

  sl.registerSingleton<GetNewInUseCase>(
    GetNewInUseCase()
  );

  sl.registerSingleton<GetProductsByCategoryIdUseCase>(
    GetProductsByCategoryIdUseCase()
  );

  sl.registerSingleton<GetProductsByTitleUseCase>(
    GetProductsByTitleUseCase()
  );

  sl.registerSingleton<AddToCartUseCase>(
    AddToCartUseCase()
  );

  sl.registerSingleton<GetCartProductsUseCase>(
    GetCartProductsUseCase()
  );

  sl.registerSingleton<RemoveCartProductUseCase>(
    RemoveCartProductUseCase()
  );

  sl.registerSingleton<OrderRegistrationUseCase>(
    OrderRegistrationUseCase()
  );

  sl.registerSingleton<AddOrRemoveFavoriteProductUseCase>(
    AddOrRemoveFavoriteProductUseCase()
  );

  sl.registerSingleton<IsFavoriteUseCase>(
    IsFavoriteUseCase()
  );

  sl.registerSingleton<GetFavortiesProductsUseCase>(
    GetFavortiesProductsUseCase()
  );

  sl.registerSingleton<GetOrdersUseCase>(
    GetOrdersUseCase()
  );
}