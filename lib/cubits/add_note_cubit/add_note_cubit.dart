import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState>
{
  AddNoteCubit() : super (AddNoteInitial());

  addNote (NoteModel note)
  {

  }
}