# Semana 05: Bash Scripting - Fundamentos
## Descripcion
‘ sysinfo . sh ‘ genera un reporte del estado del sistema .
Muestra i n f o r m a c i n de CPU , RAM , disco y procesos activos .
## Uso
‘‘‘ bash
./ sysinfo . sh # Reporte completo
./ sysinfo . sh -- cpu # Solo CPU
./ sysinfo . sh -- mem # Solo memoria
./ sysinfo . sh -- disk # Solo disco
./ sysinfo . sh -- proc # Solo procesos
./ sysinfo . sh -- version # V e r s i n del script
./ sysinfo . sh -- help # Ayuda
‘‘‘
## Estructura
‘‘‘
semana05 /
README . md
sysinfo . sh
commands - used . md
‘‘‘
## Conceptos aprendidos
- Variables en Bash ( d e c l a r a c i n , e x p a n s i n , valores por
defecto )
- P a r m e t r o s posicionales ( $1 , $@ , $ #)
- Variables especiales ( $ ? , $$ , $USER )
- A r i t m t i c a con $ (( ) )
- S u s t i t u c i n de comandos con $ ()
- echo y printf para formato de salida
- read para entrada del usuario
- Comandos de sistema : uname , hostname , uptime ,
date , nproc , free , df , ps
- V a l i d a c i n de argumentos y exit con c d i g o s
## Ejecucion
‘‘‘ bash
cd ~/ linux - lab / semana05
chmod + x sysinfo . sh
./ sysinfo . sh
‘‘‘
