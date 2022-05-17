class DataBase {
  static DataBase? _dataBaseInstance;
  final String notesBoxName = 'notesBox';
  final String todosBoxName = 'todosBox';
  final String remindersBoxName = 'remindersBox';

  DataBase._();

  DataBase? instanceGetter() {
    // TODO a = b if a null
    _dataBaseInstance ??= DataBase._();
    return _dataBaseInstance;
  }
}
