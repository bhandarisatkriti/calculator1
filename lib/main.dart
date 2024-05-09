import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Calculator(title: 'Calculator',),
    );
  }
}

class Calculator extends StatefulWidget {
  final String title;
 
  const Calculator({super.key,required this.title});
  
  @override
  State<Calculator> createState() => _CalculatorState();
  
}

class _CalculatorState extends State<Calculator> {
  int firstnumber=0;
    int secondnumber=0;
    int add=0;
    int sub=0;
    int mul=0;
    String isOperationpressed='';
    int Result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        actions: [Result!=0? Padding(
          padding: const EdgeInsets.only(right:30.0),
          child: Text("Result:$Result",style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ):const SizedBox.shrink()],
        backgroundColor: const Color.fromARGB(33, 204, 34, 219),
      ),
      body:Container(
        width:MediaQuery.of(context).size.height,
        color: const Color.fromARGB(44, 238, 240, 228),
        child: Column(
         children: [
          Row(
            
            children: [
              Expanded(
                child:ElevatedButton(
                  onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=1;

                    }else{
firstnumber=1;
                    }
                    
                    
                    log(firstnumber.toString());
                      log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("1"),
                  
                ),
              ),const SizedBox(width:44),
                Expanded(
                  child:ElevatedButton.icon(onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=2;

                    }else{
firstnumber=2;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  }, 
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 

                  icon: const Icon(Icons.message), 
                  label: const Text("2"),),
                // child: Container(
                //    color: Color.fromARGB(44, 11, 207, 31),
                //   width: 120,
                //   height: 140,
                // ),
              ),const SizedBox(width:44), 
              Expanded(
                child:ElevatedButton(
                  onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=3;

                    }else{
firstnumber=3;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());

                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("3"),
                ),
              ),

            ],
          ),
             const SizedBox(height:44),
          Row(
            children: [
              Expanded(
                child:ElevatedButton(
                  onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=4;

                    }else{
firstnumber=4;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("4"),
                ),
              ),const SizedBox(width:44),
               Expanded(
                  child:ElevatedButton(
                  onPressed: (){
                    
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=5;

                    }else{
firstnumber=5;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("5"),
                ),
               ),const SizedBox(width:44),
               Expanded(
                 child:ElevatedButton(
                  onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=6;

                    }else{
firstnumber=6;
                    }
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("6"),
                ),
               ),

            ],
          ),
const SizedBox(height:44),
          Row(
            children: [
              Expanded(
                 child:ElevatedButton(
                  onPressed: (){
                    
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=7;

                    }else{
                      firstnumber=7;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("7"),
                ),
              ),
              const SizedBox(width:44),

               Expanded(
                  child:ElevatedButton(
                  onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=8;

                    }else{
firstnumber=8;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("8"),
                ),
               ),
              const SizedBox(width:44),
               Expanded(
                  child:ElevatedButton(
                  onPressed: (){
                    if(isOperationpressed.isNotEmpty){
                      secondnumber=9;

                    }else{
firstnumber=9;
                    }
                    
                    log(firstnumber.toString());
                     log(secondnumber.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("9"),
                ),
               ),

            ],
          ),
          const SizedBox(height:44),
          Row(
            children: [
              Expanded(
                 child:ElevatedButton(
                  onPressed: (){
                    isOperationpressed='+';
                    add=firstnumber+secondnumber;
                    log(add.toString());

                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("Add"),
                ),
              ),
              const SizedBox(width:44),

               Expanded(
                  child:ElevatedButton(
                  onPressed: (){
                     isOperationpressed='-';
                    sub=firstnumber-secondnumber;
                    log(sub.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("Sub"),
                ),
               ),
              const SizedBox(width:44),
               Expanded(
                  child:ElevatedButton(
                  onPressed: (){
                     isOperationpressed='*';
                    mul=firstnumber*secondnumber;
                    log(mul.toString());
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("Mul"),
                ),
               ),
               Expanded(
                  child:ElevatedButton(
                  onPressed: (){
                     if(isOperationpressed=='+'){
                      add=firstnumber+secondnumber;
                      Result=add;

                     }else if(isOperationpressed=='-'){
                      sub=firstnumber-secondnumber;
                      Result=sub;

                     }else{
                       mul=firstnumber*secondnumber;
                       Result=mul;
                     }
                    log("Result: ${Result.toString()}");
                    setState(() {
                      
                    });
                  },
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 202, 115, 217),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)), 
                  child: const Text("Result"),
                ),
               ),

            ],
          ),

         ],
        ),
        
      ) ,

    );
  }
}