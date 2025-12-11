## Proyecto: Bombus dahlbomii – rasgos funcionales


library(tidyverse)

## 1. Cargar datos limpios
visitas_por_familia <- read_csv("Data/visitas_por_familia_bd.csv")

## 2. Gráfico: Familias más visitadas por Bombus dahlbomii

graf_familias <- visitas_por_familia %>% 
  slice_max(n_registros, n = 10) %>%     # Top 10 familias (puedes cambiarlo)
  ggplot(aes(x = reorder(family_plants, n_registros),
             y = n_registros)) +
  geom_col(fill = "#FF7F00") +           # Naranjo "abejorro"
  coord_flip() +                         # Gira para que sea más legible
  labs(
    title = "Familias de plantas más visitadas por Bombus dahlbomii",
    x = "Familia",
    y = "Número de registros"
  ) +
  theme_minimal(base_size = 12)

graf_familias

## 3. Guardar el gráfico
ggsave(
  filename = "Outputs/familias_mas_visitadas.png",
  plot = graf_familias,
  width = 8,
  height = 6,
  dpi = 300
)
