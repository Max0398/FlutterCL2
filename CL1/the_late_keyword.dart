class Meal{
  late String descripcion;

  void setDescripcion(String str){
    descripcion= str;
  }
}

void main(){
  final myMeal = Meal();
  myMeal.setDescripcion('una descripcion');
  print(myMeal.descripcion);
}