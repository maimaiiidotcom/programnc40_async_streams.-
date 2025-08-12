// stream_with_yield.dart

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1)); // 1-second delay
    yield i;
  }
}

Future<void> main() async {
  print('Starting stream...');
  await for (final value in numberStream()) {
    print('Received: $value');
  }
  print('Stream finished.');
}
