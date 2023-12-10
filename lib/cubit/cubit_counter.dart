import 'package:counterapp/cubit/counter_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends Cubit<CounterCubitState> {
  int CounterV = 0;
  Counter() : super(CounterCubit());

  void counterIncrease() {
    CounterV++;
    emit(CounterValue(counter: CounterV));
  }

  void counterDecrease() {
    CounterV--;
    emit(CounterValue(counter: CounterV));
  }
}
