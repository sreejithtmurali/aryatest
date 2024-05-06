part of 'counter_bloc.dart';

 class CounterState {
   var count=items.length;
var left=null;
   var widthFactor = .5;

   CounterState({required this.count, required this.widthFactor,required this.left});
}

final class CounterInitial extends CounterState {
  CounterInitial({required super.count, required super.widthFactor,super.left});
}
