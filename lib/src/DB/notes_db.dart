class DataBase {
  static DataBase? _dataBaseInstance;
  final String notesBoxName = 'notesBox';

  DataBase._();

  DataBase? instanceGetter() {
    //! a = b if a null
    _dataBaseInstance ??= DataBase._();
    return _dataBaseInstance;
  }
}
