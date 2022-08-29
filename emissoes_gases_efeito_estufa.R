
# Emissões de gases de efeito estufa -------------------------------------------------------------------------------------------------------
# Autora do script: Jeanne Franco ----------------------------------------------------------------------------------------------------------
# Data: 28/08/22 ---------------------------------------------------------------------------------------------------------------------------
# Referência: https://ourworldindata.org/deforestation -------------------------------------------------------------------------------------

# Sobre os dados ---------------------------------------------------------------------------------------------------------------------------

### Como as emissões estão mudando em cada país? Seu país está tendo 
### progresso na redução das emissões de gases de efeito estufa? Nós 
### construímos 207 perfis de países que permitem explorar as estatísticas 
### sobre as emissões em todo o mundo.

### A temperatura média global tem aumentado mais que 1ºC desde a era 
### pré-industrial. Emissões por humanos de dióxido de carbono e 
### outros gases são principalmente dirigidos por mudanças 
### climáticas e apresenta-se como um dos maiores desafios da 
### sociedade. Essa ligação entre temperatura global e gases de 
### efeito estuda – especialmente CO2 – tem sido verdade ao longo 
### da história da terra.

### Para estabelecer o cenário, vamos observar como o planeta tem 
### aquecido. 

# Carregar pacotes necessários -------------------------------------------------------------------------------------------------------------

library(tidyverse)

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

eg <- read.csv("temperature-anomaly.csv")
view(eg)
names(eg)

# Manipular e selecionar dados -------------------------------------------------------------------------------------------------------------

eg1 <- eg %>%
  rename(temperatura = Median.temperature.anomaly.from.1961.1990.average) %>%
  select(Entity, Year, temperatura) %>%
  view()
