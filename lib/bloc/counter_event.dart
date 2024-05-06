part of 'counter_bloc.dart';

abstract  class CounterEvent {

}
class Increment extends CounterEvent{
  var count1;

var widthFactor1;
var left1;

  Increment({required this.count1,required this.widthFactor1,this.left1});
}
class Decrement extends CounterEvent{
  var count1;
  var left1;
  var widthFactor1;


  Decrement({required this.count1,required this.widthFactor1,this.left1});
}