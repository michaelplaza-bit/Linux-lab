# Analisis de Permisos Aplicados
## Resumen de Permisos
| Tipo        |   Permisos         | Octal        | Justificacion                      |
|-------------|--------------------|--------------|------------------------------------|
| Documentos  | rw-r--r--          | 644          | Solo el dueno modifica ,otros leen |
| Imagenes    | rw-r--r--          | 644          | Archivos de solo lecturapara otros |
| Scripts     | rwxr-xr-x          | 755          | Deben ser ejecutables              |
| Config      | rw-r--r--          | 644          | Configuraciones protegidas         |
| Logs        | rw-r--r--          | 644          | Solo sistema / owner escribe       |
| Directorios | rwxr-xr-x          | 755          | Acceso de lectura para todos       |

## Decisiones Técnicas

### ¿Por qué 755 para scripts?

Los scripts necesitan el permiso de ejecución (x) para poder ejecutarse directamente con ./script.sh.

- Owner: rwx (7) - puede leer, modificar y ejecutar.
- Group: r-x (5) - puede leer y ejecutar, no modificar.
- Others: r-x (5) - puede leer y ejecutar, no modificar.

Esto permite compartir scripts sin dar permisos de edición.

### ¿Por qué 644 para documentos?

Los documentos de texto no necesitan ejecutarse. El permiso 644 asegura que:

- Owner: rw- (6) - puede leer y modificar.
- Group: r-- (4) - solo puede leer.

- Others: r-- (4) - solo puede leer.

Esto previene modificaciones accidentales por otros usuarios.

### ¿Por qué 755 para directorios?

Los directorios necesitan el bit de ejecución (x) para:

1. Permitir cd al directorio.
2. Listar contenido con ls.
3. Acceder a archivos dentro del directorio.

Sin el permiso x, el directorio es inaccesible aunque tenga permiso r (lectura).

### ¿Por qué 644 para configuraciones?

Los archivos de configuración son sensibles. Solo el propietario debe poder modificarlos para evitar cambios no autorizados que podrían afectar el funcionamiento de las aplicaciones.

### ¿Por qué 644 para logs?

Los archivos de log generalmente son escritos por el sistema o la aplicación (como propietario). Otros usuarios solo necesitan leerlos para fines de diagnóstico, no modificarlos.

## Comandos Utilizados

bash
# Cambiar permisos de directorios
chmod 755 organized/*/

# Cambiar permisos de archivos específicos
find organized/documents/ -type f -exec chmod 644 {} \;

# Verificar permisos aplicados
ls -l organized/documents/


## Verificación

Puedes verificar que los permisos están correctos con:

bash
# Ver permisos de directorios
ls -ld organized/*/

# Ver permisos de scripts (deben tener x)
ls -l organized/scripts/

# Intentar ejecutar un script
./organized/scripts/script_1.sh


## Seguridad

Los permisos aplicados siguen el principio de mínimo privilegio: cada archivo tiene solo los permisos necesarios para cumplir su función.

- No hay permisos 777 (peligroso).
- No hay archivos con permisos de escritura para todos los usuarios.
- Los scripts son ejecutables, pero no modificables por otros usuarios.
