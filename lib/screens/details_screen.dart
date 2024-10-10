import 'package:flutter/material.dart';
import 'package:plant_ui/data/plantdata.dart';
import 'package:plant_ui/utils/const.dart';

class DetailsScreen extends StatefulWidget {
   DetailsScreen({super.key,required this.index,required this.plantlist});

  List<Plantdata> plantlist = [];
  int index;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  bool btcheck = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(height: 100,),
                            CustomIcon(iconImage: sunIcon,),
                            SizedBox(height: 50,),
                            CustomIcon(iconImage: waterIcon,),
                            SizedBox(height: 50,),
                            CustomIcon(iconImage: waterIcon_two,),
                            SizedBox(height: 50,),
                            CustomIcon(iconImage: hotwater,),
                          ],
                        ),
                      ),
                  
                      Expanded(
                        flex: 3,
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50))
                          ),
                          child: Image.asset("${widget.plantlist[widget.index].plantImage}",height: double.infinity,fit: BoxFit.fill,)))
                    ],
                  ),
                ),
              ),
          
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                        SizedBox(width: 20,),
                        Text("${widget.plantlist[widget.index].plantName}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30)),
                        Spacer(),
                        Text("${widget.plantlist[widget.index].price}",style: TextStyle(color: appColor,fontWeight: FontWeight.w500,fontSize: 25)),
                        SizedBox(width: 20,),
                      
                      ],),
          
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("${widget.plantlist[widget.index].plantCountry}",style: TextStyle(color:appColor,fontSize: 20),),
                      )
                    ],
                  ),
                ),
              ),
          
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      (btcheck) ? Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50))
                    ),
                    child: Center(
                      child: Text("Buy Now",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ) : Expanded(
                  child: InkWell(
                    onTap: (){
                      btcheck = !btcheck;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text("Buy Now"),
                      ),
                    ),
                  ),
                ),
          
          
                (btcheck) ? Expanded(
                child: InkWell(
                  onTap: (){
                    btcheck = !btcheck;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text("Desciption"),
                    ),
                  ),
                ),
                            ) : Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                    ),
                    child: Center(
                      child: Text("Descpriton",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
                    ],
                  ),
                ),
              ),
],
          ),

          Row(
            children: [
              SizedBox(width: 20,),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
              Spacer(),
              Image.asset(moreIcon,width: 30,height: 30,fit: BoxFit.fill,),
              SizedBox(width: 20,),
            ],
          )
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
   CustomIcon({
    super.key,
    required this.iconImage
  });
  String iconImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(iconImage,width: 30,height: 30,fit: BoxFit.fill,color: appColor,),
      ));
  }
}