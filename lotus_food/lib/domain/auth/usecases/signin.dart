import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/data/auth/models/user_signin_req.dart';
import 'package:lotus_food/domain/auth/repository/auth.dart';
import 'package:lotus_food/service_locator.dart';

class SigninUseCase implements UseCase<Either,UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq ? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}