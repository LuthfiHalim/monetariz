part of 'cubit.dart';

class MainState extends Equatable {
  final int navigationBarState;

  const MainState({this.navigationBarState = 0});

  MainState copyWith({int? navigationBarState}) {
    return MainState(
        navigationBarState: navigationBarState ?? this.navigationBarState);
  }

  MainState reset() {
    return const MainState();
  }

  @override
  List<Object> get props => [navigationBarState];
}
