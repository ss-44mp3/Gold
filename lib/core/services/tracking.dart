import '../../models/track_point.dart';

class TrackingService {
  bool _isTracking = false;
  bool get isTracking => _isTracking;
  final points = <TrackPoint>[];
  void start() => _isTracking = true;
  void stop() => _isTracking = false;
  void addPoint(TrackPoint point) { if (_isTracking) points.add(point); }
}