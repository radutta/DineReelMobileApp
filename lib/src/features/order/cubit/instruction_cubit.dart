import 'package:flutter_bloc/flutter_bloc.dart';

class InstructionCubit extends Cubit<String> {
  InstructionCubit() : super('add cooking Instructions');

  addInstruction(String data) {
    emit(data);
  }
}
