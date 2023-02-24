//노트 설계.
//노트는 여러 갈래로 나뉨. 처음에는 이게 어떤 종류의 술을 노트하려는 것인지 나뉘어야 함.
//두번째로는 노트의 필수 정보를 지정한 뒤에 추가할 파트를 나누어야 함.
//예를 들면, 유저는 술의 주종과 이름, 도수, 생산지 등의 필수 정보를 입력했음.
//그 뒤에는 이 노트에 감상만 포함할지, 맛의 분포를 포함할지 정할수 있음.
//ui 에서 이것을 결정했을 때 특정 파트만 포함시킬수 있도록 해야함.
//각 파트트 모델과 ui 로 연결된 위젯.
class Note {
  int id;
  String title;
  String content;
  String noteColor;

  Note(
      {this.id = 1,
      this.title = "Note",
      this.content = "Text",
      this.noteColor = 'red'});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = Map<String, dynamic>();
    if (id != null) {
      data['id'] = id;
    }
    data['title'] = title;
    data['content'] = content;
    data['noteColor'] = noteColor;
    return data;
  }

  @override
  toString() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'noteColor': noteColor,
    }.toString();
  }
}
