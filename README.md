# Rasgos funcionales de las plantas nativas más visitadas por *Bombus dahlbomii* en Chile

🐝🌿 Una aproximación para la selección de especies de flora que favorezcan el hábitat de un polinizador en peligro.🌿🐝

Este repositorio contiene el análisis exploratorio y la visualización de datos asociados a las principales plantas nativas visitadas por *Bombus dahlbomii* en Chile.

---

## 📑Contexto
*Bombus dahlbomii*, conocido como el “abejorro colorado”, es el único abejorro nativo de gran tamaño en Chile y un polinizador clave de los bosques templados y matorrales esclerófilos. Su importancia ecológica es notable: se ha registrado visitando 84 especies vegetales pertenecientes a 42 familias, de las cuales alrededor del 75 % corresponde a flora nativa (Montalva et al., 2011; Museo de Historia Natural de Concepción). Este vínculo incluye numerosas plantas endémicas de Chile, muchas de ellas dependientes de polinizadores especializados para su reproducción.

Durante las últimas décadas, sus poblaciones han sufrido un declive acelerado asociado a la pérdida de hábitat y, especialmente, a la invasión del abejorro europeo *Bombus terrestris*, introducido para la agricultura. Esta especie exótica compite por recursos florales, transmite patógenos y desplaza al abejorro nativo, lo que ha llevado a *B. dahlbomii* a ser catalogado como En Peligro (UICN; Montalva & Ruz 2010).

El presente análisis utiliza una aproximación basada en rasgos funcionales, utilizando el dataset *Rasgos-CL* de dylancraven, de las plantas visitadas por B. dahlbomii. Este enfoque permite ir más allá del listado puntual de especies presentes en los registros asociados al abejorro, extraidos del dataset *pollination_catalogue* de Giselle Muschett y Francisco E. Fontúrbel, generalizando sus características florales preferidas, tales como forma, tamaño, color y fenología. Al identificar estos patrones funcionales, es posible inferir qué otras especies podrían ser igualmente valiosas para su alimentación, aunque no aparezcan explícitamente en el dataset, ofreciendo así una herramienta más flexible y robusta para diseñar procesos de restauración y manejo del hábitat.

## 📍Objetivo
Identificar los rasgos funcionales de las principales especies vegetales visitadas por *Bombus dahlbomii*, con el fin de poder guiar acciones de restauración ecológica y selección de flora favorable para este polinizador nativo en peligro.

## 🎓Audiencia
Este análisis está dirigido a estudiantes, investigadores y profesionales interesados en la conservación de polinizadores nativos, la restauración ecológica y la ecología funcional. También puede ser útil para tomadores de decisiones y gestores ambientales que buscan seleccionar flora nativa adecuada para apoyar a *Bombus dahlbomii* en paisajes tanto productivos como naturales.

## 📂Datos
Este proyecto utiliza dos conjuntos de datos principales, ambos relacionados con interacciones planta–polinizador y rasgos funcionales de la flora nativa de Chile.

1. `RasgosCL_aggregatedspp.csv`
Este archivo contiene información sintetizada de rasgos funcionales de especies vegetales nativas y endémicas de Chile.
Estos rasgos permiten caracterizar funcionalmente a las plantas visitadas por *Bombus dahlbomii* y explorar patrones más allá del listado puntual de especies.

Fuente: Proyecto *RasgosCL* — Base de datos de rasgos funcionales de la flora chilena.  
Autores: Alfaro, E., Pérez-Tello, V., Acevedo, M., Ovalle, J., Segovia, R., & Craven, D.
Repositorio: https://github.com/dylancraven/Rasgos-CL   

2. `pollination_catalogue.csv`
Corresponde a un catálogo de interacciones planta–polinizador en Chile.    
Desde este dataset se filtran específicamente las interacciones asociadas a *Bombus dahlbomii* para identificar qué especies de plantas utiliza este polinizador nativo.

Fuente: Catálogo de interacciones planta–polinizador de Chile.  
Autores: Fontúrbel, F. E., González-Lagos, C., & Medel, R. 
Repositorio: https://github.com/fonturbel-lab/pollination_catalogue

## 📚Estructura del repositorio

```
B.dahlbomii_plantas_visitadas/
│
├── Data/                      
│   ├── RasgosCL_aggregatedspp.csv
│   └── pollination_catalogue.csv
│
├── Outputs/                       
│
├── scr/                        
│   ├── Cargar datos.R
│   ├── Exploracion y limpieza de datos.R
│   └── Gráficos.R
│
├── .gitignore                    
├── B.dahlbomii_plantas_visitadas.Rproj
└── README.md                  
```
--- 
## 📊Resultados


---
## 🐝🌾Autor
Investigacion realizada por Vicente Vázquez, Agrónomo especializado en gestión ambiental y estudiante de Magíster en Recursos Naturales en la UC, como parte del curso Visualización de Datos Medioambientales.

## 🤖Declaración de uso de IA generativa
Durante el desarrollo de este proyecto se utilizaron herramientas de IA generativa (ChatGPT) para apoyar tareas de:

- Organización de la estructura del repositorio,  
- Generación de ejemplos de código y flujos de trabajo reproducibles,  
- Corrección de mensajes de error y documentación del proceso.

El análisis, las decisiones metodológicas, la interpretación de resultados y el código final fueron realizados y verificados de manera independiente por el autor.

## 📑Bibliografía

Alfaro, E., Pérez-Tello, V., Acevedo, M., Ovalle, J., Segovia, R., & Craven, D. (2023). Rasgos-CL: A functional trait database of Chilean woody plants. Global Ecology and Biogeography, 32, 2072–2084. https://doi.org/10.1111/geb.13755

Fontúrbel, F. E., González-Lagos, C., & Medel, R. (2021). pollination_catalogue: A comprehensive database of plant–pollinator interactions in Chile. Zenodo. https://doi.org/10.5281/zenodo.4588406

Montalva, J., Ruz, L., & Arroyo, M. T. (2011). Abejorros nativos de Chile y flores asociadas.

Montalva, J., & Ruz, L. (2010). Conservation status of *Bombus dahlbomii*, the native bumblebee of Chile.

Museo de Historia Natural de Concepción (s.f.). El abejorro colorado. 
