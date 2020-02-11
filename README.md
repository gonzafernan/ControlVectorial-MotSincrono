# Proyecto Global Integrador: Control de Accionamiento de CA con Motor Sincrónico de Imanes Permanentes

## Tabla de Contenidos

1. Introducción
2. Modelado, Análisis y Simulación dinámica a Lazo Abierto (sin control realimentado)
    1. Modelo matemático equivalente (1 grado de libertad) del subsistema mecánico del motor
    2. Modelo dinámico del sistema físico completo, incorporando el subsistema electromagnético y térmico
        1. Modelo global no lineal (NL), para $i^{r}_{ds}(t)$ genérica

## Descripción
El estudio se centra en el modelado, diseño, simulación y análisis de desempeño de un **sistema de control 
automático de posición y movimiento** para un **accionamiento electromecánico de 4 cuadrantes**, compuesto
 por: máquina eléctrica de corriente alterna (CA) trifásica sincrónica con excitación por imanes permanentes
 (PMSM), alimentada por inversor trifásico desde fuente de CC; reductor de velocidad planetario de salida
 hacia la carga mecánica; y realimentación con 1 sensor de posición (encoder) en el eje del motor, más 3 
sensores de corriente instantánea de fases en la salida del inversor al estator.
