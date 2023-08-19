import 'package:flutter_bloc/flutter_bloc.dart';

class InstructionCubit extends Cubit<String> {
  InstructionCubit() : super('');

  addInstruction(String data) {
    emit(data);
  }

  clearInstruction() {
    emit('');
  }
}
