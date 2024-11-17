import 'package:dartz/dartz.dart';
import 'package:lotus_food/data/product/models/product.dart';
import 'package:lotus_food/data/product/source/product_firebase_service.dart';
import 'package:lotus_food/domain/product/repository/product.dart';
import 'package:lotus_food/service_locator.dart';

class ProductRepositoryImpl extends ProductRepository {

  @override
  Future<Either> getTopSelling() async {
    var returnedData = await sl<ProductFirebaseService>().getTopSelling();
    return returnedData.fold(
      (error){
        return Left(error);
      }, 
      (data){
        return Right(
          List.from(data).map((e) => ProductModel.fromMap(e).toEntity()).toList()
        );
      }
    );
  }
  
  @override
  Future<Either> getNewIn() async {
    var returnedData = await sl<ProductFirebaseService>().getTopNewIn();
    return returnedData.fold(
      (error){
        return Left(error);
      }, 
      (data){
        return Right(
          List.from(data).map((e) => ProductModel.fromMap(e).toEntity()).toList()
        );
      }
    );
  }
  
  @override
  Future<Either> getProductsByCategoryId(String categoryId) async {
    var returnedData = await sl<ProductFirebaseService>().getProductsByCategoryId(categoryId);
    return returnedData.fold(
      (error){
        return Left(error);
      }, 
      (data){
        return Right(
          List.from(data).map((e) => ProductModel.fromMap(e).toEntity()).toList()
        );
      }
    );
  }
  
  @override
  Future<Either> getProductsByTitle(String title) async {
    var returnedData = await sl<ProductFirebaseService>().getProductsByTitle(title);
    return returnedData.fold(
      (error){
        return Left(error);
      }, 
      (data){
        return Right(
          List.from(data).map((e) => ProductModel.fromMap(e).toEntity()).toList()
        );
      }
    );
  }

}