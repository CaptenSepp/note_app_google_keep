class DataBase {
  static DataBase? _dataBaseInstance;
  final String notesBoxName = 'notesBox';

  DataBase._();

  DataBase? instanceGetter() {
    // TODO a = b if a null
    _dataBaseInstance ??= DataBase._();
    return _dataBaseInstance;
  }
}
