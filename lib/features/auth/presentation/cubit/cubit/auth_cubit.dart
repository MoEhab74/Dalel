import 'package:dalel/features/auth/presentation/cubit/cubit/auth_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit() : super(AuthCubitInitial());
}
