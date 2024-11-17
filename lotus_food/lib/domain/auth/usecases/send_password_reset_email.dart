import 'package:dartz/dartz.dart';
import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/auth/repository/auth.dart';
import 'package:lotus_food/service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String ? params}) async {
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }

}