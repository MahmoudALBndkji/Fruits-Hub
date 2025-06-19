import 'package:get_it/get_it.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/domain/repository/auth_repo.dart';
import 'package:fruits_hub/features/auth/data/repository/auth_repo_impl.dart';

void setupGetIt() {
  GetIt.I.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  GetIt.I.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: GetIt.I<FirebaseAuthService>()),
  );
}
