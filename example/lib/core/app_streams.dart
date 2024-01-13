import 'package:rxdart/subjects.dart';

var appStreams = AppStreams();

class AppStreams {
  var loading = BehaviorSubject<bool>.seeded(false);
  void setLoading(bool value) => loading.add(value);
}
