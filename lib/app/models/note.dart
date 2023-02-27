//노트 설계.
//노트는 여러 갈래로 나뉨. 처음에는 이게 어떤 종류의 술을 노트하려는 것인지 나뉘어야 함.
//두번째로는 노트의 필수 정보를 지정한 뒤에 추가할 파트를 나누어야 함.
//예를 들면, 유저는 술의 주종과 이름, 도수, 생산지 등의 필수 정보를 입력했음.
//그 뒤에는 이 노트에 감상만 포함할지, 맛의 분포를 포함할지 정할수 있음.
//ui 에서 이것을 결정했을 때 특정 파트만 포함시킬수 있도록 해야함.
//각 파트트 모델과 ui 로 연결된 위젯.
final String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    //모든 필드 입력.
    id, isBeer, title, content, noteColor,
  ];
  static final String id = '_id';
  static final String isBeer = 'isBeer';
  static final String title = 'title';
  static final String content = 'content';
  static final String noteColor = 'noteColor';
}

class Note {
  final int? id;
  final bool isBeer;
  final String title;
  final String content;
  final String noteColor;

  Note({
    this.id,
    required this.isBeer,
    required this.title,
    required this.content,
    required this.noteColor,
  });

  Note copy({
    int? id,
    bool? isBeer,
    String? title,
    String? content,
    String? noteColor,
  }) =>
      Note(
        id: id ?? this.id,
        isBeer: isBeer ?? this.isBeer,
        title: title ?? this.title,
        content: content ?? this.content,
        noteColor: noteColor ?? this.noteColor,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json[NoteFields.id] as int?,
        //Boolean 은 참일시 1, 거짓일시 0 으로 변환.
        isBeer: json[NoteFields.isBeer] == 1,
        title: json[NoteFields.title] as String,
        content: json[NoteFields.content] as String,
        noteColor: json[NoteFields.noteColor] as String,
        //date time, color 등 sql 문에서 식별 불가능한 타입은 변환해주어야 함.
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        //bool.
        NoteFields.isBeer: isBeer ? 1 : 0,
        NoteFields.title: title,
        NoteFields.content: content,
        NoteFields.noteColor: noteColor
      };
}
