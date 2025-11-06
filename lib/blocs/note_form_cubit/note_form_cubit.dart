import 'package:bloc/bloc.dart';
import '../../models/note.dart';

class NoteFormCubit extends Cubit<Note> {
  NoteFormCubit() : super(Note(
    id: null,
    title: '', 
    content: '', 
    createdAt: DateTime.now(),
  ));

  // Update title
  void updateTitle(String title) {
    final current = state;
    emit(current.copyWith(title: title));
  }

  // Update content
  void updateContent(String content) {
    final current = state;
    emit(current.copyWith(content: content));
  }

  // Reset form ke keadaan awal
  void reset() {
    emit(Note(
      id: null,
      title: '', 
      content: '', 
      createdAt: DateTime.now(),
    ));
  }

  // Load existing note untuk edit
  void loadNote(Note note) {
    emit(note);
  }

  // Check jika form valid
  bool isValid() {
    return state.title.trim().isNotEmpty;
  }
}