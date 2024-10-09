import 'package:plant_ui/utils/const.dart';

class Plantdata {
  String? plantName;
  String? plantImage;
  String? plantCountry;
  String? price;

  Plantdata({this.plantName,this.plantImage,this.plantCountry,this.price});
}


List<Plantdata> plantlist = [
  Plantdata(
    plantName: "Rose",
    plantImage: roseImage,
    plantCountry: "Singapore",
    price: "\$100"
  ),

   Plantdata(
    plantName: "Cactus",
    plantImage: cactus,
    plantCountry: "Thailand",
    price: "\$200"
  ),

  Plantdata(
    plantName: "Fern",
    plantImage: fern,
    plantCountry: "Vietnam",
    price: "\$500"
  ),

  Plantdata(
    plantName: "Orchid",
    plantImage: orchid,
    plantCountry: "Myanmar",
    price: "\$1000"
  ),


  Plantdata(
    plantName: "Tulip",
    plantImage: tulip,
    plantCountry: "Malaysia",
    price: "\$50"
  )
  
];