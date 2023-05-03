void main() {
  print(greetEveryone());
  
  print(' Suma: ${addTwoNumbers(10,20)}');
}

String greetEveryone() => 'Hello evertyone';

int addTwoNumbers( int a , int b ) => a + b;

int addTwoNumbersOptional( int a , [ int? b ] ) {
  //Forma larga de hacer la validación de nullsafty
  //b = b ?? 0;
  //Forma larga de hacer la validación de nullsafty
  b ??= 0;
  return a + b;
} 

int addTwoNumbersOptionalGood( int a , [ int b = 0 ] ) {
  return a + b;
}