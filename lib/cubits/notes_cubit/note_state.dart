part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}
class NoteLoading extends NoteState {}
class NoteSuccess extends NoteState {
  final List<NoteModel> note;

  NoteSuccess({required this.note});
}
class NoteFailure extends NoteState {
  final String errMessage;

  NoteFailure({required this.errMessage});
}
