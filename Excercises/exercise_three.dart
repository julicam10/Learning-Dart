/* 
Take a list, say for example this one:
  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
and write a program that prints out all the elements of the list that are less than 5.
*/

void main() {
  final a = <int>[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print('Lista inicial: $a');
  
  final aReversed = a.reversed;
  print('Lista al reves: $aReversed');
  
  final aConMayoresA5 = aReversed.where( (num) {
    return num > 5;
  });
  print('Numeros mayores que 5: $aConMayoresA5');
}
