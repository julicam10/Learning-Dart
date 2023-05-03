void main() {
  
  final Hero wolverine = Hero(
    name: 'Logan',
    power: 'Regeneración',
    isAlive: true,
  );
  
  print( wolverine );
  print( wolverine.name );
  print( wolverine.hp );
  
}

class Hero {
  
  String name = '';
  String? power = '';
  int hp = 0;
  bool isAlive = true;
  
  //Método corto
  
  Hero( {
    required this.name, 
    required this.power, 
    this.hp = 50, 
    required this.isAlive
  } );
 
  @override
  toString() {
    return '$name - $power';
  }
  
}