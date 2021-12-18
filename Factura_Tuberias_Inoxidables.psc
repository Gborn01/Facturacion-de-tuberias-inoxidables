Algoritmo Factura_Tuberias_Inoxidables
	
	//PRE= Precio, TUB01= TUBO REDONDO INOX 1 Pulgada, TUB02= TUBO REDONDO INOX 2 Pulgadas, TUB03= TUBO REDONDO INOX 4 Pulgadas, DES= Descuento
	//CD= Costo Descuento, SUM= Suma
	
	//Variables
	Definir Vendedor Como Caracter
	Definir Nombre  COMO CADENA;
	Definir PRE Como Caracter;
	Definir Codigo Como Caracter
	Definir PT1, PT2, PT4, TUB01, TUB02, TUB04, RT1, RT2, RT4 Como real;
	Definir AN, JP, JR Como Texto
	Definir Op Como Real
	Definir SUM Como Real
	Definir DES Como Real
	Definir CD Como Real
	
	//Otras variables
	PT1<-253.57;
	PT2<-619.64;
	PT4<-1592.86;
	
	//Inicio del Proceso 
	Escribir 'Digite su codigo de vendedor.';
	Leer Vendedor;
	Op<-0;
	
	Mientras Op=0 Hacer
		Escribir'Ingrese nombre del cliente.';
		Leer Nombre;
		Escribir 'Ingrese codigo de producto'
		Leer Codigo
		Escribir'Ingrese cantidad de TUBO REDONDO INOX 1 Pulgada en pies.';
		Leer TUB01;
		RT1<-PT1*TUB01;
		Escribir'Ingrese cantidad de TUBO REDONDO INOX 2 Pulgadas en pies';
		Leer TUB02;
		RT2<-PT2*TUB02;
		Escribir 'Ingrese cantidad de TUBO REDONDO INOX 3 Pulgadas en pies';
		Leer TUB04;
		RT4<-PT4*TUB04;
		
		Limpiar Pantalla;
		
		Escribir ' ';
		Escribir '                                                 ';
		Escribir '-------------------------------------------------';
		Escribir '                FACTURA DE CONSUMO';
		Escribir '-------------------------------------------------';
		Escribir 'DESCRIPCION                        CTD. EN FT.      VALORxUNID.';
		Escribir ' ';
		SI TUB01>0 Entonces
			Escribir 'TUBO REDONDO INOX 1 Pulgada          ', TUB01, '             ', PT1;
		SiNo
			Escribir " "
		FinSi
		SI TUB02>0 Entonces
			Escribir 'TUBO REDONDO INOX 2 Pulgadas         ', TUB02, '             ', PT2;
		SiNo
			Escribir " "
		FinSi
		SI TUB04>0 Entonces
			Escribir 'TUBO REDONDO INOX 4 Pulgadas         ', TUB04, '             ', PT4;
		SiNo
			Escribir " "
		FinSi
		Escribir '                                    -----------';
		
		SUM<-RT1+RT2+RT4;
		
		Si SUM>=20000 Entonces
			DES<-(SUM*0.10);
			Escribir 'Valor total de la compra:             ', SUM;
			Escribir ' ';
			Escribir 'Descuento:                            ', DES;
			CD<-(SUM-DES);
			Escribir 'TOTAL A PAGAR:                        ', CD;
		SiNo
			DES<-(0);
			Escribir 'Valor total de la compra:             ', SUM;
			Escribir ' ';
			Escribir 'Descuento:                            ', DES;
			CD<-(SUM-DES);
			Escribir 'TOTAL A PAGAR:                        ', CD;
		Fin Si
		
		Escribir ' ';
		Escribir 'Le atendio: ', Vendedor;
		Escribir ' ';
		Escribir 'Cliente: ', Nombre;
		Escribir ' ';
		Escribir '         ~~~~~~~~~~~~~~~~~~~~~~~~~~~         ';
		Escribir '          ¡¡GRACIAS POR SU COMPRA!!          ';
		Escribir '         ~~~~~~~~~~~~~~~~~~~~~~~~~~~         ';
		Escribir '==================================================';
		Escribir ' ';
		Escribir ' ';
		Op<-1;
		Escribir 'Digita (0) para volver a facturar.';
		Leer Op;
		Limpiar Pantalla;
	Fin Mientras
	
	
FinAlgoritmo
