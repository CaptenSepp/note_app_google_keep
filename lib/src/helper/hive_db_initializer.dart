import 'package:sepp_note/src/DB/notes_db.dart';

Future<void> hiveDBInitializer() async {
  await NotesDB.instanceGetter().initialize();
}
