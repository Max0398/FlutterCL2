int _computeValue(){
  print('In _computeValue....');
  return 3;
}

class CachedValueProvider{
  late final _cache = _computeValue();
  int get value => _cache;
}

void main (){
  print('LLamando al Constructor..');
  var provider = CachedValueProvider();
  print('Obteniendo Valor ....');
  print('El valor es: ${provider.value}');
}