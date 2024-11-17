import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/auth/repository/auth.dart';
import 'package:lotus_food/service_locator.dart';

class GetAgesUseCase implements UseCase<Either, dynamic> {

  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }
}