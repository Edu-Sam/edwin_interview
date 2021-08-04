
class Geo{
  String lat;
  String lng;

  Geo({required this.lat,required this.lng});

  Map<String,dynamic> toJson()=>{
    'lat':this.lat,
    'lng':this.lng
  };

  factory Geo.fromJson(Map<String,dynamic> parsedJson){
    return Geo(
      lat: parsedJson['lat'],
      lng:parsedJson['lng']
    );
  }
}