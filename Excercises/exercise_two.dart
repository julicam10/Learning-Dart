/* 
Ask the user for a number. 
Depending on whether the number is even or odd, print out an appropriate message to the user.
*/
void main() {
  int numero = 0;
  print('De acuerdo con el número ingresado, ${validacion(numero)}');
}

String validacion (numero) {
  if (numero % 2 == 0) {
    return 'tu numero es par';
  } return 
    'tu numero es impar';
}
