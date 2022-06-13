import 'package:rxdart/rxdart.dart';

class InMemoryStore<T> {
  InMemoryStore(T initial) : _subject = BehaviorSubject<T>.seeded(initial);
  final BehaviorSubject<T> _subject;

  Stream<T> get stream => _subject.stream; // Get the stream of data
  T get value => _subject.value; // Get latest value from stream
  set value(T newValue) => _subject.add(newValue); // Add new value to stream

  void close() => _subject.close(); // Close the stream
}
