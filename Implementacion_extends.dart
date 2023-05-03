void main() {
  
  final windPlant = WindPlant( initialEnergy: 50);
  final nuclearPlant = NuclearPlant( initialEnergy: 100 );
  final waterPlant = WaterPlant( energyLeft: 10000);
  
  print( 'wind: ${chargePhone( windPlant )}' );
  print( 'nuclear: ${chargeLaptop( nuclearPlant )}' );
  print( 'water: ${chargeLaptop( waterPlant )}' );

}

double chargePhone( EnergyPlant plant ) {
  if( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

double chargeLaptop( EnergyPlant plant ){
  if( plant.energyLeft < 20 ){
     throw Exception('Not enough energy');
  }
  return plant.energyLeft - 20;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; //nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type
    });
  
  void consumeEnergy( double amount );
  
}

// extends o implements
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
    : super ( energyLeft: initialEnergy , type: PlantType.wind);
    
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}

class NuclearPlant extends EnergyPlant {
  
  NuclearPlant({ required double initialEnergy })
    : super ( energyLeft: initialEnergy , type: PlantType.nuclear);
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
  
}

class WaterPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  PlantType type = PlantType.water;
  
  
  WaterPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
  
}