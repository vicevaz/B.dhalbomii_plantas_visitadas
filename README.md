# Rasgos funcionales de las plantas nativas más visitadas por *Bombus dahlbomii* en Chile

🐝🌿🐝 Una aproximación para la selección de especies de flora que favorezcan el hábitat de un polinizador en peligro.🐝🌿🐝

Este repositorio contiene el análisis exploratorio y la visualización de datos asociados a las principales plantas nativas visitadas por *Bombus dahlbomii* en Chile.

---

## Contexto
*Bombus dahlbomii*, conocido como el “abejorro colorado”, es el único abejorro nativo de gran tamaño en Chile y un polinizador clave de los bosques templados y matorrales esclerófilos. Su importancia ecológica es notable: se ha registrado visitando 84 especies vegetales pertenecientes a 42 familias, de las cuales alrededor del 75 % corresponde a flora nativa (Montalva et al., 2011; Museo de Historia Natural de Concepción). Este vínculo incluye numerosas plantas endémicas de Chile, muchas de ellas dependientes de polinizadores especializados para su reproducción.

Durante las últimas décadas, sus poblaciones han sufrido un declive acelerado asociado a la pérdida de hábitat y, especialmente, a la invasión del abejorro europeo *Bombus terrestris*, introducido para la agricultura. Esta especie exótica compite por recursos florales, transmite patógenos y desplaza al abejorro nativo, lo que ha llevado a *B. dahlbomii* a ser catalogado como En Peligro (UICN; Montalva & Ruz 2010).

El presente análisis utiliza una aproximación basada en rasgos funcionales, utilizando el dataset *Rasgos-CL* de dylancraven, de las plantas visitadas por B. dahlbomii. Este enfoque permite ir más allá del listado puntual de especies presentes en los registros asociados al abejorro, extraidos del dataset *pollination_catalogue* de Giselle Muschett y Francisco E. Fontúrbel, generalizando sus características florales preferidas, tales como forma, tamaño, color y fenología. Al identificar estos patrones funcionales, es posible inferir qué otras especies podrían ser igualmente valiosas para su alimentación, aunque no aparezcan explícitamente en el dataset, ofreciendo así una herramienta más flexible y robusta para diseñar procesos de restauración y manejo del hábitat.

## Objetivo
Identificar los rasgos funcionales de las principales especies vegetales visitadas por *Bombus dahlbomii*, con el fin de poder guiar acciones de restauración ecológica y selección de flora favorable para este polinizador nativo en peligro.

## Estructura del repositorio

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

## Bibliografía

Montalva, J., Ruz, L., & Arroyo, M. T. (2011). Abejorros nativos de Chile y flores asociadas.

Montalva, J., & Ruz, L. (2010). Conservation status of *Bombus dahlbomii*, the native bumblebee of Chile.

Museo de Historia Natural de Concepción (s.f.). El abejorro colorado. 
