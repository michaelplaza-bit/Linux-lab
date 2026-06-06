# Comandos Usados - Semana 6
## Condicionales
- ‘[ -d dir ]‘ Verificar que existe y es un
directorio
- ‘[ -f archivo ] ‘ Verificar que existe y es un archivo
regular
- ‘[ -r ruta ] ‘ Verificar permiso de lectura
- ‘[ -s archivo ] ‘ Verificar que el archivo no est á vac í
o
- ‘[ -e ruta ] ‘ Verificar que existe ( cualquier tipo )
- ‘[ -z " $var " ] ‘ Verificar que la cadena est á vac í a
- ‘[ -n " $var " ] ‘ Verificar que la cadena no est á vacía
- ‘[ $a - eq $b ] ‘ Comparar n ú meros : igual
- ‘[ $a - lt $b ] ‘ Comparar n ú meros : menor que
- ‘[ $a - gt $b ] ‘ Comparar n ú meros : mayor que
## Estructura de control
- ‘ if / elif / else / fi ‘ Estructura condicional
- ‘ case / esac ‘ Comparaci ó n contra m ú ltiples patrones
- ‘ return 0|1 ‘ C ó digo de salida de una funci ón
- ‘ local var ‘ Variable local a una funci ó n
## Logging y salida
- ‘ tee -a archivo ‘ Escribir en pantalla y agregar al
archivo
- ‘ printf "[% s ]..." ‘ Formato estructurado de log
## Tama ñ o y tiempo de archivos
- ‘ du -sm dir ‘ Tama ñ o del directorio en MB ( solo
total )
- ‘ du -sh dir ‘ Tama ñ o en formato legible
- ‘ find - mtime -1 ‘ Archivos modificados en las ú ltimas
24 h
- ‘ find - mtime +7 ‘ Archivos modificados hace m á s de 7 d í
as
- ‘ find - maxdepth 1 ‘ No descender a subdirectorios
- ‘ find ... | sort | tail -1‘ Obtener el archivo m á s
reciente
## Combinaciones ló gicas
- ‘&& ‘ AND : ambas condiciones deben ser
verdaderas
- ‘|| ‘ OR : al menos una condici ó n verdadera
- ‘! ‘ NOT : niega la condici ó n
