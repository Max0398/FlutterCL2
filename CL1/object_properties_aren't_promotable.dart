import 'dart:math';

class RandomStringProviderFactory {
  static StringProvider getProvider() =>  RandomStringProvider();
}

class StringProvider {
  String? value = 'Hi!';
}

class RandomStringProvider extends StringProvider {
  String? get value => Random().nextBool() ? 'A String!' : null;
}

void printString(String str) => print(str);

void main() {
  final provider = RandomStringProviderFactory.getProvider();
  final str = provider.value;

  if (str == null) {
    print('El Valor es nulo');
  } else {
    print('El Valor no es nulo, Se mostrara en consola');
    printString(str);
  }
}
