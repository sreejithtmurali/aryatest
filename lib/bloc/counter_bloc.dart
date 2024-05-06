import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../listtt.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(CounterInitial(count: 3, widthFactor: .5,left: null)) {
    on<Increment>((event, emit) {
      emit(CounterState(count: event.count1, widthFactor: event.widthFactor1,left:event.left1));
    });
    on<Decrement>((event, emit) {
      emit(CounterState(left:event.left1,count: event.count1, widthFactor: event.widthFactor1));
    });
  }
}
