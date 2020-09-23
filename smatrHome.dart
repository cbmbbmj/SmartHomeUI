import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:clay_containers/clay_containers.dart';

class smartHomeUi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_smartHomeUiState();
}
class _smartHomeUiState extends State<smartHomeUi>{
  double _value = 4.0;
  bool chandeState =false;
  bool colorState =false;
  bool lightState =false;
  bool spakerState =false;
  bool stingsState =false;
  bool fullColor =false;
  GlobalKey<ScaffoldState>_key =GlobalKey<ScaffoldState>();
  
  Color primaryColor = Color(0xFF262828);
  Color activColor1 = Color(0xFFF28108);
  Color activColor2 =  Color(0xFFFB8E14);
  Color activColor3 =Color(0xFF8635DA);
  Color activColor4 =Color(0xFF5F08BA);
  List<Color> orangeMode=[
    Color(0xFFF28108),
    Color(0xFFFB8E14),
  ];
  List<Color>purpleGradiant=[Color(0xFF8635DA),Color(0xFF5F08BA)];
  List<Color> purbleMode=[
    Color(0xff420482),
    Color(0xFF5F08BA),
    Color(0xFF8635DA),
    Color( 0xFFA058EB),
    Color(0xFFA368E1),
  ];
  //Color b= Colors.black;
    topAppBar(){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///**
          ClayContainer(
            color: primaryColor,
            height: 40,
            width: 40,
             borderRadius: 10,
              child: Padding(child:Icon(Icons.arrow_back,color: Colors.white,size: 32,),padding: EdgeInsets.all(4.0),)

          ),
          Column(children: [
            Text("Living Rom",style: TextStyle(color: Colors.white,fontSize: 26.0,fontFamily: "Signatra"),),
            Text("By Mahney Elbna(TRIPLE M)",style: TextStyle(color: Colors.white,fontSize: 11.0,fontFamily: "Signatra"),),
          ],),
          //*
          ClayContainer(
            color: primaryColor,
            height: 40,
            width: 40,
            borderRadius: 10,
            child: Padding(child:Icon(Icons.add,color: Colors.white,size: 32,),padding: EdgeInsets.all(4.0),)
          ),
        ],
      ),
    );
  }
    listIteam1(context){
    return Container(
      child:Padding(padding: EdgeInsets.all(16.0),
      child:ClayContainer(
        height: 100,
        width:  MediaQuery.of(context).size.width*0.7,
        borderRadius: 12,
        color: primaryColor,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors:fullColor?orangeMode:purpleGradiant,
            )
          ),
          child: Padding(padding: EdgeInsets.all(8),
           child: ListTile(title:  Text("Air Conditioners",style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: "Signatra"),),
             subtitle:  Text("Sharp Air Conditioner 1.5 HP Cool",style: TextStyle(color: Colors.white,fontSize: 11.0,fontFamily: "Signatra"),),
              leading: IconButton(onPressed: (){},icon: Icon(Icons.table_chart),color: Colors.white,), ),
          ),
        ),

       ) ,
      ) ,
    );
  }
    listIteam2(){
    return Container(
      child:Padding(padding: EdgeInsets.all(16.0),
        child:ClayContainer(
          height: 100,
          width:  MediaQuery.of(context).size.width*0.7,
          borderRadius: 12,
          color: primaryColor,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors:fullColor?orangeMode:purpleGradiant,
                )
            ),
            child: Padding(padding: EdgeInsets.all(8),
              child: ListTile(title:  Text("smart Devices",style: TextStyle(color: Colors.white,fontSize: 28.0,fontFamily: "Signatra"),),
                subtitle:  Text("By Mahney Elbna",style: TextStyle(color: Colors.white,fontSize: 15.0,fontFamily: "Signatra"),),
                leading: IconButton(onPressed: (){},icon: Icon(Icons.live_tv),color: Colors.white,), ),
            ),
          ),

        ) ,
      ) ,
    );
  }
     listIteam3(){
    return Container(
      child:Padding(padding: EdgeInsets.all(16.0),
        child:ClayContainer(
          height: 100,
          width:  MediaQuery.of(context).size.width*0.7,
          borderRadius: 12,
          color: primaryColor,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors:fullColor?orangeMode:purpleGradiant,
                )
            ),
            child: Padding(padding: EdgeInsets.all(8),
              child: ListTile(title:  Text("Lamps",style: TextStyle(color: Colors.white,fontSize: 28.0,fontFamily: "Signatra"),),
                subtitle:  Text("By Mahney Elbna",style: TextStyle(color: Colors.white,fontSize: 15.0,fontFamily: "Signatra"),),
                leading: IconButton(onPressed: (){},icon: Icon(Icons.wb_incandescent),color: Colors.white,), ),
            ),
          ),

        ) ,
      ) ,
    );
  }
    circularTempSlider(){
    return ClayContainer(
      height: 170,
      width: 170,
      color: primaryColor,
      borderRadius: 170,
      child: Padding(padding: EdgeInsets.all(12),
        child:  SleekCircularSlider(

            appearance: CircularSliderAppearance(
            customColors: CustomSliderColors(
                progressBarColors:fullColor?orangeMode:purbleMode,
            ),
              infoProperties: InfoProperties(
                  mainLabelStyle:TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Signatra",
                    fontWeight: FontWeight.bold,
                  ),
                modifier: ( double clic) {
                  final roundedValue =clic.ceil().toInt().toString();
                  return '$roundedValue \u2103 ';
                },
              ),
            ),

            onChange: (double value) {
              print(value);
            }
            ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _key,
      backgroundColor: primaryColor,
      body:Column(
      //  mainAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35.0,),
          topAppBar(),
          SizedBox(height: 8.0,),
          Container(
            height: 140.0,
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 4),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listIteam1(context),
                listIteam2(),
                listIteam3(),
              ],
            ) ,
          ),
          SizedBox(height: 18.0,),
          circularTempSlider(),
          SizedBox(height: 20.0,),
          Text("Speed of Fan",style: TextStyle(color: Colors.white,fontSize: 26.0,fontFamily: "Signatra"),),
          SizedBox(height: 11.0,),
          Slider(
             value: _value,
            activeColor: fullColor?Color(0xFFF28108):Color(0xFF5F08BA),
            label: _value.toString(),
            max: 10.0,
            min: 0.0,
            divisions: 10,
            inactiveColor:fullColor?Color(0xffFFC103):Color(0xFFA058EB) ,
            onChanged: (val){
               setState(() {
                 _value=val;
               });
            },
          ),
          Padding(padding: EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClayContainer(
                height: 80,
                width: 80,
                borderRadius: 18,
                color: primaryColor,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      gradient: LinearGradient(
                        colors: fullColor?
                        [lightState?Color(0xFFF28108):primaryColor,
                          lightState?Color(0xFFF28108):primaryColor,]
                            :
                        [lightState?Color(0xFF5F08BA):primaryColor,
                          lightState?Color(0xFF8635DA):primaryColor,]
                      )
                    ),
                      child: Padding(child:IconButton(
                        icon: Icon(Icons.wb_incandescent,color: Colors.white,size: 42,),
                        onPressed: (){
                          setState(() {
                            lightState =!lightState;
                          });
                        },
                      ),padding: EdgeInsets.all(4.0),)
                  ),
              ),
              SizedBox(width: 11,),
              Column(children: [

                ClayContainer(
                  height: 35,
                  width: 90,
                  borderRadius: 10,
                  color: primaryColor,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              colors: fullColor?
                              [chandeState?Color(0xFFF28108):primaryColor,
                                chandeState?Color(0xFFF28108):primaryColor,]
                                  :
                              [chandeState?Color(0xFF5F08BA):primaryColor,
                                chandeState?Color(0xFF8635DA):primaryColor,]
                          )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.power_settings_new,color: Colors.white,size: 15,),
                        onPressed: (){
                          setState(() {
                            chandeState =!chandeState;
                          });
                        },
                      )
                  ),
                ),
                SizedBox(height:5.0,),
                ClayContainer(
                  height: 35,
                  width: 90,
                  borderRadius: 10,
                  color: primaryColor,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              colors: fullColor?
                              [colorState?Color(0xFFF28108):primaryColor,
                                colorState?Color(0xFFF28108):primaryColor,]
                                  :
                              [colorState?Color(0xFF5F08BA):primaryColor,
                                colorState?Color(0xFF8635DA):primaryColor,]
                          )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.color_lens,color: Colors.white,size: 15,),
                        onPressed: (){
                          /*
                          final alertDialog = AlertDialog(
                            content:Text("choose your favorite color",
                              style: TextStyle(color: Colors.black,fontSize: 26.0,fontFamily: "Signatra"),
                            ) ,
                             actions: [
                               IconButton(icon: Icon(Icons.color_lens), onPressed: (){
                                 setState(() {
                                   fullColor=!fullColor;
                                 });
                               })
                             ],
                          );
                         showDialog(context: context,child:alertDialog );*/
                         final snackbar =SnackBar(
                           content: Text("change color",style: TextStyle(color: Colors.white,fontSize: 26.0,fontFamily: "Signatra"),),
                           duration: Duration(seconds: 3),

                           action: SnackBarAction(
                           label:"Mode",
                           textColor: Colors.white,


                           onPressed: (){
                             setState(() {
                               fullColor=!fullColor;
                             });

                           },
                         ),);
                         _key.currentState.showSnackBar(snackbar);
                        },
                      )
                  ),
                ),//

              ],),
              SizedBox(width: 11,),
              Column(children: [

                ClayContainer(
                  height: 35,
                  width: 90,
                  borderRadius: 10,
                  color: primaryColor,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              colors: fullColor?
                              [spakerState?Color(0xFFF28108):primaryColor,
                                spakerState?Color(0xFFF28108):primaryColor,]
                                  :
                              [spakerState?Color(0xFF5F08BA):primaryColor,
                                spakerState?Color(0xFF8635DA):primaryColor,]
                          )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.speaker_group,color: Colors.white,size: 15,),
                        onPressed: (){
                          setState(() {
                            spakerState =!spakerState;
                          });
                        },
                      )
                  ),
                ),
                SizedBox(height:5.0,),
                ClayContainer(
                  height: 35,
                  width: 90,
                  borderRadius: 10,
                  color: primaryColor,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: LinearGradient(
                              colors: fullColor?
                              [stingsState?Color(0xFFF28108):primaryColor,
                                stingsState?Color(0xFFF28108):primaryColor,]
                                  :
                              [stingsState?Color(0xFF5F08BA):primaryColor,
                                stingsState?Color(0xFF8635DA):primaryColor,]
                          )
                      ),
                      child: IconButton(
                        icon: Icon(Icons.settings,color: Colors.white,size: 15,),
                        onPressed: (){
                          setState(() {
                            stingsState =!stingsState;
                          });
                        },
                      )
                  ),
                ),

              ],),
            ],
          ),
          )
        ],
      ),
    );
  }

}

