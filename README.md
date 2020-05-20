# TP5 - REDES

# Uso:
Clonar el repo
```bash
make init
```
# Consumir endpoints
Se provee de recetas de makefile ya hechas

Petición `GET /alumnos`
```bash
make get_all_alumnos_from_host_3
```
Petición `POST /alumnos` inserta un alumno
```bash
make post_single_alumno_from_host_3
```
Petición `DELETE /alumnos/{id}` borra un alumno
```bash
make delete_single_alumno_from_host_3
```