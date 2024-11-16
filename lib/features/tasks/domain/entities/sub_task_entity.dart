class SubTaskEntity {
  final String title;

  String description;
  bool isChecked;

  SubTaskEntity(
      {required this.title, this.description = '', this.isChecked = false});
}
