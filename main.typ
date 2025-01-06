#set text(lang: "es", region:"eu")
//#set text( font: "New Computer Modern" )
//#set text(12pt)
#set heading( numbering: "1.1")
#set page(numbering: "1 / 1")

#grid(columns: 1fr,  rows: (1fr,1fr), 
  grid.cell(align:center+horizon)[#link("https://typst.app/")[#rect(radius: 5pt,inset: 10mm,fill:rgb(66,164,182),text(90pt,fill: white)[TYPST])]], 
  
  grid.cell(align:center+horizon)[#text(30pt)[*Primeros pasos *\ #datetime.today().display()\ V1.1 \ #text(12pt)[correode.toni\@outlook.es] ]],  
)
#pagebreak()
#outline(  
  indent: auto,
  title: [Índice])<indice-general>
#pagebreak()

#set box(outset:2pt, fill:luma(220))
= Registro en Typst
Visitar la web #link("https://typst.app/")\
Se necesita un dirección de correo que luego hay que confirmar y una contraseña, no pide ningún dato más.\
#image("img/2024-12-28_21-55.png")
#line(length: 100%, stroke: 5pt)
#image("img/2024-12-28_21-58.png")
#line(length: 100%,stroke: 5pt)
#image("img/2024-12-28_21-59.png")
#line(length: 100%,stroke: 5pt)
#image("img/2024-12-28_22-01.png")
#line(length: 100%,stroke: 5pt)
#image("img/2024-12-28_22-02.png")
#line(length: 100%,stroke: 5pt)
#image("img/2024-12-28_22-10.png")
#line(length: 100%,stroke: 5pt)
#v(3mm)
Con #box(```typ #set text(lang:"es",region: "eu")```) se queda configurado para español y listo para empezar a trabajar.\
Dispone de un plan gratuito y dos planes de pago. #link("https://typst.app/pricing/")

#image("img/2024-12-29_01-43.png")
También existe la posibilidad de descargar el software para instalarlo en local en Linux, Windows, macOS... #link("https://github.com/typst/typst"). y así poder utilizar software para control de versiones.

En cuanto a editores se podría utilizar Visual Studio Code, que tiene una extensión para trabajar con Typst y permite la visualización dentro el mismo editor.
= Gestión de archivos en Typst web
Para insertar imágenes, utilizar un archivo de bibliografía, etc. es necesario subir los archivos a la aplicación web.\
Es posible crear directorios para mantener los fichero organizados, crear nuevos archivos y también subirlos utilizando la opción del menú que hay en la parte superior izquierda.\
También nos permite subir los archivos con arrastrar y soltar dentro del entorno web o con el uso de copiar y pegar. \
En el caso de las imágenes también permite pegar la que tengamos en el portapapeles dentro del contenido de nuestro texto.

= Typst vs Latex
No se trata de hacer una comparativa, pero destacarían cuatro cosas que facilitan mucho el trabajo.

- La principal ventaja es que Typst se compila a medida que se va escribiendo, esto permite ver los cambios inmediatamente sin necesidad de forzar la compilación como ocurre con Latex.

- Haciendo click en un punto en concreto de la ventana de visualización, te manda exactamente a esa zona en la ventana de edición del documento.

- Situando el cursor en un lugar de la ventana de edición del documento, te permite ir a la visualización de esa zona pulsando el botón que se encuentra en la parte de arriba.\
#image("img/2024-12-28_22-50.png")
- Permite el trabajo en equipo sobre un mismo documento sin límite de usuarios y sin necesidad de que que estén registrados en la web de la aplicación.
#image("img/2024-12-28_22-42.png")
#line(length: 100%,stroke: 5pt)
#image("img/2024-12-28_22-44.png")


= Configurar documento
Por defecto viene con la opción de A4, tamaño de fuente de 10pt, márgenes de 2,5cm. y fuente "libertinus serif".\
Todos los valores permiten ser modificados con #box(```typ #set text(). ```)\
Puede verse la ayuda en #link("https://typst.app/docs/reference/text/text/")\
Consultar también los comandos #box(```typ #page()```) y #box(```typ #par()```) para configurar página, separación de líneas, párrafos, etc...
#pagebreak()
= Formateo de texto

#table(  
  stroke: none,
  columns: (3),
  [Negrita], [#box(fill: luma(240),```*```) Texto en negrita #box(fill: luma(240),``` *```)], [*Texto en negrita* ],
  [Cursiva], [#box(fill: luma(240),``` _```) Texto en cursiva #box(fill: luma(240),``` _```)], [_Texto en cursiva_ ],
  [Subrayado], [#box(```typ #underline[Texto subrayado]```)], [#underline[Texto subrayado]],
  [Línea sobre texto], [#box(```typ #overline[Línea sobre texto]```)], [#overline[Línea sobre texto]],
  [Tachado], [#box(```typ #strike[Texto tachado]```)], [#strike[Texto tachado]],
  [Color], [#box(```typ #text(fill:red)[Texto en rojo]```)], [#text(fill: red)[Texto en rojo]],
  [Color y negrita], [#box(```typ #text(fill:blue)[*Negrita azul*]```)], [#text(fill:blue)[*Negrita azul*]],
  [Resaltado],[#box(```typ #highlight[Texto]```)],[#highlight[Texto]],
  [Resaltado verde],[#box(```typ #highlight(fill: lime)[Texto]```)],[#highlight(fill: lime)[Texto]],
  [Forzar salto de línea], table.cell(colspan: 2)[ Con la barra inclinada #text(fill: blue)[#box(```typ \```)]],
  [Cambiar de párrafo], table.cell(colspan: 2)[Dos veces enter.], 
  [Salto de página], table.cell(colspan: 2)[#box(```typ #pagebreak()```)],
)


Para comentar texto se utiliza la doble barra #box(```typ //```) \
#box(```typ // Esto es un comentario```)

Con la combinación de teclas ``` Ctrl + / ``` se pueden comentar o descomentar bloques de texto seleccionados previamente.



= Espaciado extra con ```#v()``` y ```#h()``` 
Con #box(```typ #v(valor)```) se consigue añadir espacio vertical.\
Con #box(```typ #h(valor)```) se consigue añadir espacio horizontal.\
Admiten cm, em, mm ...\
Podemos hacer que dos palabras se separen 3cm.\
#box(```typ Palabra 1 #h(3cm) Palabra 2```) \
Palabra 1 #h(3cm) Palabra 2\
Con ```typ #v()``` se consigue el mismo efecto, pero en vertical.\
#box(```typ
Palabra 1 #v(5mm) Palabra2
```)\
Palabra 1 #v(5mm) Palabra2

= Línea horizontal
La ayuda en #link("https://typst.app/docs/reference/visualize/line/")\
Dibujar una línea horizontal del ancho de página con grosor de 2pt.
#box(```typ #line(length: 100%, stroke: 2pt)```) 
#line(length: 100%, stroke: 2pt)

= Enlaces web
- #box( ```typ #link("https://typst.app/")[Typst]```)\
 - #link("https://typst.app/")[Typst]\
- #box(```typ #link("https://typst.app/")```)\
 - #link("https://typst.app/")\
En los dos casos es navegable a través del documento pdf de salida. 

= Listas
Para crear una lista se utiliza el símbolo #box(```-```)   seguido de un espacio.\
#box(```typ
- Caso 1
- Otro caso
- Siguiente caso
- Último caso
```)\

- Caso 1
- Otro caso
- Siguiente caso
- Último caso

Pueden ser anidadas tabulando los elementos de la sublista.\
#box(
```typ
- Caso 1
  - CP1
  - CP2
- Otro caso
- Siguiente caso
- Último caso
```)\

- Caso 1
  - CP1
  - CP2
- Otro caso
- Siguiente caso
- Último caso

== Listas enumeradas
Similar a las anteriores, pero se utiliza el símbolo #box(```+```) \
#box(
```typ
+ Caso 1
+ Otro caso
+ Siguiente caso
+ Último caso
```)

+ Caso 1
+ Otro caso
+ Siguiente caso
+ Último caso

Pueden ser anidadas tabulando los elementos de la sublista.\
#box(
```typ
+ Caso 1
  + CP1
  + CP2
+ Otro caso
+ Siguiente caso
+ Último caso
```)

+ Caso 1
  + CP1
  + CP2
+ Otro caso
+ Siguiente caso
+ Último caso

Si aplicamos al inicio del documento la configuración #box(```typ #set enum(full: true)```) se verían así:\
#set enum(full: true)
+ Caso 1
  + CP1
  + CP2
+ Otro caso
+ Siguiente caso
+ Último caso

== Listas de términos
Se usa #box(```typ / palabra: contenido```). Necesita los #text(fill: red)[*:*]\
#box(```typ
/ ADSL: Asynchronous Digital Suscriber Line 
/ ATM:  Asynchronous Transfer Mode 
/ BiOS: Basic Input Output System 
/ DHCP: Dynamic Host Configuration Protocol 
/ HTML: Hypertext Markup Language
/ LAN: Local Area Network
/ RAM: Random Access Memory
/ SMTP: Simple Mail Transfer Protocol 
/ WAN: Wide Area Network 
```)

/ ADSL: Asynchronous Digital Suscriber Line 
/ ATM:  Asynchronous Transfer Mode 
/ BiOS: Basic Input Output System 
/ DHCP: Dynamic Host Configuration Protocol 
/ HTML: Hypertext Markup Language
/ LAN: Local Area Network
/ RAM: Random Access Memory 
/ SMTP: Simple Mail Transfer Protocol 
/ WAN: Wide Area Network 


= Estructurar documento
Para los diferentes apartados y subapartados se utiliza el #text(fill: blue)[\=] seguido de un espacio y el texto que aparecerá como título.\
#box(```typ = Sección de nivel 1```)\
#box(```typ == Sub-Sección de nivel 2```)\
#box(```typ === Sub-Sub-Sección de nivel 3```)\

Se admiten más niveles.\
Cada "subnivel" cuelga del anterior y los cambios se reflejan de forma automática en el índice.\

= Índice de contenidos <cap:indice-de-contenido>
Los índices se crean con #box(```typ #outline()```) \
Un ejemplo de como crear un índice general sería:\ 
#box(```typ #outline(indent: auto,  title: [Índice de Contenidos]) ```)

En el ejemplo anterior se indica que haga la indentación de los subapartados y se le especifica un título.

Los índices se crean en el lugar en el que se escriba la orden y se actualizan automáticamente a medida que se cambia la estructura del documento.\


= Insertar imágenes
La ayuda en #link("https://typst.app/docs/reference/visualize/image/").\
Para insertar una imagen se utiliza el código #box(```typ #image("ruta y nombre de archivo imagen.jpg")```) y si no se le indica nada, se ajusta automáticamente al ancho de página. \
También nos da la opción de seleccionar la imagen que tengamos subida y arrastrarla a la zona del documento donde queramos insertarla creando de forma automática el código correspondiente.

 #box(```typ #image("img/img-ejemplo5.jpg")```)
#image("img/img-ejemplo5.jpg")
#v(2em)
Se pueden establecer medidas de ancho, largo, o ambos. Es posible utilizar porcentajes.

- Ejemplo de ancho con porcentaje:\
#box(```typ #image("img/img-ejemplo5.jpg",width:50%)```)

#image("img/img-ejemplo5.jpg",width:50%)
#v(1em)
- Ejemplo de alto en cm:\
#box(```typ #image("img/img-ejemplo5.jpg",width:8cm)```)
#image("img/img-ejemplo5.jpg",height:8cm)
#v(1em)

Si se quiere que aparezca con un texto en el pie de la imagen se utiliza #box(```typ #figure()```)

#box(```typ
#figure(
  caption: [Bola sujetada por dos dedos],
  image("img/img-ejemplo3.jpg", width:75%),  
)<fig:bola-2dedos>
```)

#figure(
  caption: [Bola sujetada por dos dedos],
  image("img/img-ejemplo3.jpg", width:75%),  
)<fig:bola-2dedos>

#v(1em)
Se puede apreciar que lo escrito en caption:[...], es el texto que aparece en el pie de la foto y que sale centrada por defecto.\
También se ha añadido una etiqueta para poder referenciar la imagen desde cualquier lugar del documento. En este caso se ha utilizado como etiqueta #box(```typ <fig:bola-2dedos>```).

Las imágenes que se insertan usando #box(```typ #figure()```) aparecerán en el índice de figuras del documento (ver @sec-crear-indices).

== Referenciar una imagen <referenciar-imagen>
El tema de referenciar objetos en el documento se trata más adelante en la @sec-crear-referencias.\
Para referenciar una imagen dentro de un texto se utiliza el símbolo #box(``` @```) seguido de una etiqueta que ya se haya creado #box(```typ @fig:bola-2dedos```).

Ejemplo de referencia a una imagen anterior:\
#box( [Como puede verse en: ```typ @fig:bola-2dedos```]).\
Como puede verse en: @fig:bola-2dedos.\



= Tablas
#link("https://typst.app/docs/reference/model/table/")

Hay muchas opciones para la creación y formateo de tablas por lo que es recomendable leer la documentación. 

Una tabla sencilla:\
#box(
```typ
#table(
  columns: 3,  
  [*Producto*],  [*Cantidad*],  [*Precio*],  
  [Arroz], [1002],[3,50€],
  [Alcachofas en conserva], [207], [2,96€],
  [Sal para lavavajillas], table.cell(colspan: 2)[Sin existencias],
)
```)
#table(
  columns: 3,  
  [*Producto*],
  [*Cantidad*],
  [*Precio*],  
  [Arroz],
  [1002], [3,50€],
  [Alcachofas en conserva],
  [207], [2,96€],
  [Sal para lavavajillas],
  table.cell(colspan: 2)[Sin existencias],
)

Mismos datos, cambiando la presentación:
#box(```typ
#table(
  stroke: none,
  columns: (3),
  [*Producto*], table.vline(),  [*Cantidad*], [*Precio*], 
  table.hline(),
  [Arroz], [1002],[3,50€],
  [Alcachofas en conserva], [207], [2,96€],
  [Sal para lavavajillas], table.cell(align: center,colspan: 2,fill: red.transparentize(70%))[Sin existencias],
  
)
```)

#table(
  stroke: none,
  columns: (3),
  [*Producto*], table.vline(),  [*Cantidad*], [*Precio*], 
  table.hline(),
  [Arroz], [1002],[3,50€],
  [Alcachofas en conserva], [207], [2,96€],
  [Sal para lavavajillas], table.cell(align: center,colspan: 2,fill: red.transparentize(70%))[Sin existencias],
  
)

== Tabla desde archivo csv
Con el siguiente código podemos convertir los datos de un fichero .csv en un tabla.\
La mayoría de  aplicaciones ofimáticas tienen la opción de exportar las tablas a formato csv y Typst permite importar los datos de un archivo .csv y transformarlo en una tabla.

Por ejemplo, si nuestro archivo `liga-es-1.csv` tiene este contenido:
#image("img/imagen-csv.png")

#box(
```typ
#table(
  //stroke: none,
  columns: 5,  
  ..csv("liga-es-1.csv").flatten(),
)
```)
#pagebreak()
Crea la siguiente tabla:

#table(  
  columns: 5,  
  ..csv("liga-es-1.csv").flatten(),
)

Al igual que ocurre con las imágenes, una tabla se puede englobar dentro de #box(```typ #figure()```) lo que nos permite:\
- Crear un texto de pie de tabla con caption[Texto].
- La posibilidad de tener un índice de tablas en el documento (ver @sec-crear-indices).
- Añadir una etiqueta para poder referenciar la tabla posteriormente desde cualquier parte del documento (ver @sec-crear-referencias).
#box(
```typ
#figure(
  caption: [Ejemplo de tabla para el listado],
  table(
  columns: 3,  
  [*Producto*],
  [*Cantidad*],
  [*Precio*],  
  [Arroz],
  [1002], [3,50€],
  [Alcachofas en conserva],
  [207], [2,96€],
  [Sal lavavajillas],
  table.cell(colspan: 2)[Sin existencias],
  table.cell(rowspan: 2)[Tomates],[451],[19€],
  [1463],[3,87€]
)  
)<tabla-ej1>
```)
#figure(
  caption: [Ejemplo de tabla para el listado],
  table(
  columns: 3,  
  [*Producto*],
  [*Cantidad*],
  [*Precio*],  
  [Arroz],
  [1002], [3,50€],
  [Alcachofas en conserva],
  [207], [2,96€],
  [Sal lavavajillas],
  table.cell(colspan: 2)[Sin existencias],
  table.cell(rowspan: 2)[Tomates],[451],[19€],
  [1463],[3,87€]
)  
)<tabla-ej1>

Por defecto el texto del campo caption[] se escribe bajo la tabla.\
Para que en las tablas, ese texto se coloque arriba, basta con aplicar al principio del documento la siguiente configuración:\
#box( ```typ #show figure.where(kind:table):set figure.caption(position: top)```)\


== Insertar una imagen como tabla
Para los casos en los que se tiene una imagen o captura de una tabla y se desea que sea tratada como una tabla y no como una imagen, hay que hacer una modificación dentro de #box(```#figure()```)\
Se inserta como si fuera una imagen, pero se le añade la modificación #box(```typ kind: table,```)

#box(```typ #show figure.where(kind:table):set figure.caption(position: top)```)

#box(```typ
#figure(
  caption: [Imagen como tabla],
  kind: table,
  image("img/ejemplo-imagen-tabla.jpg"),
)<img-tab1>
```)

#show figure.where(kind:table):set figure.caption(position: top)
#figure(  
  caption: [Imagen como tabla],
  kind: table,
  image("img/ejemplo-imagen-tabla.jpg"),
)<img-tab1>

Se puede ver que el texto sale sobre la tabla. \ 
Esta "imagen" saldrá en el listado de tablas y no en el listado de imágenes.

Se puede ajustar su tamaño como si fuera una imagen...\ 
#box(```typ
#figure(
  caption: [Imagen como tabla ajustada],
  kind: table,
  image("img/ejemplo-imagen-tabla.jpg", width: 70%),
)<img-tab2>
```)

#figure(
  caption: [Imagen como tabla ajustada],
  kind: table,
  image("img/ejemplo-imagen-tabla.jpg", width: 70%),
)<img-tab2>

#box(```typ Como se puede apreciar en la @img-tab1```)\
Como se puede apreciar en la @img-tab1.\
#pagebreak()

= Rejilla/Cuadrícula con ```#grid()```
#link("https://typst.app/docs/reference/layout/grid/")

Con el uso #box(```typ #grid()```), typst nos da la posibilidad de crear cuadrículas en cualquier parte del documento incluido encabezados y pie de página.\
Tiene cierta similitud con las tablas, pero su objetivo es distinto. Las tablas están pensadas para mostrar datos y grid está pensado para dividir el espacio de trabajo en celdas. Dentro de cada celda se puede añadir cualquier elemento, texto, listas, tablas, imágenes,etc. Cada uno puede tener su formato independiente.\



== Dos imágenes juntas usando ``` #figure()``` y ``` #grid() ```
#box(```typ
#figure(
  caption: [Dos imágenes juntas usando figure() y grid()],
  grid(  
  columns: (45%,1fr,45%),
  row-gutter: 1em,
  [#image("img/img-ejemplo4.jpg",height:6cm)],
  [],
  [#image("img/img-ejemplo6.jpg",height:6cm)],
  [(a) Hombre iluminado], [],  [(b) Ovejas azules]
  )
)<fig-2img-grid>
```)
#figure(
  caption: [Dos imágenes juntas usando figure() y grid()],
  grid(  
  columns: (45%,1fr,45%),
  row-gutter: 0.5em,
  [#image("img/img-ejemplo4.jpg",height:6cm)],
  [],
  [#image("img/img-ejemplo6.jpg",height:6cm)],
  [(a) Hombre iluminado], [],  [(b) Ovejas azules]
  )
)<fig-2img-grid>

#v(1mm)


#box(```typ En la @fig-2img-grid podemos ver dos imágenes, un "hombre" en @fig-2img-grid(a) y varias ovejas en @fig-2img-grid(b).```)\

En la @fig-2img-grid podemos ver dos imágenes, un "hombre" en @fig-2img-grid(a) y varias ovejas en @fig-2img-grid(b).

= Uso de ``` #box()``` 
#link("https://typst.app/docs/reference/layout/box/")

Con #box(```typ #box()```) podemos crear "cajas" dentro del propio texto para aplicarles un formato determinado, o incluir contenido dentro como por ejemplo una pequeña imagen.

#box(```typ Si nos encontramos el siguiente logo #box(height: 9pt,image("img/imagen-box-lorem.png")) podemos pensar que estamos en el lugar correcto.```)

Si nos encontramos el siguiente logo #box(fill:none,height: 9pt,image("img/img-ejemplo5.jpg")) podemos pensar que estamos en el lugar correcto.

= Uso de ``` #rect()```
#link("https://typst.app/docs/reference/visualize/rect/")

A igual que #box(```typ #box()```) se utiliza para crear un rectángulo en el que incluir elementos, permite bordes, relleno, ajuste automático al tamaño del contenido, etc, pero se crea en un bloque aparte, no se inserta dentro de la misma línea de texto.

#box(```typ #rect[Esto es un cuadro de texto]```)
#rect[Esto es un cuadro de texto]

- Se puede aplicar un color para el fondo:
#box(```typ #rect(fill: luma(240))[Texto a sombrear ...#lorem(30)]```)
#rect(fill: luma(240))[Texto a sombrear ...#lorem(30)]
#box(```typ luma(valor)```) se utiliza para escala de grises. \
#box(```typ #lorem(n)```) crea un texto de n palabras.\

- Se pueden aplicar bordes, radios ...
#box(```typ #rect(fill: luma(200),stroke: 1.5pt, radius: 9pt)[Texto ...#lorem(50)]```)
#rect(fill: luma(200),stroke: 1.5pt, radius: 9pt)[Texto ...#lorem(50)]

- Aplicar un color de fondo diferente:
#box(```typ #rect(fill: red.transparentize(90%),stroke: 1.5pt, radius: 9pt)[Texto...#lorem(20)]```)
#rect(fill: red.transparentize(90%),stroke: 1.5pt, radius: 9pt)[Texto...#lorem(20)]

#box(```typ transparentize(%)```)  para configurar una transparencia al color.

 - Ajustar al tamaño deseado y centrarlo (texto alineado a la derecha):
#box(```typ #align(center)[#rect(fill: blue.transparentize(90%),stroke: 0.2pt, radius: 3pt, width: 70%)[#align(right)[Texto...#lorem(40)]]]```)
#align(center)[#rect(fill: blue.transparentize(90%),stroke: 0.2pt, radius: 3pt, width: 70%)[#align(right)[Texto...#lorem(40)]]]

#pagebreak()
= Comandos, scripts y código
#link("https://typst.app/docs/reference/text/raw/#definitions-line")

Typst permite escribir comandos, scripts o fragmentos de código de varios lenguajes aplicándoles el resaltado correspondiente de cada lenguaje.\

#box(``` `comando,código` ```) o también  #box(```` ```comando,código``` ````)

Para copiar un archivo en linux  #box(``` `cp ~/Descargas/file.txt ~/Documentos file.txt.bak` ```)

Para copiar un archivo en linux `cp ~/Descargas/file.txt ~/Documentos file.txt.bak` \

Con la opción de  #box(```` ```comando,código``` ````) se puede indicar el tipo de lenguaje y se le aplica el resaltado.

#box(```` ```bash cp ~/Descargas/file.txt ~/Documentos file.txt.bak``` ````)

```bash cp ~/Descargas/file.txt ~/Documentos file.txt.bak```

La palabra que indica el lenguaje va a continuación de los tres primeros "acentos" y sin dejar ningún espacio en blanco.

Ejemplo con bat:
#box(````typ ```bat Copy-Item "C:\Windows\Logfiles\mar1604.log.txt" -Destination "C:\Backs"``` ````)

```bat Copy-Item "C:\Windows\Logfiles\mar1604.log.txt" -Destination "C:\Backs"```

#v(2mm)
Ejemplo en bash:

#box(
````
```bash
#!/bin/bash
string1='reo'
if [[ $string1 = *e* ]];
then
  echo Eso es verdad
else
  echo Eso es mentira
fi
```
````)

```bash
#!/bin/bash
string1='reo'
if [[ $string1 = *e* ]];
then
  echo Eso es verdad
else
  echo Eso es mentira
fi
```
El mismo sin indicar el tipo de lenguaje bash:\
``` #!/bin/bash
string1='reo'
if [[ $string1 = *e* ]];
then
  echo Eso es verdad
else
  echo Eso es mentira
fi```

#v(2mm)
Ejemplo de sql:\
```sql
SELECT studentID, FullName, sat_score, recordUpdated
FROM student
WHERE (
	studentID between 1 and 5
    	or studentID = 8
    	or FullName like '%Maximo%'
    	)
    	and sat_score NOT in (1000,1400);
``` 
#v(2mm)
Se puede crear un listado de códigos igual que con las imágenes y tablas y también se pueden referenciar del mismo modo. Para ello es necesario el uso de #box(```typ #figure() ```)

Un código en python con #box(```typ #figure()```)

#box(
````typ
#figure(
  kind:"code",
  supplement: [Código],
  caption: [Función suma en phyton],
  [```python
  # Funciones en python
  def suma(a, b):
  return a + b
  
  resultado = suma(2, 3)
  print(resultado)
  ```]
)````)

#figure(
  kind:"code",
  supplement: [Código],
  caption: [Función suma en phyton],
  [```python
  # Funciones en python
  def suma(a, b):
  return a + b
  
  resultado = suma(2, 3)
  print(resultado)  ```
])
#v(1em)
#box(``` kind:"code"```) y  #box(``` supplement: [Código]```)\
El primero se utiliza para identificar todos los fragmentos de código que luego saldrán en el listado. El segundo es la palabra que sale en el texto al pie, delante del número de orden, Código 1, Código 2\

Combinando #box(```typ #figure()```) y #box(```typ #rect()```) \
#box(
````typ
#figure( 
kind: "code",
supplement: [Código],
caption:[Estructura básica de una página web en HTML],
[#rect(inset: 5mm,fill:yellow.transparentize(97%),stroke: 0.2pt)[
```html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>HTML</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="estilo.css">
</head>

<body>
  <p>Esta página web es una página HTML válida.</p>
</body>
</html>
```]
])<cod-html-base>
````)

#figure( 
kind: "code",
supplement: [Código],
caption:[Estructura básica de una página web en HTML],
[#rect(inset: 5mm, fill:yellow.transparentize(97%),stroke: 0.2pt)[
```html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>HTML</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="estilo.css">
</head>

<body>
  <p>Esta página web es una página HTML válida.</p>
</body>
</html>
```
]])<cod-html-base>

= Referencias a elementos del documento <sec-crear-referencias>
Ya se ha comentado en la @referenciar-imagen y se han visto varios ejemplos.\
Se pueden ingresar etiquetas en cualquier elemento del documento, en los títulos de las secciones o subsecciones, en las imágenes, tablas, códigos...

Para etiquetar un elemento se utiliza la sintaxis #box(```typ <nombre-etiqueta>```)\
Es buena práctica codificarlas para que sea más fácil referenciarlas, como por ejemplo hacer que todas las imágenes empiecen por fig, las tablas por tab, los códigos por cod, secciones por sec ...\
Para una tabla podría ser algo como #box(```typ <tab:liga-esp>```)

A la hora de referenciar objetos como imágenes, tablas, códigos se utiliza la #box(``` @```) seguida del nombre de la etiqueta.\
Cuando se pulsa la tecla #box(``` @```) se despliega el listado de etiquetas disponibles y facilita mucho el trabajo ya que no es necesario recordarlas, sobre todo, si se ha seguido una buena codificación a la hora de crearlas.
#image("img/img-ref.png")
#line(length: 100%, stroke: 3pt)

#box(```typ Como puede observarse en la @tabla-ej1 el stock es preocupante.```)\
Como puede observarse en la @tabla-ej1 el stock es preocupante.

Pinchado sobre el nombre que se crea, te lleva a esa parte del documento.\
Si el objeto referenciado cambia de lugar, la referencia se actualiza automáticamente de manera que sigue apuntando al mismo objeto sin necesidad de cambiar nada.

Ejemplo de una etiqueta para un apartado:\
```typ = Gestión de residuos <sec:ges-residuos>```\

Se pueden poner etiquetas en cualquier parte del documento, pero no se referencian del mismo modo.
Las referencias a figuras, tablas, códigos, secciones se hacen usando #box(``` @```) y las referencias a otras partes del documento se hacen usando #box(```typ #link(<etiqueta>)[ ... ]```)

Ejemplo para el índice general:\
- Etiquetado del índice:
#box(```typ #outline(indent: auto, title: [Índice])<indice-general>```)

- Referencia al índice: 
#box(```typ Volver al #link(<indice-general>)[índice]```)\
Volver al #link(<indice-general>)[índice]

#pagebreak()

= Índices de Figuras, Tablas y Códigos <sec-crear-indices>
//#set box(outset:0pt, fill:none)
El índice de contenidos ya se ha visto como crearlo en la @cap:indice-de-contenido.
#v(2mm)
- Indice de figuras
#box(
```typ
#outline(title: [Índice de Figuras], target: figure.where(kind: image))
```)
#set box(outset:0pt, fill:none)
#outline(
  title: [Índice de Figuras],   
  target: figure.where(kind: image),
)
#set box(outset:2pt, fill:luma(220))

#v(2mm)
- Indice de tablas
#box(
```typ
#outline(title: [Índice de Tablas], target: figure.where(kind: table))
```)
#set box(outset:0pt, fill:none)
#outline(
  title: [Índice de Tablas],
  target: figure.where(kind: table),
)
#v(2mm)
- Indice de códigos
#set box(outset:2pt, fill:luma(220))
#box(```typ
#outline(title: [Índice de Códigos], target: figure.where(kind: "code"))
```)
#set box(outset:0pt, fill:none)
#outline(
  title: [Índice de Códigos],
  target: figure.where(kind: "code"),
)
#v(5mm)
#set box(outset:2pt, fill:luma(220))
Basta con crearlos en el lugar que corresponda dentro del documento, normalmente a continuación del índice de contenidos.

Su funcionamiento es el mismo que el índice general de contenidos, son navegables y se reordenan solos si alguno de los elementos cambia su posición dentro del documento.
#pagebreak()

= Organizar página con ``` #grid()``` 
#v(5mm)
#grid(columns: (1fr), stroke: 1pt+ red,
  [#align(center+horizon)[#text(60pt)[#smallcaps[Título Typst]]]]  
)
#v(8mm)
#grid(columns: (1fr,1fr,1fr), column-gutter: 5pt, stroke: 1pt+blue,
  [#align(center)[*Autor 1:*]
  #lorem(20)
  ],
  [#align(center)[*Autor 2:*]
  #lorem(15)
  ],
  [#align(center)[*Autor 3:*]
  #lorem(20)
  ],  
)
#v(5mm)
#grid(columns: (1fr), stroke: 1pt+ green,
  [#align(center)[*Agradecimientos:*] 
  #align(right)[#lorem(60)]
])
#v(5mm)
#grid(columns: (1fr), stroke: 1pt+maroon, 
  [#par(justify:true)[#align(center)[*Resumen:*] 
  #lorem(80)]]  
)
#line(length: 100%,stroke: 2pt)
#v(8mm)
``` = Introducción```\
#lorem(100)

#pagebreak()

#grid(columns: (1fr), //stroke: 1pt+ red,
  [#align(center+horizon)[#text(60pt)[#smallcaps[Título Typst]]]]  
)
#v(8mm)
#grid(columns: (1fr,1fr,1fr), column-gutter: 5pt, //stroke: 1pt+blue,
  [#align(center)[*Autor 1:*]
  #lorem(20)
  ],
  [#align(center)[*Autor 2:*]
  #lorem(15)
  ],
  [#align(center)[*Autor 3:*]
  #lorem(20)
  ],  
)
#v(5mm)
#grid(columns: (1fr), //stroke: 1pt+ green,
  [#align(center)[*Agradecimientos:*] 
  #align(right)[#lorem(60)]
])
#v(5mm)
#grid(columns: (1fr), //stroke: 1pt+maroon, 
  [#par(justify:true)[#align(center)[*Resumen:*] 
  #lorem(80)]]  
)
//#line(length: 100%,stroke: 2pt)
#v(8mm)
``` = Introducción```\
#lorem(100)

#pagebreak()


El código de la página anterior:

#box(
  ````typ
 #grid(columns: (1fr), //stroke: 1pt+ red,
  [#align(center+horizon)[#text(60pt)[#smallcaps[Título Typst]]]]  
)
#v(8mm)
#grid(columns: (1fr,1fr,1fr), column-gutter: 5pt, //stroke: 1pt+blue,
  [#align(center)[*Autor 1:*]
  #lorem(20)
  ],
  [#align(center)[*Autor 2:*]
  #lorem(15)
  ],
  [#align(center)[*Autor 3:*]
  #lorem(20)
  ],  
)
#v(5mm)
#grid(columns: (1fr), //stroke: 1pt+ green,
  [#align(center)[*Agradecimientos:*] 
  #align(right)[#lorem(60)]
])
#v(5mm)
#grid(columns: (1fr), //stroke: 1pt+maroon, 
  [#par(justify:true)[#align(center)[*Resumen:*] 
  #lorem(80)]]  
)
//#line(length: 100%,stroke: 2pt)
#v(8mm)
``` = Introducción```\
#lorem(100)

  ````
)


= Portada con ``` #grid()```  

Se eliminan los márgenes para crear la portada y luego se restablecen a los valores por defecto.

El código de las dos páginas siguientes (la portada) :\
#box(```typ
#set page(margin: (x:0mm, y:0mm))
#grid( columns: (3cm,1fr), rows: 1fr, //stroke:1pt +red,
grid.cell(fill: navy)[
  #align(center+horizon)[#text(fill: white,35pt)[#rotate(-90deg,reflow: true)[Proyecto Final de Ciclo]]]
],
[#grid(columns: 1fr, rows: (6cm,3cm,1cm,1fr,2cm,2cm,4cm),//stroke: 1pt+purple, 
align(center+horizon)[#image("img/perros.png",height: 80%)],
align(center+horizon)[#text(16pt)[Nombre Centro]],
align(center+horizon)[#text(16pt)[Ciclo Formativo]],
align(center+horizon)[#text(16pt)[#smallcaps[Título de Pfc]]],
align(center+horizon)[Autor: Nombre Ap1 Ap2],
align(center+horizon)[Tutor: Nombre Ap1 Ap2],
align(center+horizon)[Curso 2024/2025]
)]  
)
#pagebreak()
#set page(margin:auto)
```
)



#pagebreak()
#set page(margin: (x:0mm, y:0mm))
#grid( columns: (3cm,1fr), rows: 1fr, stroke:1pt +red,
grid.cell(fill: navy)[
  #align(center+horizon)[#text(fill: white,35pt)[#rotate(-90deg,reflow: true)[Proyecto Final de Ciclo]]]
],
[#grid(columns: 1fr, rows: (6cm,3cm,1cm,1fr,2cm,2cm,4cm),stroke: 1pt+purple, 
align(center+horizon)[#image("img/perros.png",height: 80%)],
align(center+horizon)[#text(16pt)[Nombre Centro]],
align(center+horizon)[#text(16pt)[Ciclo Formativo]],
align(center+horizon)[#text(16pt)[#smallcaps[Título de Pfc]]],
align(center+horizon)[Autor: Nombre Ap1 Ap2],
align(center+horizon)[Tutor: Nombre Ap1 Ap2],
align(center+horizon)[Curso 2024/2025]
)]  
)
#pagebreak()
#set page(margin: (x:0mm, y:0mm))

#grid( columns: (3cm,1fr), rows: 1fr, //stroke:1pt +red,
grid.cell(fill: navy)[
  #align(center+horizon)[#text(fill: white,35pt)[#rotate(-90deg,reflow: true)[Proyecto Final de Ciclo]]]
],
[#grid(columns: 1fr, rows: (6cm,3cm,1cm,1fr,2cm,2cm,4cm),//stroke: 1pt+purple, 
align(center+horizon)[#image("img/perros.png",height: 80%)],
align(center+horizon)[#text(16pt)[Nombre Centro]],
align(center+horizon)[#text(16pt)[Ciclo Formativo]],
align(center+horizon)[#text(16pt)[#smallcaps[Título de Pfc]]],
align(center+horizon)[Autor: Nombre Ap1 Ap2],
align(center+horizon)[Tutor: Nombre Ap1 Ap2],
align(center+horizon)[Curso 2024/2025]
)]  
)

#pagebreak()

#set page(margin:auto)


= Encabezado de página
#link("https://typst.app/docs/reference/layout/page/#parameters-header")\
Ejemplos:

#box(
  ```typ
  #set page(header: [#align(center)[Texto en encabezado]]) 
  ```
)
#image("/img/img-encab-1.png")
#line(length: 100%, stroke: 3pt)

#box(```typ
#set page(header: [Texto encabezado izq. #h(1fr) Texto encabezado der.])
```)

#image("/img/img-encabezado-2.png")
#line(length: 100%, stroke: 3pt)

#box(
  ```typ
  #set page(header:[
  #rect(
    stroke: (bottom:0.2pt),width: 100%,
    align(center)[Texto para el encabezado con línea]
    )
  ]) 
  ```
)

#image("/img/img-encabezado-3.png")
#line(length: 100%, stroke: 3pt)


#box(```typ #rect()```) pintando el borde *inferior* que hará de línea de separación y en su interior el contenido del encabezado de página.


= Pie de página
#link("https://typst.app/docs/reference/layout/page/#parameters-footer")

Si solo se quiere que salga el número de página:

#box(
  ```typ
  #set page(numbering: "1")
  ```
) 

#image("/img/img-pie1.png")
#line(length: 100%, stroke: 3pt)

#pagebreak()
#box(
  ```typ
  #set page(numbering: "1 / 1")
  ```
)
#image("/img/img-pie2.png")
#line(length: 100%, stroke: 3pt)

Si se quiere añadir un texto a la izquierda y el número de página a la derecha:

#box(
  ```typ
  #set page(footer:context [
  #rect(
    width: 100%,stroke: (top:0.1pt),
    [Pie de página izq.
    #h(1fr)    
    #counter(page).display("1 / 1",both:true)]
    //#counter(page).display("pág. 1")]
  )
])
  ```
)

#image("/img/im-pie3.png")


#box(```typ #rect()```) pintando el borde *superior* que hará de línea de separación y en su interior el contenido del pie de página. 

Actualizar el valor del contador de página a 1:

#box(```typ
#counter(page).update(1)
```
)

= Expresiones matemáticas
Typst permite crear expresiones matemáticas encerrándolas entre dos símbolos #box(```typ $$```).\
Se pueden incluir expresiones en la misma línea de texto si no se deja ningún espacio en blanco rodeando a la expresión #box(```typ $expresión$```).

#box(```typ Esto es solo un ejemplo: la solución del problemas es $x>3 " y " x<5, " "  forall y in RR$  sin tener en cuenta los valores de $pi$ como se ha visto en el tema anterior.```)\
Esto es solo un ejemplo: la solución del problemas es $x>3 " y " x<5, " "  forall y in RR$  sin tener en cuenta los valores $pi$ como se ha visto en el tema anterior.

Si se incluyen espacios rodeando a la expresión #box(```typ $ expresión $```), se consigue que se muestren centradas en la siguiente línea.\

#box(```typ Esto es solo un ejemplo: la solución del problemas es $ x>3 " y " x<5, " "  forall y in RR $  sin tener en cuenta los valores de $pi$ como se ha visto en el tema anterior.```)\
Esto es solo un ejemplo: la solución del problemas es $ x>3 " y " x<5, " "  forall y in RR $  sin tener en cuenta los valores $pi$ como se ha visto en el tema anterior.

Se aconseja escribir las expresiones del siguiente modo:\
#box(```typ 
$ 
expresión\
expresión\
expresión
$ ```)

Un ejemplo: (ojo a los espacios en blanco):\
#box(```typ
$
f(x_1)=3_i a x^(3+pi) − 4 r x^2 + x y_(i+n)\ 
sum_(x=1) ^(n-1)  = t/(1+3r) dot sqrt(4) dot root(7,95)\
y(x)= integral_1^2 x^3 dif x  \
G(x)=3+root(x,3t)/alpha\
cal(Y)(x)=op(lim,limits: #true)_(x-> + oo) plus.minus (10 dot cancel(m))/cancel(m)
$
```)

$
f(x_1)=3_i a x^(3+pi) − 4 r x^2 + x y_(i+n)\ 
sum_(x=1) ^(n-1)  = t/(1+3r) dot sqrt(4) dot root(7,95)\
y(x)= integral_1^2 x^3 dif x  \
G(x)=3+root(x,3t)/alpha\
cal(Y)(x)=op(lim,limits: #true)_(x-> + oo) plus.minus (10 dot cancel(m))/cancel(m)
$

Para alinear todas las expresiones en un punto se coloca el símbolo &
#box(```typ
$
f(x_1)&=3_i a x^(3+pi) − 4 r x^2 + x y_(i+n)\ 
sum_(x=1)^(n-1)&=t/(1+3r) dot sqrt(4) dot root(7,95)\
y(x)&=integral_1^2 x^3 dif x \
$
```)
$
f(x_1)&=3_i a x^(3+pi) − 4 r x^2 + x y_(i+n)\ 
sum_(x=1)^(n-1)&=t/(1+3r) dot sqrt(4) dot root(7,95)\
y(x)&=integral_1^2 x^3 dif x \
$

Para que las expresiones aparezcan enumeradas hay que configurar:
#box(```typ #set math.equation(numbering: "(1)")```)

#box(```typ
$
f(x_1)&=3_i a x^(3+pi) − 4 r x^2 + x y_(i+n)\ 
sum_(x=1)^(n-1)&=t/(1+3r) dot sqrt(4) dot root(7,95)\
$
$
y(x)=integral_1^2 x^3 dif x \
$
```)

#set math.equation(numbering: "(1)")
$
f(x_1)&=3_i a x^(3+pi) − 4 r x^2 + x y_(i+n)\ 
sum_(x=1)^(n-1)&=t/(1+3r) dot sqrt(4) dot root(7,95)\
$

$
y(x)=integral_1^2 x^3 dif x \
$

Se han separado en dos bloques, el bloque 1 tiene dos expresiones y el segundo solo tiene una.\

Se pueden referenciar del mismo modo que se hace con figuras, tablas, códigos, etc, si se marcan con una etiqueta.\
Si se configura #box(```typ #set math.equation(numbering: "(1)", supplement: "Eq")```) se mostrará  "Eq" seguido del número correspondiente.
#box(```typ #set math.equation(numbering: "(1)", supplement: "Eq")```)\

#box(```typ
$
y(x)=integral.double_1 ^infinity x³ dif x gt.eq.slant abs(9)
$<mat-int-doble>
Puede verse en @mat-int-doble que siempre es un valor positivo.
```)

#set math.equation(numbering: "(1)", supplement: "Eq")
$
y(x)=integral.double_1 ^infinity x³ dif x gt.eq.slant abs(9)
$<mat-int-doble>
Puede verse en @mat-int-doble que siempre es un valor positivo.

Es solo un pequeño ejemplo de las posibilidades que ofrece Typst, consultar la ayuda #link("https://typst.app/docs/reference/math/") para ver opciones, símbolos, etc.

= Uso de Bibliografía
#link("https://typst.app/docs/reference/model/bibliography/")\
Typst mantiene la compatibilidad con los archivos .bib\

Para mostrar la bibliografía se hace con #box(```typ #bibliography("bibliografía.bib")```)\
A partir de que se escribe esa línea se crea el apartado "Bibliografía" y aparece automáticamente en el índice general sin enumerar.\
No aparecerá ninguna hasta que no sea citada.\
La forma de referenciar la bibliografía es la misma que se usa para imágenes, tablas... y ya se ha visto en la @sec-crear-referencias.

Este es el contenido del archivo bibliografía.bib 
```bib
@article{nino2001tiempo,
  title={El tiempo en la mec{\'a}nica de Newton, la relatividad especial y la mec{\'a}nica cu{\'a}ntica},
  author={Ni{\~n}o, Virgilio},
  journal={Revista Colombiana de Filosof{\'\i}a de la ciencia},
  volume={2},
  number={5},
  pages={25--34},
  year={2001},
  publisher={Universidad El Bosque}
}

@article{martinez2013mundo,
  title={El mundo social del adolescente: amistades y pareja},
  author={Mart{\'\i}nez, Bel{\'e}n},
  journal={Los problemas en la adolescencia: respuestas y sugerencias para padres y educadores},
  pages={71--96},
  year={2013}
}

}
@book{hodges2014alan,
  title={Alan Turing: The Enigma: The Book That Inspired the Film" The Imitation Game"},
  author={Hodges, Andrew},
  year={2014},
  publisher={Princeton University Press}
}
}```

Ejemplo de código donde se usa la bibliografía:\
#box(
  ```typ
Como se demuestra en el estudio de @martinez2013mundo, no son problemas nuevos, son problemas que se vienen arrastrando desde la antigüedad.

La importancia de la criptografía en la II Guerra Mundial queda demostrada en  @hodges2014alan que revela claramente los secretos del funcionamiento de la máquina enigma.
```)

Y su resultado:\
Como se demuestra en el estudio de @martinez2013mundo, no son problemas nuevos, son problemas que se vienen arrastrando desde la antigüedad.

La importancia de la criptografía en la II Guerra Mundial queda demostrada en  @hodges2014alan que revela claramente los secretos del funcionamiento de la máquina enigma.

En el apartado de Bibliografía van apareciendo automáticamente las citas utilizadas.

#rect( stroke: 0.5pt)[#image("/img/imagen-cap-bib.png")]

#bibliography("30-bibliografia.bib")

#heading(numbering: none)[Anexos]
#let anexo(body) = { 
  set heading(numbering: "A", supplement: [Anexo])
  counter(heading).update(0)    
  body
}
#show: anexo
= Cómo mostrar Anexos
Los anexos se suelen añadir después de incluir la bibliografía.\
#box(```typ 
#heading(numbering: none)[Anexos]
#let anexo(body) = { 
  set heading(numbering: "A", supplement: [Anexo])
  counter(heading).update(0)    
  body
}
#show: anexo
```)

La primera línea #box(```typ #heading(numbering: none)[Anexos]```) crea una nueva entrada sin enumerar en el índice de contenidos.\
El resto de líneas de código consiguen que los anexos se enumeren con letras empezando con la "A".\
Cada nueva sección de nivel 1 que se cree a partir de este momento aparecerá como un nuevo anexo con su letra correspondiente.
#image("/img/2025-01-04_22-37.png")

