import 'package:lotus_food/core/usecase/usecase.dart';
import 'package:lotus_food/domain/auth/repository/auth.dart';
import 'package:lotus_food/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool,dynamic> {

  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }

}