import 'package:flutter/material.dart';

class HomePageCurrency extends StatefulWidget {
  const HomePageCurrency({super.key});

  @override
  State<HomePageCurrency> createState() => _HomePageCurrencyState();
}

class _HomePageCurrencyState extends State<HomePageCurrency> {
  double result=0;
  
  @override
  Widget build(BuildContext context) {
      // ignore: unused_local_variable
      double result=0;

    final TextEditingController enteredvalue =TextEditingController();

    return  SafeArea(
    
      child: Scaffold(
        
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left:58.0,top:30),
          child: Text("Currency Converter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        )
        ),
    body:  Column(
      children: [
        Text("Ind $result",style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      Padding(
        padding:const EdgeInsets.only(top:278.0,left:20,right:20),
        child: TextField(
          
          controller: enteredvalue,
          decoration: InputDecoration(
            prefixIcon:Icon(Icons.monetization_on_outlined),
            hintText: "Enter the value",
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 77, 75, 75),
                width: 30,

              )
            ),
             filled: true, // Set filled property to true
                                
                        fillColor: Color.fromARGB(255, 133, 125, 125),
          ),
        ),
      ),
     const SizedBox(height: 20,),
      MaterialButton(
        minWidth: 150,
        height: 40,
        visualDensity: VisualDensity.standard,
        // ignore: prefer_const_constructors, sort_child_properties_last
        onPressed: (){
          result= double. parse(enteredvalue.text)*81;
          setState(() {
            
          });
        }, child:Text("Convert",style: TextStyle(fontSize: 20),
        
      ),
      color: Colors.lightGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        
      ),
       )
      ],
    ),
    
    
      ),
    );
  }
}