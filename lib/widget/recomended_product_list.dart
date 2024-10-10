import 'package:flutter/material.dart';
import 'package:plant_ui/data/plantdata.dart';
import 'package:plant_ui/screens/details_screen.dart';
import 'package:plant_ui/utils/const.dart';

class RecomendedProductlist extends StatelessWidget {
  const RecomendedProductlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: plantlist.length,
                  itemBuilder: (context,index){
                    final plant = plantlist[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen(plantlist: plantlist,index: index,)));
                    },
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(plant.plantImage.toString(),width: 150,height: 150,fit: BoxFit.fill,),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                            SizedBox(width: 10,),
                            Text("${plant.plantName!.toUpperCase()}"),
                            SizedBox(width: 50,),
                            Text("${plant.price}",style: TextStyle(color: appColor),)
                          ],),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("${plant.plantCountry!.toUpperCase()}",style: TextStyle(color: appColor),),
                          )
                        ],
                      )
                    ),
                  );
                }),
              ),
            );
  }
}
