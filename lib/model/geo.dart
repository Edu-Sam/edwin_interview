
class Geo{
  String lat;
  String long;

  Geo({required this.lat,required this.long});

  Map<String,dynamic> toJson()=>{
    'lat':this.lat,
    'long':this.long
  };

  factory Geo.fromJson(Map<String,dynamic> parsedJson){
    return Geo(
      lat: parsedJson['lat'],
      long:parsedJson['long']
    );
  }
}