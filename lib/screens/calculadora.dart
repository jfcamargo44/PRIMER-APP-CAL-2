import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {

  
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

int counter = 0;

String cadena = '0';
String cadena2 = '0';
String tecla ='';
String operador = '';
double resultado = 0 ;
bool op = false; 

double var1 = 0;
double var2 = 0;



  @override
  Widget build(BuildContext context) {

    TextStyle fontSize30 =const TextStyle( fontSize: 30, ) ;
    TextStyle numPad = const  TextStyle( color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold  );
      
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title:const Text( 'Calculadora' ), 
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
              const SizedBox(height: 60),
              Text(cadena, style: fontSize30, textAlign: TextAlign.left, ),
              Text(operador, style: fontSize30,),
              Text(cadena2, style: fontSize30 ),
              Text('$resultado', style: fontSize30,),
          
          
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
                  backgroundColor: Colors.white,
                  elevation: 0,

                   ),

                  //nada 2 
                  const FloatingActionButton( onPressed: null, 
                  backgroundColor: Colors.white,
                  elevation: 0,
                  
                   ),

                  
                  //button clean
                  const FloatingActionButton( onPressed: null, 
                  backgroundColor: Colors.white,
                  elevation: 0,
                    
                  ),

                  //button erase
                  FloatingActionButton(
                     child: Text( 'C', style: numPad,),
                       onPressed: () {

                              cadena =  '0';
                              cadena2 = '0' ;
                              operador = '';
                              resultado = 0 ; 
                              setState(() {});

                    }
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button plus 
                  FloatingActionButton(
                    child: Text( '+', style: numPad,),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = '+' ;
                      op = true;

                      setState(() {});

                    }
                    
                  ),

                  //button 7
                  FloatingActionButton(
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
                    child: Text( '9', style: numPad,),
                    onPressed: () {
                      tecla = '9';
                     if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),
                ],
              ),

                const SizedBox(height: 10),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button minus 
                  FloatingActionButton(
                    child: Text( '-', style: numPad,),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = '-' ;
                      op = true;
                      setState(() {});

                    }
                  ),

                  //button 4
                  FloatingActionButton(
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
                   child: Text( '6', style: numPad,),
                    onPressed: () {
                      tecla = '6';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button x 
                  FloatingActionButton(
                    child: Text( 'x', style: numPad,),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = 'x' ;
                      op = true;
                      setState(() {});

                    }
                  ),

                  //button 1
                  FloatingActionButton(
                    child: Text( '1', style: numPad,),
                    onPressed: () {
                      tecla = '1';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;}
                      setState(() {});

                    }
                  ),

                  
                  //button 2
                  FloatingActionButton(
                    child: Text( '2', style: numPad,),
                    onPressed: () {
                      tecla = '2';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),

                  //button 3
                  FloatingActionButton(
                    child: Text( '3', style: numPad,),
                    onPressed: () {
                      tecla = '3';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),
                ],
              ),

                const SizedBox(height: 10),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //button / 
                  FloatingActionButton(
                    child: Text( '/', style: numPad,),
                    onPressed: () {
                      var1 = double.parse(cadena);
                      operador = '/' ;
                      op = true;
                      setState(() {});

                    }
                  ),

                  //button .
                  FloatingActionButton(
                    child: Text( '.', style: numPad,),
                    onPressed: () {
                      tecla = '.';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),

                  
                  //button 0
                  FloatingActionButton(
                    child: Text( '0', style: numPad,),
                    onPressed: () {
                      tecla = '0';
                      if ( op == false )
                      { cadena = cadena + tecla; }
                      else{ cadena2 = cadena2 + tecla ;} 
                      setState(() {});

                    }
                  ),

                  //button =
                  FloatingActionButton(
                    child: Text( '=', style: numPad,),
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