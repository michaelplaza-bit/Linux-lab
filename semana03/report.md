# Reporte de Análisis de Logs

*Archivo analizado:* sample.log
*Fecha del análisis:* 2026-06-04 23:55:51
*Total de entradas:* 500

---

## 1. Top 10 Direcciones IP

| Solicitudes | Dirección IP |
|-------------|--------------|
| 172 | 192.168.1.10 |
| 113 | 10.0.0.5 |
| 63 | 192.168.1.25 |
| 53 | 172.16.0.3 |
| 50 | 10.0.0.99 |
| 49 | 203.0.113.42 |

## 2. Distribución por Severidad

| Nivel | Cantidad |
|-------|----------|
| FATAL | 71 |
| ERROR | 92 |
| WARNING | 94 |
| INFO | 243 |

## 3. Eventos por Hora

| Hora | Eventos |
|------|---------|
| 00:00 | 27 |
| 01:00 | 12 |
| 02:00 | 21 |
| 03:00 | 25 |
| 04:00 | 28 |
| 05:00 | 17 |
| 06:00 | 22 |
| 07:00 | 23 |
| 08:00 | 13 |
| 09:00 | 23 |
| 10:00 | 20 |
| 11:00 | 18 |
| 12:00 | 23 |
| 13:00 | 20 |
| 14:00 | 22 |
| 15:00 | 22 |
| 16:00 | 18 |
| 17:00 | 21 |
| 18:00 | 14 |
| 19:00 | 29 |
| 20:00 | 17 |
| 21:00 | 26 |
| 22:00 | 24 |
| 23:00 | 15 |

## 4. Top 5 Mensajes de Error

| Frecuencia | Mensaje |
|------------|---------|
| 62 | Connection timeout after 30s |
| 52 | Authentication failed for user admin |
| 18 | Out of memory error in module X |
| 16 | Database connection refused |
| 15 | Failed to write to disk |

## 5. Resumen

- Sistema analizado con 500 eventos registrados
- 163 eventos requieren atención (ERROR y FATAL)
- Análisis completado con herramientas UNIX estándar

---

Reporte generado automáticamente por log-analyzer.sh
