class SerchScreen {
  late String image;
  late String text;
  late String textbutton;

  SerchScreen  ({
    this.image = "",
    this.text = "",
    this.textbutton = "",});

  static void add(SerchScreen newPerson) {}

  ///static void add(SerchScreen newPerson) {}

/* Reparescreen.fromJson(dynamic json) {
    image = json['image'];
    text = json['text'];
    textbutton = json['textbutton'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image'] = image;
    map['text'] = text;
    map['textbutton'] = textbutton;
    return map;
  }*/

}