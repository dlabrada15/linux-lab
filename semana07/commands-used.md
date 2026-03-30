# Comandos Usados - Semana 7

## Monitoreo del sistema

- 'df /'
  Obtener uso de la partición raíz del sistema

- 'free'
  Ver uso de memoria RAM

- 'uptime'
  Obtener carga promedio del sistema (load average)

## Procesamiento de texto

- 'awk'
  Procesar y extraer valores específicos:
  - Calcular porcentaje de RAM usada
  - Extraer porcentaje de uso de disco
  - Obtener carga de CPU

- 'grep -c'
  Contar coincidencias en el log:
  - Eventos INFO
  - Eventos ALERTA

- 'tail -n'
  Mostrar las últimas líneas del archivo de log

## Control de flujo

- 'while true'
  Ejecutar monitoreo continuo en bucle infinito

- 'while read'
  Leer archivo línea por línea (procesamiento de logs)

- 'case'
  Procesar opciones de línea de comandos

- 'if [ condicion ]'
  Evaluar umbrales de uso (disco y RAM)

- '&&'
  Ejecutar comando si la condición es verdadera

## Manejo de señales

- 'trap'
  Capturar Ctrl+C (SIGINT) para ejecutar acciones antes de salir:
  - Mostrar resumen
  - Registrar evento final

## Variables y expansión

- '$VAR'
  Acceder al valor de una variable

- '$(comando)'
  Sustitución de comandos (capturar salida)

- '$#'
  Número de argumentos

- '$1, $2'
  Argumentos posicionales

- '${var}'
  Expansión de variables en strings

## Entrada y salida

- 'echo'
  Imprimir texto en consola

- 'printf'
  Formatear salida de texto (alineación, decimales)

- 'tee -a archivo'
  Escribir en pantalla y guardar en archivo de log

- '2>/dev/null'
  Suprimir mensajes de error

## Tiempo y control

- 'sleep'
  Pausar ejecución entre iteraciones del monitoreo

- 'date'
  Generar timestamp para logs

## Buenas prácticas aplicadas

- Uso de variables readonly para configuración
- Separación en funciones reutilizables
- Logging estructurado con niveles (INFO, ALERTA)
- Validación de argumentos con case
- Control de ejecución con límites (MAX_ITER)
