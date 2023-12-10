import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable {
  const CounterCubitState();
}

class CounterCubit extends CounterCubitState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CounterValue extends CounterCubitState {
  int counter;
  CounterValue({required this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
