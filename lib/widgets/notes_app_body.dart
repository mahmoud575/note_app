import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/notes_list_view.dart';

class NotesAppBody extends StatefulWidget {
  const NotesAppBody({super.key});

  @override
  State<NotesAppBody> createState() => _NotesAppBodyState();
}

class _NotesAppBodyState extends State<NotesAppBody> {

  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          CustomAppbar(
            titleName: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}