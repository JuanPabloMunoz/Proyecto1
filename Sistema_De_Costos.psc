//Sitema de Costos v1.1
Funcion procesado<- ValidaNumero(text1)// esta función no permite que ingresen caractaeres con expeción del punto y el signo menos.
	Definir numTex Como Caracter;
	Definir largoTex Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir compara Como Caracter;
	Definir auxTex Como Caracter;;
	Definir filtrado Como Caracter;
	Definir logic1 Como Logico;
	Definir procesado Como Real;
	
	
	filtrado<-"";
	procesado<-0;
	j<-0;
	logic1<-Verdadero;
	
	Repetir
		
		Escribir text1;
		Leer numTex;
		largoTex<- Longitud(numTex);
		
		Para i<-1 Hasta largoTex Con Paso 1 Hacer
			auxTex<- Subcadena(numTex,j,j);
			
			si auxTex<>"0" y auxTex<>"1" y auxTex<>"2" y auxTex<>"3" y auxTex<>"4" y auxTex<>"5" y auxTex<>"6" y auxTex<>"7" y auxTex<>"8" y auxTex<>"9" y auxTex<>"." y auxTex<>"-" Entonces
				logic1<- Verdadero;
				Limpiar Pantalla;
				Escribir "Has ingresado una letra o caracter!!!";
				
			SiNo
				filtrado<- filtrado + Subcadena(numTex,j,j);
				logic1<- Falso;
				j<- j+1;
			FinSi
			
			
		FinPara
		
	Hasta Que logic1 = Falso 
	
	procesado<- ConvertirANumero(filtrado);
FinFuncion





Funcion procesado<- ValidaProducto(text1)// esta función valida numeros y refresca menú productos.
	Definir largoTex Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir compara Como Caracter;
	Definir auxTex Como Caracter;;
	Definir filtrado Como Caracter;
	Definir logic1 Como Logico;
	Definir procesado Como Real;
	Definir numTex Como Caracter;
	filtrado<-"";
	procesado<-0;
	j<-0;
	
	
	Repetir
		
		Escribir text1;
		Leer numTex;
		largoTex<- Longitud(numTex);
		
		Para i<-1 Hasta largoTex Con Paso 1 Hacer
			auxTex<- Subcadena(numTex,j,j);
			
			si auxTex<>"0" y auxTex<>"1" y auxTex<>"2" y auxTex<>"3" y auxTex<>"4" y auxTex<>"5" y auxTex<>"6" y auxTex<>"7" y auxTex<>"8" y auxTex<>"9" y auxTex<>"." y auxTex<>"-" Entonces
				logic1<- Verdadero;
				Limpiar Pantalla;
				Escribir "Has ingresado una letra o caracter!!!";
				Escribir "Seleccione un número (1,2,3 o 4): ";
				Escribir "";
				Escribir "1 Zapato Escolar";
				Escribir "2 Zapato Deportivo";
				Escribir "3 Botas Mujer";
				Escribir "4 Pantuflas Mujer";
				
			SiNo
				filtrado<- filtrado + Subcadena(numTex,j,j);
				logic1<- Falso;
				j<- j+1;
			FinSi
			
			
		FinPara
		
	Hasta Que logic1 = Falso
	
	procesado<- ConvertirANumero(filtrado);
FinFuncion




Algoritmo Sistema_De_Costos
	
//Falto validar que no ingresaran más de dos puntos, ni más de dos signos menos.
//espero poder implementar dicha mejora prontamente.
	
	
	//registra el nombre del producto.
	Definir nomPro Como Caracter;
	Definir arreglo Como Caracter;
	Definir f Como Entero;;
	Definir c Como Entero;
	Dimension arreglo[2,2];
	
	Escribir "Seleccione el prducto: ";
	Escribir "";
	
	arreglo[0,0]<- "1 Zapato Escolar";
	arreglo[0,1]<- "2 Zapato Deportivo";
	arreglo[1,0]<- "3 Botas Mujer";
	arreglo[1,1]<- "4 Pantuflas Mujer";
	
	Para f<- 0 Hasta 1 Hacer
		Para c<- 0 Hasta 1 Hacer
			Escribir arreglo[f,c];
		FinPara
	FinPara
	
	Definir producto Como Entero;
	Definir text1 Como Caracter;
	text1<-"";
	
	Escribir "Ingrese el  número de producto";
	producto<- ValidaProducto(text1);
	
	
	
	Repetir
	  
		si producto < 1 o producto > 4 Entonces
			Limpiar Pantalla;
			Escribir "Usted seleciono un número fuera del rango!!!";
			Escribir "Seleccione un número (1,2,3 o 4): ";
			Escribir "";
			
			Para f<- 0 Hasta 1 Hacer
				Para c<- 0 Hasta 1 Hacer
					Escribir arreglo[f,c];
				FinPara
			FinPara
			
			producto<-ValidaProducto(text1);
		
		FinSi
		
		
		
		
		
		Segun  producto Hacer
		1:  Limpiar Pantalla;
			Escribir "Usted eligio Zapato Escolar.";
			nomPro<- arreglo[0,0];
			Escribir "";
			Escribir "Presione una tecla para continuar...";
			Esperar Tecla;
			
		2:  Limpiar Pantalla;
			Escribir "Usted eligio Zapato Deportivos.";
			nomPro<- arreglo[0,1];
			Escribir "";
			Escribir "Presione una tecla para continuar...";
			Esperar Tecla;
		3:  
			Limpiar Pantalla;
			Escribir "Usted eligio Botas Mujer.";
			nomPro<- arreglo[1,0];
			Escribir "";
			Escribir "Presione una tecla para continuar...";
			Esperar Tecla;
			
		4:  Limpiar Pantalla;
			Escribir "Usted eligio Pantuflas Mujer.";
			nomPro<- arreglo[1,1];
			Escribir "";
			Escribir "Presione una tecla para continuar...";
			Esperar Tecla;
			
		De Otro Modo:
			Escribir "El producto seleccionado no existe";
				
		FinSegun
		
		
	Mientras Que producto<1 o producto>4
	
	
	
	//Registra el precio del producto.
	Definir valPro Como Real;
	Limpiar Pantalla;
	
	text1<- "Por favor, ingrese el precio del producto: ";
	valPro<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. 
	
	si valPro < 1 Entonces
		Repetir
			Limpiar Pantalla;
			Escribir "EL PRECIO DEBE SER MAYOR QUE CERO!!!";
			Escribir "------------------------------------";
			Escribir "";
			Escribir "PULSE CUALQUIER TECLA PARA CONTINUAR...";
			Esperar Tecla;
			Limpiar Pantalla;
			valPro<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. ;
	    Mientras Que valPro <=0 // valido que el precio sea mayor que 0, de lo contrario el producto no tendria valor asociado.
    FinSi
	


	//Evalúa si existe cupón de descuento, para realizar descuento.
	Definir opDescuento Como Entero;
	Definir  auxCupon Como Real;
	auxCupon<-0;
	opDescuento<- 0;
	
	
	Limpiar Pantalla;	
	Escribir "      Tiene cupón de 10% descuento?";
	Escribir "--------------------------------------------";
	Escribir "Digite el número 1,en caso de tener cupón.";
	Escribir "Digite el número 2,en caso de no tener cupón.";
	Escribir "";
	text1<- "Selecione: 1 tiene cupón o 2 no tiene cupón.";
	opDescuento<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. ;
	
	
	
	si opDescuento < 1 o opDescuento > 2//Valida que solo entre el número 1 o el número 2.
		Repetir
			Limpiar Pantalla;
			Escribir "USE NUMEROS 1 Y 2 PARA ELEJIR OPCIÓN!!!";
			Escribir "---------------------------------------";
			Escribir "";
			Escribir "PULSE CUALQUIER TECLA PARA CONTINUAR...";
			Esperar Tecla;
			Limpiar Pantalla;	
			Escribir "      Tiene cupón de 10% descuento?";
			Escribir "--------------------------------------------";
			Escribir "Digite elnúmero 1,en caso de tener cupón.";
			Escribir "Digite elnúmero 2,en caso de no tener cupón.";
			opDescuento<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. ;
		Mientras Que opDescuento <1 o opDescuento >2 
	FinSi
	


	si opDescuento=1 Entonces
		Definir CUPON como Real;
		Definir desCupon Como Real;
		CUPON<- 0.10;
		desCupon<- valPro*CUPON;
		auxCupon<- valPro-desCupon;
	SiNo
		si opDescuento=2 Entonces
			auxCupon<- valPro;
		FinSi
	FinSi
	
	
	
	//Agrega impuesto al producto.
	Definir IVA Como Real;
	Definir ivaAgregado Como Real;
	Definir auxIva Como Real;
	IVA<- 1.12;
	ivaAgregado<- (auxCupon*IVA);
	
	
	//Descuento por cantidad en caso de que sean 2 o más productos.
	Definir cantPro Como Real;
	Definir auxDesCant Como Real;
	
	Limpiar Pantalla;
	Text1<- "Ingrese la cantidad de productos: ";
	cantPro<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. ;
		
	
	Repetir
		SI cantPro <= 0 Entonces
			Limpiar Pantalla;
			Escribir "CANTIDAD INGRESADA DEBE SER MAYOR QUE CERO!!!";
			Escribir "---------------------------------------------";
			Escribir "";
			Escribir "PULSE CUALQUIER TECLA PARA CONTINUAR...";
			Esperar Tecla;
			Limpiar Pantalla;	
			cantPro<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. ;
		FinSi
	Mientras Que cantPro <= 0 //Valida que el numero ingresado sea mayor que cero.

	
	// Si la cantidad de productos es igual o mayor a dos, se efectua descuento.
	si cantPro >= 2 Entonces
		Definir DESCANT Como Real;
		DESCANT<- 0.95;
		auxDesCant<- (ivaAgregado*DESCANT);
	SiNo
		si cantPro < 2 Entonces
			auxDesCant<- 0;
		FinSi
	FinSi
	
	
	//Agrega costo de envio.
	Definir ENVIO Como Real;
	Definir pesoProd Como Real;//Variable que guarda el peso(kg) del producto.
	Definir auxPeso Como Real;
	Definir auxPesoTrunc Como Real;
	Definir totEnvio como Real;
	ENVIO<- 10;// Constante $10, independiente del destino.
	
	Limpiar Pantalla;
	text1<- "Ingrese peso(kg) del producto: ";
	pesoProd<- ValidaNumero(text1);// llamo a la función ValidaNumero y le paso text1. ;
	
	
	Repetir
		si pesoProd <= 0 Entonces
			Limpiar Pantalla;
			Escribir "EL PESO INGRESADO DEBE SER MAYOR QUE CERO!!!";
			Escribir "--------------------------------------------";
			Escribir "";
			Escribir "PULSE CUALQUIER TECLA PARA CONTINUAR...";
			Esperar Tecla;
			Limpiar Pantalla;
			Escribir "Ingrese peso(kg) del producto: ";
			Leer pesoProd;
		FinSi
	
	Hasta Que pesoProd > 0 //Valida que valor ingresado sea mayor que cero.
	
	si pesoProd >= 3 Entonces
		Definir VALORKILO Como Entero;
		VALORKILO<-2;//constante $2, para posteriormente multiplicar por cada 3 kilos.
		
		auxPeso<- (pesoProd/3);
		auxPesoTrunc<- trunc(auxPeso);//elimino decimales.
		totEnvio<- (auxPesoTrunc * VALORKILO+ENVIO);//Calcula precio a cobrar por envio según peso.
	SiNo
		si pesoProd < 3 Entonces
			totEnvio<- ENVIO;
		FinSi
	FinSi
	

	
	
	
	Limpiar Pantalla;
	Escribir "------------------------------------------";
	Escribir "Procuto: ",nomPro;
	Escribir "------------------------------------------";
	Escribir "Valor Neto: $",valPro;
  	Escribir "Valor después de descuento cupón: $",auxCupon;
	Escribir "Impuesto IVA (12%): $", ivaAgregado;
	Escribir "Descuento 2 o más productos: $",auxDesCant;
	Escribir "Valor envio: $",totEnvio;
	
	
	Definir totPagar como real;
	
	si auxDesCant = 0 Entonces
		auxDesCant<- ivaAgregado;
	FinSi
	totPagar<- ((auxDesCant*cantPro)+totEnvio);
	
	Escribir "------------------------------------------";
	Escribir "Total a Pagar: $",totPagar;
FinAlgoritmo
