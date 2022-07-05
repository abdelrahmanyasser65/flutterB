import 'package:flutter_bloc/Flutter_bloc.dart';
class CounterBloc extends Cubit<int>{
  CounterBloc():super(0);
  void changeCounter(){
    emit(state+1);
  }

}