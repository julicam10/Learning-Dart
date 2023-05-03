void main() {
  
  final Map<String,dynamic> rawJson = {
    'name' : 'Spiderman',
    'power' : 'Trepar paredes',
    'isAlive' : true,
  };
  
  final superhereo = Hero.fromJson( rawJson );
  print( superhereo );
  
  final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );
  
  print( ironman );
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });
  
  Hero.fromJson( Map<String, dynamic> json) 
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No life found';
  
@override
  toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'YES!' : 'NOP' } ';
  }
  
}