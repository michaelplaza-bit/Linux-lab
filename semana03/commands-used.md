# Comandos Utilizados - Semana 3
## Procesamiento de Texto
### grep
‘‘‘ bash
grep -c "| ERROR |" sistema . log # Contar coincidencias
grep -E "\| ( ERROR | FATAL ) \|" log # E x p r e s i n extendida
‘‘‘
* Para q u sirve :* Filtrar l n e a s por p a t r n .
### cut
‘‘‘ bash
cut -d ’| ’ - f2 sample . log # Campo 2 con separador
|
cut -d ’| ’ - f4 sample . log # Campo 4 ( mensaje )
‘‘‘
* Para q u sirve :* Extraer columnas de texto estructurado
.
### sort
‘‘‘ bash
sort archivo . txt # Orden a l f a b t i c o
sort - rn archivo . txt # Reverso n u m r i c o
sort - k2 tabla . txt # Por columna 2
‘‘‘
* Para q u sirve :* Ordenar l n e a s ( necesario antes de
uniq ).
### uniq
‘‘‘ bash
sort file | uniq -c # Contar frecuencias
sort file | uniq -d # Solo duplicados
‘‘‘
* Para q u sirve :* Eliminar o contar l n e a s duplicadas .
### wc
‘‘‘ bash
wc -l archivo . txt # Contar l n e a s
grep " ERROR " log | wc -l # Contar errores
‘‘‘
* Para q u sirve :* Contar l n e a s , palabras o bytes .
### tr
‘‘‘ bash
tr -d ’ ’ # Eliminar espacios
tr ’a -z ’ ’A -Z ’ # Cambiar a
m a y s c u l a s
‘‘‘
* Para q u sirve :* Transformar o eliminar caracteres .
### awk
‘‘‘ bash
awk ’{ print $2 } ’ archivo # Imprimir col 2
awk ’{ sum += $1 } END { print sum } ’ # Sumar columna
awk -F ’| ’ ’{ print $2 } ’ # Separador |
‘‘‘
* Para q u sirve :* Procesar y calcular sobre columnas .
## R e d i r e c c i n y Pipes
‘‘‘ bash
comando > archivo . txt # Guardar salida
comando >> archivo . txt # Agregar a archivo
comando 2 >/ dev / null # Suprimir errores
cmd1 | cmd2 | cmd3 # Encadenar comandos
‘‘‘
## Pipeline Completo del Analizador
‘‘‘ bash
cut -d ’| ’ - f2 sample . log | \
tr -d ’ ’ | \
sort | \
uniq -c | \
sort - rn | \
head -10
‘‘‘
* Lectura :* Extrae IPs quita espacios ordena
cuenta frecuencias ordena por frecuencia top 10
