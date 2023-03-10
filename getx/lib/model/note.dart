class Note {
  int? _id;
  String? _title;
  String? _description;
  int? _priority;
  String? _date;

  Note(this._title, this._priority, this._date, [this._description]);
  Note.withId(this._id, this._title, this._priority, this._date,
      [this._description]);

  int? get id => _id;
  String? get title => _title;
  String? get description => _description;
  int? get priority => _priority;
  // ignore: unnecessary_getters_setters
  String? get date => _date;

  set title(String? newTitle) {
    if (newTitle!.length <= 255) {
      _title = newTitle;
    }
  }

  set description(String? newDescription) {
    if (newDescription!.length <= 255) {
      _description = newDescription;
    }
  }

  set priority(int? newPriority) {
    if (newPriority! >= 1 && newPriority <= 2) {
      _priority = newPriority;
    }
  }

  set date(String? newDate) {
    _date = newDate;
  }


  // convert note object into map object
  Map<String, dynamic> toMap(){
    var map =  <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  //Extract a note object from a map object
  Note.fromMapObject(Map<String, dynamic> map){
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _priority = map['priority'];
    _date = map['date'];
  }

  
}
