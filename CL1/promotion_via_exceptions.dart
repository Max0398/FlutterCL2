int getLength(String? str){
  if(str == null){
   throw 'Es un String Nulo!';
  }
  return str.length;
}

void main(){
  print(getLength('This is string!'));
  print(getLength(null));
}