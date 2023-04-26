 
 REPORT z_constantes_usuarioSAP

 DATA lv_numero TYPE i.

 lv_numero = 4.

 WRITE: 'El valor de la variable es: ', lv_numero.

 lv_numero = 5.

 WRITE: /'El nuevo valor de la variable es: ', lv_numero.

 CONSTANTS: lv_hora type t VALUE '184423',
            lv_nombre type string VALUE 'Stepfanie'.

 WRITE: /'La hora es: ', lv_hora ENVIRONMENT TIME FORMAT,
        /'Nombre: ', lv_nombre.