# Reporte de Analisis de Logs

** Archivo analizado :** sample.log  
** Fecha del analisis :** 2026-02-28 17:47:50  
** Total de entradas :** 500

---

## 1. Top 10 Direcciones IP

| Solicitudes | Direccion IP |
|-------------|--------------|
| 158 | 192.168.1.10 |
| 128 | 10.0.0.5 |
| 58 | 192.168.1.25 |
| 56 | 10.0.0.99 |
| 53 | 203.0.113.42 |
| 47 | 172.16.0.3 |

## 2. Distribucion por Severidad

| Nivel | Cantidad |
|-------|----------|
| FATAL | 90 |
| ERROR | 72 |
| WARNING | 90 |
| INFO | 248 |

## 3. Eventos por Hora

| Hora | Eventos |
|------|---------|
| 00:00 | 16 |
| 01:00 | 26 |
| 02:00 | 24 |
| 03:00 | 15 |
| 04:00 | 23 |
| 05:00 | 21 |
| 06:00 | 18 |
| 07:00 | 26 |
| 08:00 | 15 |
| 09:00 | 29 |
| 10:00 | 24 |
| 11:00 | 20 |
| 12:00 | 17 |
| 13:00 | 17 |
| 14:00 | 27 |
| 15:00 | 17 |
| 16:00 | 14 |
| 17:00 | 23 |
| 18:00 | 18 |
| 19:00 | 22 |
| 20:00 | 25 |
| 21:00 | 20 |
| 22:00 | 21 |
| 23:00 | 22 |

## 4. Top 5 Mensajes de Error

| Frecuencia | Mensaje |
|------------|----------|
| 52 | Connectiontimeoutafter30s |
| 48 | Authenticationfailedforuseradmin |
| 24 | OutofmemoryerrorinmoduleX |
| 20 | Databaseconnectionrefused |
| 18 | Failedtowritetodisk |

## 5. Resumen

- Sistema analizado con 500 eventos registrados
- 162 eventos requieren atencion (ERROR y FATAL)
- Analisis completado con herramientas UNIX estandar

