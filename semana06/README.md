# Semana 06: Bash Scripting - Condicionales
## Descripción
‘ backup - check . sh ‘ valida el estado de un directorio de
backups .
Verifica existencia , contenido , antig ü edad y tama ño , y
emite
un diagnóstico con niveles OK / WARNING / ERROR.
## Uso
‘‘‘ bash
./ backup - check . sh # Usa / backup por
defecto
./ backup - check . sh / mnt / respaldo # Directorio
personalizado
./ backup - check . sh ~/ backup - prueba # Directorio de prueba
./ backup - check . sh -- version # Versi ó n del script
./ backup - check . sh -- help # Ayuda
‘‘‘
## Estructura
‘‘‘
semana06 /
| - - README . md
| - - backup - check . sh
| - - commands - used . md
‘ - - logs /
‘ - - backup - check - YYYYMMDD . log
‘‘‘
## Verificaciones que realiza
1. Existencia y permisos del directorio de backups
2. Presencia de archivos . tar . gz y que no est én vac í os
3. Antig ü edad : alerta si el ú ltimo backup supera las 24
horas
4. Tama ñ o : alerta si el directorio est á fuera del rango
esperado
## Salida de ejemplo
‘‘‘
[2026 -03 -15 14:32:01] [ INFO ] === backup - check . sh v1 .0.0
- Inicio ===
[2026 -03 -15 14:32:01] [ INFO ] Directorio objetivo : /
backup
[2026 -03 -15 14:32:01] [ INFO ] Verificando directorio : /
backup
[2026 -03 -15 14:32:01] [ OK ] Directorio accesible : /
backup
[2026 -03 -15 14:32:01] [ INFO ] Buscando archivos de backup
  ...
[2026 -03 -15 14:32:01] [ OK ] Se encontraron 3 archivo ( s )
de backup .
[2026 -03 -15 14:32:01] [ OK ] Ú ltimo backup : backup_2026
-03 -15. tar . gz
[2026 -03 -15 14:32:01] [ INFO ] Verificando antig ü edad ...
[2026 -03 -15 14:32:01] [ OK ] 1 backup ( s ) recientes ( ú
ltimas 24 h ) .
[2026 -03 -15 14:32:01] [ INFO ] Verificando tama ñ o ...
[2026 -03 -15 14:32:01] [ OK ] Tama ñ o dentro del rango :
1842 MB
[2026 -03 -15 14:32:01] [ INFO ] === Verificaci ó n completada
===
[2026 -03 -15 14:32:01] [ OK ] RESULTADO : todos los checks
pasaron .
‘‘‘
## Conceptos aprendidos
- El comando test y la sintaxis [ ] y [[ ]]
- if / elif / else con operadores num é ricos , de cadena y de
archivo
- Operadores l ó gicos && , || y !
- La estructura case / esac
- Funciones con par á metros , return y local
- Logging estructurado con tee -a
- Medición de espacio con du - sm
- Búsqueda por antig ü edad con find - mtime
