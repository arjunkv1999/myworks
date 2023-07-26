class India{
  String country ='INDIA';
}
class Kerala extends India{
  String state = 'KERALA';
}
class District extends Kerala{
  String district = 'KANNUR';
}
class Locality extends District{
  String locality ='PUNNAD';
}

void main(){
  var place =Locality();
  print(' my name is ARJUN I am from ${place.locality},located in ${place.district},${place.state},${place.country}');
}