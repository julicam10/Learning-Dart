/* 
Create a program that asks the user to enter their age. 
Print out a message that tells how many years they have to be 100 years old.
*/
void main() {
  
  final int edadUsuario = 20;
  print('Te faltan ${edad(edadUsuario)} años para los 100');

}

int edad(int edad) {
  return 100 - edad;
}
