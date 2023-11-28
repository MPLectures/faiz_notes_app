class Note {
  String id, title, message;

//<editor-fold desc="Data Methods">
  Note({
    required this.id,
    required this.title,
    required this.message,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Note && runtimeType == other.runtimeType && id == other.id && title == other.title && message == other.message);

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ message.hashCode;

  @override
  String toString() {
    return 'Note{' + ' id: $id,' + ' title: $title,' + ' message: $message,' + '}';
  }

  Note copyWith({
    String? id,
    String? title,
    String? message,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'message': this.message,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'] as String,
      title: map['title'] as String,
      message: map['message'] as String,
    );
  }

//</editor-fold>
}