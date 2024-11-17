import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/data/auth/models/user_creation_req.dart';
import 'package:lotus_food/domain/auth/repository/auth.dart';
import 'package:lotus_food/service_locator.dart';

class SignupUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq ? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}