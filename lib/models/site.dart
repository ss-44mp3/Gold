class Site {
  const Site({this.id, required this.name, this.latitude, this.longitude, this.notes});
  final int? id;
  final String name;
  final double? latitude;
  final double? longitude;
  final String? notes;

  factory Site.fromMap(Map<String, Object?> map) => Site(
        id: map['id'] as int?, name: map['name'] as String,
        latitude: (map['latitude'] as num?)?.toDouble(),
        longitude: (map['longitude'] as num?)?.toDouble(), notes: map['notes'] as String?,
      );

  Map<String, Object?> toMap() => {'id': id, 'name': name, 'latitude': latitude, 'longitude': longitude, 'notes': notes};
}