void main() async {
  
  print('Inicio del programa');
  
  try{
    
    final value = await httpGet('Dirección de la página web');
    print( ' éxito: $value');
    
  } on Exception {
    print('Tenemos una exception');
  }
  catch (error){
    print('Algo terrible paso: $error');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
  
}

//async indica que se va a retornar un Future

Future <String> httpGet( String url ) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay parámetros en el URL');
  
  //throw 'Error en la petición';
  
  //return 'Tenemos un valor de la petición';
    
  
}