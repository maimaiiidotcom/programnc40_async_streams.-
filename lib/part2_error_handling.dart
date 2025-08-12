Future<void> simulateError() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception('Something went wrong after a delay!');
  });
}

void main() {
  simulateError()
      .then((_) => print('This will not be called'))
      .catchError((error) => print('Caught error: $error'));
}
