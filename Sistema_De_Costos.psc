Algoritmo Sistema_De_Costos
	
//Falto validar que no ingresaran caracteres en las variables númericas, 
//espero poder implementar dicha mejora prontamente.
	
	
	//registra el nombre del producto.
	Escribir "Ingrese el nombre del prducto: ";
	Definir nomPro Como Caracter;
	Leer nomPro;
	
	
	//Registra el precio del producto.
	Definir valPro Como Real;
	
	Repetir
	Limpiar Pantalla;
	Escribir "Ingrese el precio del producto: ";
	Leer valPro;
	Mientras Que valPro <=0 // valido que el precio sea mayor que 0;



	//Evalúa si existe cupón de descuento, para realizar descuento.
	Definir opDescuento Como Entero;
	Definir  auxCupon Como Real;
	auxCupon<-0;
	opDescuento<- 0;
	
	repetir
	Limpiar Pantalla;	
	Escribir "Tiene cupón de 10% descuento?";
	Escribir "1 SI";
	Escribir "2 No";
	Leer opDescuento;	
    Mientras Que opDescuento <1 o opDescuento >2 //Valida que solo entre el número 1 o el número 2.


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
		
	
	Repetir
	Limpiar Pantalla;
	Escribir "Ingrese Cantidad de productos: ";
	Leer cantPro;
	Mientras Que cantPro <= 0 //Valida que el numero ingresado sea mayor que cero.

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
	
	Repetir
	Limpiar Pantalla;
	Escribir "Ingrese peso(kg) del producto: ";
	Leer pesoProd;
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
