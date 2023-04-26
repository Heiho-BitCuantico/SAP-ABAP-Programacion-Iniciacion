*Cree el programa ejecutable Z_VAR_INCOMP_USUARIOSAP* y declare la
*variable CODIGO_SOCIEDAD de tipo N con una longitud de 4 y asígnele el
*valor ‘9527’. Declare otra variable llamada TARIFA de tipo P con una
*longitud de 6 y con 2 decimales y asígnele el valor ‘1489.36’. Muestre por
*pantalla las dos variables utilizando la sentencia WRITE. Asigne el desarrollo
*en su orden y paquete.

* Reemplace USUARIOSAP con el nombre de su usuario SAP.

DATA CODIGO_SOCIEDAD TYPE n LENGTH 4,
     TARIFA TYPE p LENGTH 6 DECIMALS 2.

CODIGO_SOCIEDAD = '9527'.
TARIFA = '1489.36'.

WRITE:  'Codigo Sociedad: ', CODIGO_SOCIEDAD,
        /'Tarifa: ', TARIFA.

