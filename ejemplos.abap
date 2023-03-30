*aqui hare ejemplos de cada cosa de abap


*Comentarios

*&---------------------------------------------------------------------*
*& Report  ZPRUEBA_COMENTARIOS
*&
*&---------------------------------------------------------------------*
*&
*& Este es un comentario de varias líneas en ABAP.
*& Puede contener varias líneas de texto.
*&
*&---------------------------------------------------------------------*
REPORT zprueba_comentarios.



*Variables

*En ABAP, además de LV_, hay otros prefijos de nomenclatura comunes que se utilizan para indicar el uso
* y tipo de una variable. Algunos de ellos son:

*GV_: se utiliza para indicar que la variable es una variable global y su alcance es en todo el programa
* o en varios programas.
*RV_: se utiliza para indicar que la variable es una variable de referencia y almacena una referencia a
* una posición de memoria.
*CV_: se utiliza para indicar que la variable es una constante y su valor no cambia durante la ejecución del programa.
*IV_: se utiliza para indicar que la variable es un parámetro de entrada de una subrutina o función.
*EV_: se utiliza para indicar que la variable es un parámetro de salida de una subrutina o función.

*También existen otros prefijos que pueden indicar el tipo de datos de la variable, como S_ para cadenas (strings) y T_ para tipos de tiempo (times). Es importante mencionar que estos prefijos son convenciones de nomenclatura y no son obligatorios, pero se utilizan comúnmente para facilitar la comprensión del código y hacerlo más legible.

DATA: <nombre_variable>  [TYPE <tipo_dato>] [LENGTH <longitud>] [INITIAL VALUE <valor_inicial>].

*&
*& Donde:

*&    <nombre_variable> es el nombre que se le asigna a la variable.
*&    <tipo_dato> es el tipo de dato que se desea asignar a la variable. Es opcional, ya que si no se especifica, ABAP intentará determinar el tipo de datos automáticamente.
*&    <longitud> es la longitud que se le asigna a la variable. Es opcional, ya que solo es necesario en algunos casos específicos (por ejemplo, para definir variables de tipo cadena de caracteres).
*&    <valor_inicial> es el valor inicial que se le asigna a la variable. Es opcional y solo se utiliza en el momento de la definición.

*& A continuación, te muestro algunos ejemplos de cómo definir variables en ABAP



DATA lv_nombre TYPE string.
En este ejemplo, se define la variable lv_nombre de tipo cadena de caracteres (string).

DATA:   lv_edad TYPE i LENGTH 2,
        lv_nombre TYPE string VALUE 'Juan'.

*&        En este ejemplo, se definen dos variables: lv_edad, de tipo entero (i) y longitud 2, 
*&       y lv_nombre, de tipo cadena de caracteres (string) y valor inicial "Juan".

*En ABAP, existen varios tipos de datos numéricos, algunos de ellos son:

*i o int4: representa números enteros de 4 bytes.
*f o float: representa números decimales de precisión simple (4 bytes).
*p o decimal: representa valores numéricos decimales con una precisión fija y longitud definida.
*x o int2: representa números enteros de 2 bytes.

*A continuación, te muestro un ejemplo de cómo declarar y utilizar variables de estos tipos de datos en ABAP:

DATA:   lv_entero TYPE i,
        lv_decimal TYPE f,
        lv_precio TYPE p LENGTH 5 DECIMALS 2,
        lv_short TYPE x.

lv_entero = 100.
lv_decimal = 3.14.
lv_precio = '99.99'.
lv_short = 'FF'.

WRITE:  / 'Valor entero: ', lv_entero,
        / 'Valor decimal: ', lv_decimal,
        / 'Precio: ', lv_precio,
        / 'Valor corto: ', lv_short.

*En este ejemplo, se declaran cuatro variables: lv_entero de tipo i, lv_decimal de tipo f,
* lv_precio de tipo p y lv_short de tipo x. Luego, se les asignan valores y se imprimen usando la sentencia WRITE.
* La variable lv_precio tiene una longitud de 5 caracteres y una precisión de 2 decimales,
* lo que significa que puede almacenar valores como "99.99", "1.23" o "10.00".        



*En programación, los tipos de datos lógicos son aquellos que representan valores de verdad o booleanos,
* es decir, valores que pueden ser verdaderos o falsos. En general, se utilizan para realizar
* operaciones de comparación y control de flujo en programas.

*En ABAP, el tipo de dato lógico se representa mediante la palabra clave ABAP_BOOL.
* Este tipo de dato tiene dos valores posibles: ABAP_TRUE y ABAP_FALSE,
* que representan los valores booleanos verdadero y falso, respectivamente.

*Aquí te muestro un ejemplo de cómo se declara y utiliza una variable de tipo lógico en ABAP:

DATA:   lv_verdadero TYPE ABAP_BOOL,
        lv_falso TYPE ABAP_BOOL.

lv_verdadero = ABAP_TRUE.
lv_falso = ABAP_FALSE.

IF lv_verdadero = ABAP_TRUE.
    WRITE: / 'La variable es verdadera'.
ENDIF.

IF lv_falso = ABAP_FALSE.
    WRITE: / 'La variable es falsa'.
ENDIF.

*En este ejemplo, se declaran dos variables de tipo ABAP_BOOL: lv_verdadero y lv_falso.
* Se les asignan los valores verdadero y falso, respectivamente. Luego, se utiliza la sentencia IF
* para comprobar si cada variable es verdadera o falsa y se muestra un mensaje en la pantalla en consecuencia.

*Es importante tener en cuenta que en ABAP también se pueden utilizar otros tipos de datos,
* como los tipos de datos numéricos o de caracteres, para representar valores lógicos,
* pero el tipo de datos ABAP_BOOL es el más adecuado para este propósito y proporciona una mayor claridad en el código.



*En ABAP, una variable de tiempo se declara con el tipo de datos T y
* se puede inicializar con la hora actual utilizando la función SY-UZEIT. Por ejemplo:

Data: lv_hora TYPE t.

lv_hora = SY-UZEIT.

WRITE:  / 'La hora actual es: ', lv_hora.


*En este ejemplo, se declara una variable llamada lv_hora de tipo T, que almacenará una hora en
* formato de 24 horas con precisión de segundos. Luego, se utiliza la función SY-UZEIT para
* inicializar la variable con la hora actual del sistema. Finalmente,
* se utiliza la sentencia WRITE para mostrar la hora almacenada en la variable lv_hora.

*Cabe destacar que el tipo de datos T también admite operaciones matemáticas, como la suma y la resta de horas,
* y se puede formatear para mostrar la hora en diferentes formatos utilizando la función CONVERT_TIME_FORMAT.

*La función CONVERT_TIME_FORMAT se utiliza en ABAP para convertir una hora de un formato a otro. A continuación,
* te muestro algunos ejemplos de cómo se puede utilizar esta función:

DATA: lv_hora TYPE t.

lv_hora = SY-UZEIT.

WRITE:  / 'La hora actual en formato HH:MM:SS es: ', CONVERT_TIME_FORMAT( lv_hora, TIME_FORMAT  = 'HH:MM:SS' ),
        / 'La hora actual en formato AM/PM es: ', CONVERT_TIME_FORMAT( lv_hora, TIME_FORMAT = 'HH:MM AM/PM' ),
        
*En este ejemplo, se utiliza la función CONVERT_TIME_FORMAT para mostrar la hora actual en diferentes formatos.
* La variable lv_hora se inicializa con la hora actual utilizando la función SY-UZEIT. Luego,
* se utiliza la función CONVERT_TIME_FORMAT para convertir la hora en diferentes formatos.

*En el primer WRITE, se muestra la hora en formato HH:MM:SS. En el segundo WRITE,
* se muestra la hora en formato HH:MM AM/PM. En el tercer WRITE, se muestra la hora en formato HH:MM:SS P,
* que representa la hora en formato de 12 horas con la indicación de AM o PM. Finalmente, en el cuarto WRITE,
* se muestra la hora en formato HH:MM:SS, que es el formato predeterminado de la variable T.



*Fecha
*Tipo D (fecha en formato DD.MM.AAAA):

DATA: lv_fecha TYPE D.

lv_fecha = '29.03.2023'.

WRITE:  / 'La fecha es: ', lv_fecha.

*En este ejemplo se declara una variable llamada lv_fecha de tipo D y se le asigna el valor '29.03.2023'.
* Luego, se escribe en pantalla el mensaje "La fecha es" seguido del valor de la variable lv_fecha.


*Tipo F (fecha en formato AAAAMMDD):

DATA: lv_fecha TYPE F.

lv_fecha = '20230329'.

WRITE:  / 'La fecha es: ', lv_fecha.

*En este ejemplo se declara una variable llamada fecha de tipo F y se le asigna el valor '20230331'.
* Luego, se escribe en pantalla el mensaje "La fecha es" seguido del valor de la variable fecha.

*Para dar formato a una fecha en ABAP, se puede utilizar la función CONVERT_DATE_TO_LOCAL_TIME
* o CONVERT_TIME_TO_LOCAL_TIME. Estas funciones permiten convertir una fecha en un formato específico a otro formato.
* Por ejemplo:

DATA:   lv_fecha TYPE D,
        lv_fecha_str TYPE string.

lv_fecha = SY-DATUM.

CALL FUNCTION 'CONVERT_DATE_TO_LOCAL_TIME'

    EXPORTING

        DATE            =   lv_fecha
        DATE_FORMAT     =   'DD.MM.YYYY'
    IMPORTING

        LOCAL_TIME      =   lv_fecha_str.


*En este ejemplo, se convierte la fecha actual del sistema en formato DD.MM.YYYY y
* se almacena en la variable fecha_str como una cadena de caracteres.

*Tipo P (números decimales con precisión fija):

DATA: lv_precio TYPE P DECIMALS 2.

lv_precio = '10.99'.

WRITE:  / 'El precio es: ', lv_precio.

*En este ejemplo se declara una variable llamada precio de tipo P con 2 decimales y se le asigna el valor '10.99'.
* Luego, se escribe en pantalla el mensaje "El precio es" seguido del valor de la variable precio.



*Tipo X (datos en formato hexadecimal):

DATA: lv_hexadecimal TYPE X VALUE = 'ABCD'.

WRITE_  / 'El valor hexadecimal es: ', lv_hexadecimal.

*En este ejemplo se declara una variable llamada hexadecimal de tipo X y se le asigna el valor 'ABCD'.
* Luego, se escribe en pantalla el mensaje "El valor hexadecimal es" seguido del valor de la variable hexadecimal.


*Tipo I (números enteros de longitud fija):

DATA: lv_cantidad TYPE I.

lv_cantidad = '1234'.

WRITE:  / 'La cantidad es: ', lv_cantidad.

*En este ejemplo se declara una variable llamada cantidad de tipo I y se le asigna el valor 123.
* Luego, se escribe en pantalla el mensaje "La cantidad es" seguido del valor de la variable cantidad.



*WorkArea.

*En ABAP, wa_ y gt_ son prefijos utilizados para nombrar variables de ciertos tipos de datos.

*    wa_: Este prefijo se utiliza para nombrar variables de tipo "work area". 
*Una work area es una estructura de datos que se utiliza para procesar una única fila
* de datos en una tabla o vista de base de datos.

*Por ejemplo, si se tiene una tabla de empleados llamada zemployee, se podría declarar una work
* area llamada wa_zemployee para procesar una fila individual de la tabla, y una tabla llamada
* gt_zemployee para almacenar múltiples filas de datos.


TYPES:  BEGIN OF t_employee,
            employee_id     TYPE i,
            nombre          TYPE string,
            apellido        TYPE string,
            departamento    TYPE string,
        END OF t_employee.


DATA: wa_employee TYPE t_employee.

wa_employee-employee_id     = '123'.
wa_employee-nombre          = 'Juan'.
wa_employee-apellido        = 'Perez'.
wa_employee-departamento    = 'IT'.

WRITE:  / 'Id de empleado: ', wa_employee-employee_id,
        / 'Nombre: ', wa_employee-nombre,
        / 'Apellido: ', wa_employee-apellido,
        / 'departamento: ', wa_employee-departamento.

*En este ejemplo, se define una estructura de datos "t_employee" que contiene información sobre los empleados,
* como su identificación, nombre, apellido y departamento. Luego, se declara una variable "wa_employee" de tipo
* "t_employee" que se utiliza como un área de trabajo temporal para almacenar un registro completo de un empleado.

*Después de eso, se asignan valores a los campos de la variable "wa_employee" y se muestra la información en la
* pantalla utilizando la sentencia WRITE.        

*Global Table

*En ABAP, "gt_" es un prefijo que se utiliza para nombrar tablas internas, es decir, estructuras
* de datos que almacenan información en memoria durante la ejecución del programa.
* "gt_" significa "global table", lo que indica que la tabla interna se utiliza en todo el programa
* o en varias partes del mismo.

*Por ejemplo, si un programa necesita almacenar y procesar una lista de empleados, se puede crear
* una tabla interna llamada "gt_employee" que contenga la información de los empleados en memoria.
* Luego, el programa puede leer y manipular los datos de la tabla interna según sea necesario durante
* la ejecución del programa.




* Constantes

CONSTANTS <nombre_constante> TYPE <tipo_dato> VALUE <valor_constante>.

*Donde:

*    <nombre_constante> es el nombre que se le asigna a la constante.
*    <tipo_dato> es el tipo de dato que se desea asignar a la constante.
*    <valor_constante> es el valor que se le asigna a la constante.

*A continuación, te muestro algunos ejemplos de cómo definir constantes en ABAP:

CONSTANTS   c_nombre_tipo_paso TYPE string VALUE 'PASO',
            c_precio_inicial TYPE f VALUE '50.00'.

*En este ejemplo, se definen dos constantes: c_nombre_tipo_paso, de tipo cadena de caracteres (string) 
* y valor "PASO", y c_precio_inicial, de tipo decimal (f) y valor "50.00".

*Las constantes en ABAP se utilizan para representar valores que no cambiarán durante la ejecución del programa.
* Al igual que las variables, las constantes también se utilizan para almacenar valores en la memoria del programa,
* pero a diferencia de las variables, su valor no se puede cambiar una vez que se han definido.            


