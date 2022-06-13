import 'package:rxdart/rxdart.dart';

// An in-memory store backed by BehaviorSubject that can be
// used to store data for all fake repositories in the app.
// This class is a wrapper over BehaviorSubject
class InMemoryStore<T> {
  InMemoryStore(T initial) : _subject = BehaviorSubject<T>.seeded(initial);

  // The BehaviorSubject that holds the data
  final BehaviorSubject<T> _subject;

  // The output stream that can be used to listen to the data
  Stream<T> get stream => _subject.stream;

  // A synchronous getter for the current value
  T get value => _subject.value;

  // A setter for updating the value
  set value(T newValue) => _subject.add(newValue);

  // Call this when done
  void close() => _subject.close();
}
