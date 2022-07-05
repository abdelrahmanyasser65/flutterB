
import 'package:riverpod/riverpod.dart';

class CounterR extends StateNotifier<int>{
  CounterR():super(0);
  void changecounter()=>state++;
}