import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'state.dart';

class MainCubit extends Cubit<MainState> {
  static final BlocProvider provider =
      BlocProvider<MainCubit>(create: (context) => MainCubit());

  MainCubit() : super(const MainState());

  void setNavigationBarState(int state) =>
      emit(MainState(navigationBarState: state));
}
