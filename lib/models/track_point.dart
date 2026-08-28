class TrackPoint {
  const TrackPoint({required this.latitude, required this.longitude, this.recordedAt});
  final double latitude;
  final double longitude;
  final DateTime? recordedAt;
}