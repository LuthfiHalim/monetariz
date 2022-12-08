import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monetariz/cubit/main/cubit.dart';

class Blocs {
  static MultiBlocProvider blocList(Widget child) {
    return MultiBlocProvider(providers: [
      MainCubit.provider,
    ], child: child);
  }
}
