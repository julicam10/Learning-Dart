void main(){
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,9,10];
  
  print('List original ${numbers}');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('first: ${ numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Itereables: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');
  
  final numberGreterThan5 = numbers.where( (num) {
    return num > 5; //true o false 
  } );
  
  print('>5: ${numberGreterThan5}');
  print('>5 Set: ${ numberGreterThan5.toSet()}');
}