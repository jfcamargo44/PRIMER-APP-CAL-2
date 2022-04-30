import 'package:flutter/material.dart';

class Calculadora2 extends StatefulWidget {

  
  const Calculadora2({Key? key}) : super(key: key);

  @override
  State<Calculadora2> createState() => _Calculadora2State();
}

class _Calculadora2State extends State<Calculadora2> {

int counter = 0;

String cadena = '';
String cadena2 = '';
String tecla ='';
String operador = '';
double resultado = 0 ;
bool op = false; 

double var1 = 0;
double var2 = 0;



  @override
  Widget build(BuildContext context) {

    
    TextStyle numPad = const  TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300  );
      
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        title: RichText( 
          text:   const TextSpan(
            text: 'Cal',
            style:  TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400 ), 
            children: <TextSpan>[
              TextSpan(text: ' .',
              style: TextStyle( color: Color(0xFFFF3E39), fontSize: 20, fontWeight: FontWeight.w600 ),
              )
            ] 
            )
            ), 
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 3,

      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column( 
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: <Widget>[
              const SizedBox(height: 90),
              RichText(
                text:  TextSpan(
                  text: cadena,  style:  TextStyle( color: Colors.grey.shade400, fontSize: 20, fontWeight: FontWeight.w400 ),
                  children: <TextSpan> [
                    TextSpan(text: ' $operador ',  style: const TextStyle( color: Color(0xFFFF3E39), fontSize: 20, fontWeight: FontWeight.w400 ),),
                     TextSpan(text: cadena2, style: TextStyle( color: Colors.grey.shade400, fontSize: 20, fontWeight: FontWeight.w400 ),),
                      
                  ]
                )
                ),
              Text('$resultado',  style: const TextStyle( color: Colors.white, fontSize: 60, fontWeight: FontWeight.w600 ),),
          
          
              ],
           ),

            const SizedBox(width: 45),

        ],
      ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:  Padding( 
          padding: const EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //nada 1 
                  const FloatingActionButton( onPressed: null, 
                  backgroundColor: Colors.black,
                  elevation: 0,

                   ),

                  //nada 2 
                  const FloatingActionButton( onPressed: null, 
                  backgroundColor: Colors.black,
                  elevation: 0,
                  
                   ),

                  
                  //button clean
                   FloatingActionButton(  
                  child: const  Text( 'C', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 20, fontWeight: FontWeight.w600  ),),
                     backgroundColor: const Color(0xFF343434),
                       onPressed: () {

                              cadena =  '0';
                              cadena2 = '0' ;
                              operador = '';
                              resultado = 0 ;
                              op = false ; 
                              setState(() {});

                    }
                    
                  ),

                  //button +
                  FloatingActionButton(
                      backgroundColor: const Color(0xFF343434),
                    child: const Text( '+', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 20, fontWeight: FontWeight.w600  ),),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = '+' ;
                      op = true;

                      setState(() {});

                    }
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button 7 
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '7', style: numPad,),
                    onPressed: () {
                      tecla = '7';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;}
                       
                      setState(() {});
                    }
                    
                  ),

                  //button 8
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '8', style: numPad,),
                    onPressed: () {
                      tecla = '8';
                     if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                    
                  ),

                  
                  //button 9
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '9', style: numPad,),
                    onPressed: () {
                      tecla = '9';
                     if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                    
                  ),

                  //button -
                  FloatingActionButton(
                     backgroundColor: const Color(0xFF343434),
                     child:  const Text( '-', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 20, fontWeight: FontWeight.w600  ),),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = '-' ;
                      op = true;
                      setState(() {});

                    }
                   
                  ),
                ],
              ),

                const SizedBox(height: 10),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button 4 
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '4', style: numPad,),
                    onPressed: () {
                      tecla = '4';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});
                    }
                  ),

                  //button 5
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                   child: Text( '5', style: numPad,),
                    onPressed: () {
                      tecla = '5';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});  
                    }
                  ),

                  
                  //button 6
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '6', style: numPad,),
                    onPressed: () {
                      tecla = '6';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),

                  //button x
                  FloatingActionButton(
                     backgroundColor: const Color(0xFF343434),
                     child: const Text( 'x', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 20, fontWeight: FontWeight.w600  ),),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = 'x' ;
                      op = true;
                      setState(() {});

                    }
                   
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button 3 
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '3', style: numPad,),
                    onPressed: () {
                      tecla = '3';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});
                    }
                    
                  ),

                  //button 2
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '2', style: numPad,),
                    onPressed: () {
                      tecla = '2';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                    
                  ),

                  
                  //button 1
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '1', style: numPad,),
                    onPressed: () {
                      tecla = '1';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;}
                      setState(() {});

                    }
                  ),

                  //button /
                  FloatingActionButton(
                    backgroundColor: const Color(0xFF343434),
                    child: const Text( '/', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 20, fontWeight: FontWeight.w600  ),),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = '/' ;
                      op = true;
                      setState(() {});

                    }
                    
                  ),
                ],
              ),

                const SizedBox(height: 10),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button 00 
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: const Text( '00', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 16, fontWeight: FontWeight.w400  ),),
                    onPressed: () {
                      tecla = '00';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                    
                  ),

                  //button 0
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '0', style: numPad,),
                    onPressed: () {
                      tecla = '0';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                    
                  ),

                  
                  //button .
                  FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: Text( '.', style: numPad,),
                    onPressed: () {
                      tecla = '.';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                    
                  ),

                  //button =
                  FloatingActionButton(
                    child: const Text( '=', style: TextStyle( color:Color(0xFFFFFFFF) , fontSize: 20, fontWeight: FontWeight.w600  ),),
                    backgroundColor: const Color(0xFFFF3E39),
                    onPressed: () {
                      var2 = double.parse(cadena2);
                      if ( operador == '+')
                          { resultado = var1 + var2; }
                      else { if (operador == '-')
                          { resultado = var1 - var2; }
                      else { if ( operador == 'x' )
                          { resultado = var1 * var2; }
                      else{ if ( operador == '/' )
                          {resultado = var1 / var2; }}}}

                        setState(() {});
                            
                            tecla ='';
                            
                            
                            op = false; 

                    }
                  ),
                ],
              ),
              ],
          ),
        ),
    );
  }
}