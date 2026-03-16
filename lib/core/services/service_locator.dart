import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Register your services here
  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit());
  // Register FirebaseAuth instance for firebase quick operations like sign out
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
}