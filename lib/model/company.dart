
class Company{
  String name;
  String catchPhrase;
  String bs;

  Company({required this.name,required this.catchPhrase,required this.bs});

  Map<String,dynamic> toJson()=>{
    'name':this.name,
    'catchPhrase':this.catchPhrase,
    'bs':this.bs
  };

  factory Company.fromJson(Map<String,dynamic> parsedJson){
    return Company(
      name: parsedJson['name'],
      catchPhrase: parsedJson['catchPhrase'],
      bs:parsedJson['bs']
    );
  }


}