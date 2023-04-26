*Cree el programa ejecutable Z_VAR_COMP_ USUARIOSAP* y declare la
*variable IVA de tipo número entero (i) y asígnele el valor ‘19’. Declare otra
*variable llamada EMPRESA de tipo cadena de caracteres dinámica (string) y
*asígnele el valor ‘LogaliSAP’. Muestre por pantalla las dos variables
*utilizando la sentencia WRITE. Asigne el desarrollo en su orden y paquete.

* Reemplace USUARIOSAP con el nombre de su usuario SAP.

DATA IVA TYPE i.
DATA EMPRESA TYPE string.

IVA = 19.
EMPRESA = 'LogaliSAP'.

WRITE:   'IVA = ', IVA,
        /'Empresa = ', EMPRESA.
