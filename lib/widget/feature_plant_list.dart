import 'package:flutter/material.dart';
import 'package:plant_ui/data/plantdata.dart';
import 'package:plant_ui/utils/const.dart';

class FeaturePlantList extends StatelessWidget {
  const FeaturePlantList({super.key});

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
                  return Card(
                    child: Image.asset(plant.plantImage.toString(),width: 300,height: 150,fit: BoxFit.fill,),
                  );
                }),
              ),
            );
  }
}