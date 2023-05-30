import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Score',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  

  

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
  String getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('MM/dd(EEE)');
    return formatter.format(now);
  }
 
  

    return Scaffold(
      appBar: AppBar(
        
        elevation: 0.0,
        leading:IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed:(){},
        ),
        iconTheme:IconThemeData(color:Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Score',
          style: TextStyle(
            color: Colors.black,
          ),
          ),
          centerTitle: true,
          
        
      ),
      body: SingleChildScrollView(
        child: Column(
           
          children:<Widget>[ Container(
            height: 28,
            width: screenWidth,
            color: Colors.white,
            child:Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size:24,
                ),
                Expanded(
                  child:Center(
                    child:Text(
                      'This Week',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ) ,)
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                  size:24,
                ),
              ],
            ),
            
          ),
          Container(
            margin: EdgeInsets.only(left:30,right:30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal[300],
            ),
            height: 300,
            width: screenWidth,
            padding: EdgeInsets.all(16),
            child: BarChart(
              BarChartData(
                borderData: FlBorderData(border: const Border(
                  top: BorderSide.none,
                  right: BorderSide.none,
                  left: BorderSide(width:1),
                  bottom:BorderSide(width: 1),
                 )),
                 groupsSpace: 10,
                 barGroups:[
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                  BarChartGroupData(x:1,barRods:[
                    BarChartRodData(toY:10, width: 15,color:Colors.amber)
                  ]),
                 ]
              ),
            ),
          ),
          SizedBox(
            height:20,
            width:screenWidth,
          ),
          Container(
            height:28,
            width:screenWidth,
            
           child: Row(
            children: <Widget> [
              SizedBox(
                width: screenWidth*0.1,
              ),
              Text(getCurrentDate(),
              style: TextStyle(
                fontSize:24,
              ),),
            ]
           )
          ),
          SizedBox(
            width: 200,
            height: 30,
          ),
          Row(children:<Widget>[
             SizedBox(
              height: 10,
              width: 20,
            ),
            Container(
              margin:EdgeInsets.only(left: 23, right:8),
             child: Text(
              'Startup Time',
              style: TextStyle(
                fontSize: 24,
              ),
             ),
            ),
            SizedBox(
              height:10,
              width:40,),
            Container(
             child: Text(
              'Smile Average',
              style: TextStyle(
                fontSize: 24,
              ),
             ),
            ),]
            
          ),
          Row(children: <Widget> [
            SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30
              ),
              width: screenWidth*0.45,
              height: screenHeight*0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -10,
                    blurRadius: 2,
                    offset: Offset(-10,14),
                  ),
                ],
              ),
              child:Container(
              
              
              
              margin: EdgeInsets.only(right:20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                color:Colors.white,
                width:2,),
                color: Colors.white,
                
              ),
                            
            )),
            Container(
              width: screenWidth*0.45,
              height: screenHeight*0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -10,
                    blurRadius: 2,
                    offset: Offset(-10,14),
                  ),
                ],
              ),
              child:Container(
              width: screenWidth*0.45,
              height: screenHeight*0.07,
            
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                color:Colors.white,
                width:2,),
                color: Colors.white,
                
              ),

            ),),
          ],),
          SizedBox(
            height: 45,
          ),
          Row(children: <Widget>[
            SizedBox(
              width:screenWidth*0.1,
            ),
            Text(
              'Launch Time',
              style: TextStyle(
                fontSize: 24,
              ),
              
            )
          ],),
          Row(children: <Widget>[
              SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              width: screenWidth*0.45,
              height: screenHeight*0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: -10,
                    blurRadius: 2,
                    offset: Offset(-10,14),
                  ),
                ],
              ),
              child:Container(
              width: screenWidth*0.45,
              height: screenHeight*0.07,
            
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                color:Colors.white,
                width:2,),
                color: Colors.white,
                
              ),

            ),),
          ],),
          SizedBox(
            height: 25,
            width:10,
          ),
          Row(children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12.0),
              width: screenWidth*0.85,
              height: 80,
              color: Colors.yellowAccent,
              child:Center(child: Text(
                'Premium',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),),
              
            ),
            SizedBox(
              height: 20,
            )
        
          ],)
          ],
           
        ),
        
        

      ),
      
      bottomNavigationBar:Container(
                      width: screenWidth,
                      height: screenHeight/10,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(217, 217, 217, 1),
                        shape: BoxShape.rectangle
      
                      ),
                      child: Center(
                        child: Text("banner ads",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: screenHeight/30,
                          fontWeight: FontWeight.bold,
                        )),
                      )), 
       
    );
  }
}
