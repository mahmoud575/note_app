import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../constants.dart';
import '../../models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes()  {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes =  noteBox.values.toList();
      emit(NoteSuccess(note: notes));
    } catch (e) {
      emit(NoteFailure(
        errMessage: e.toString(),
      )) ;
    }
  }
}