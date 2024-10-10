import 'package:flutter/material.dart';
import 'package:plant_ui/data/plantdata.dart';
import 'package:plant_ui/utils/const.dart';
import 'package:plant_ui/widget/custom_row.dart';
import 'package:plant_ui/widget/feature_plant_list.dart';
import 'package:plant_ui/widget/header.dart';
import 'package:plant_ui/widget/recomended_product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          leading: Icon(Icons.line_axis),
        ),
        body: ListView(
          shrinkWrap :true,
          children: [
            Hearder(),
            SizedBox(height: 60,),
            customrow(text: "Recomended"),
            SizedBox(height: 20,),
            RecomendedProductlist(),
            SizedBox(height: 20,),
            customrow(text: "Featured Planted"),
            FeaturePlantList()
          ],
        ));
  }
}

