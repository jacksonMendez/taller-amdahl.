# Taller: Ley de Amdahl y Evaluación de Rendimiento

Implementación en lenguaje C para el conteo de números primos, comparando una versión secuencial contra una versión paralela desarrollada con OpenMP.

## Estructura del Proyecto

- `src/`: Contiene el código fuente secuencial y paralelo (`primes_number_sequential.c` y `primes_number_parallel.c`).
- `Makefile`: Script de compilación automatizada.
- `.gitignore`: Filtro para binarios y temporales.
- `README.md`: Instrucciones de uso y ejecución del proyecto.

## Compilación y Ejecución

### Compilación automatizada
Para compilar ambas versiones en la carpeta `bin/`:
```bash
make
```

### Ejecución de los programas

Ejecutar versión secuencial:
```bash
./bin/primes_seq
```

Ejecutar versión paralela configurando los hilos de ejecución:
```bash
OMP_NUM_THREADS=12 ./bin/primes_par
```

### Limpieza de binarios
Para eliminar los archivos compilados:
```bash
make clean
```