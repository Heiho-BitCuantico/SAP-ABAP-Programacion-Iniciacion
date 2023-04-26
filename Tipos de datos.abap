*Tipos de Datos: 
*   Los tipos de datos se dividen en dos grupos

*   -Tipos completos: variables con longitud fija por SAP.

*   Las variables de tipo fecha se asignan con "D" y tiene una longitud fija de 8 digitos con formato AAAAMMDD.
    DATA fecha type d.
    fecha = '20230520'.
    WRITE fecha.

*   Las variables de tipo hora se asigna con "T" y tiene una longitud fija de 6 digitos con formato HHMMSS.
*   Las variables de tipo entero se asigna con "I" y tiene una longitud fija de 4 bytes. 
*   Las variables de tipo numero de punto flotante se asigna con "F" y tiene una longitud fija de 8 bytes.
*   Las variables de tipo decimal de punto flotante se asiga con "DECFLOAT16" y tiene longitud fija de 8 bytes.
*   Las variables de tipo decimal de punto flotante se asigna con "DEFLOAT34" y tiene longitud fija de 16 bytes.
*   Las variables de tipo cadena de caracteres se asigna con "STRING" y tiene una longitud dinamica que el sistema
* agrega en tiempo de ejecucion.
*   Las variables de tipo bytes o hexadecimales se asigna con "XSTRING" y tiene una longitud dinamica que el sistema
* agrega en tiempo de ejecucion.


*   -Tipos incompletos: variables de longitud fijada por el programador.

*   Las variables de tipo cadena de caracteres se asigna con "C".
    DATA cadena TYPE c LENGTH 4.

    cadena = 'Hola'.
    WRITE cadena.

*   Las variables de tipo cadena de números se asigna con "N".
*   Las variables de tipo bytes se asigna con "X".
*   Las variables de tipo números empaquetados se asigna con "P" (Cant-enteros.Cant-decimales).
    DATA numero TYPE p LENGTH 10 DECIMALS 2.

    numero = '45.10'.

    WRITE numero.