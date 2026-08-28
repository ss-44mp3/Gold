String formatCoordinate(double? value) => value == null ? '-' : value.toStringAsFixed(5);

String formatDate(DateTime? value) => value == null ? '-' : value.toLocal().toIso8601String().split('T').first;