class Track {
  const Track({this.id, required this.name, this.startedAt, this.endedAt});
  final int? id;
  final String name;
  final DateTime? startedAt;
  final DateTime? endedAt;
}