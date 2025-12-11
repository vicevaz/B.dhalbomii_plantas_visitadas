## Proyecto: Bombus dahlbomii - rasgos funcionales
## Carga y limpieza de datos


## 0 Paquetes
library(tidyverse)
library(janitor)

## 1 Cargar datos crudos
rasgos_raw <- read_csv("Data/RasgosCL_aggregatedspp.csv")

poll_raw <- read_delim(
  "Data/pollination_catalogue.csv",
  delim = ";"
)
glimpse(rasgos_raw)
glimpse(poll_raw)

## 2 Limpieza básica de nombres de columnas
rasgos <- rasgos_raw %>% 
  clean_names()

poll <- poll_raw %>% 
  clean_names()

glimpse(rasgos)
glimpse(poll)


## 3 Filtrar solo interacciones con Bombus dahlbomii
poll_bd <- poll %>% 
  filter(str_detect(scientific_name_animals , "Bombus dahlbomii"))

# Revisar cuántos registros quedan
nrow(poll_bd)
poll_bd %>% count(scientific_name_animals )

## 4 Hacer un resumen por familia y especie de planta

visitas_por_familia <- poll_bd %>% 
  filter(!is.na(family_plants)) %>%   # ← elimina NA aquí
  group_by(family_plants) %>% 
  summarise(
    n_registros = n(),
    .groups = "drop"
  ) %>% 
  arrange(desc(n_registros))

visitas_por_especie <- poll_bd %>% 
  group_by(scientific_name_plants) %>% 
  summarise(
    n_registros = n(),
    .groups     = "drop"
  ) %>% 
  arrange(desc(n_registros))


## 5 Guardar versiones listas

write_csv(rasgos,          "Data/rasgos_clean.csv")
write_csv(poll_bd,         "Data/pollination_bd.csv")
write_csv(visitas_por_familia, "Data/visitas_por_familia_bd.csv")
write_csv(visitas_por_especie, "Data/visitas_por_especie_bd.csv")
