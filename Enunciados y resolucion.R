#Problema1 (solo tabla)----

# |   | d1 | d2 | d3 | d4 |
#   |---|----|----|----|----|
#   | e1|  3 | 25 |  2 | 18 |
#   | e2| 23 | 35 | 28 |  9 |
#   | e3| 39 |  7 |  7 | 32 |
source("TDecisionCodigo/teoriadecision_funciones_incertidumbre.R")
vec<-c(3,25,2,18,23,35,28,9,39,7,7,32)  
X<-crea.tablaX(vec,3,4)

#Wald
criterio.Wald(X)
criterio.Wald(X,favorable=F)


#Optimista
criterio.Optimista(X)
criterio.Optimista(X,favorable = F)

#Hurwicz
dibuja.criterio.Hurwicz(X)
dibuja.criterio.Hurwicz_Intervalos(X)
dibuja.criterio.Hurwicz(X,favorable = F)
dibuja.criterio.Hurwicz_Intervalos(X,favorable = F)

#Savage
criterio.Savage(X)
criterio.Savage(X,favorable = F)

#Laplace
criterio.Laplace(X)
criterio.Laplace(X,favorable = F)

#Punto_Ideal
criterio.PuntoIdeal(X)
criterio.PuntoIdeal(X,favorable = F)

#Problema2 (testo y solucion)

# Una cadena de restaurantes está planificando la expansión en tres nuevas ciudades.
# Las opciones son:
#   
#   -   **Ciudad A**: Una gran metrópoli con alta demanda pero también con alta competencia.
# -   **Ciudad B**: Una ciudad de tamaño mediano con menor competencia.
# -   **Ciudad C**: Una ciudad pequeña con bajos costos operativos, pero con una demanda potencialmente reducida.
# 
# El éxito de la expansión depende de cómo los consumidores respondan a la apertura del restaurante, lo que puede ser: - **Alta demanda**: Muchos consumidores y alta rentabilidad.
# - **Demanda media**: Demanda estable y beneficios moderados.
# - **Baja demanda**: Baja afluencia de clientes y beneficios limitados.
# 
# ### **Tabla de Decisión (Beneficios estimados en miles de euros)**
# 
# | Ciudad       | Alta demanda (k€) | Demanda media (k€) | Baja demanda (k€) |
#   |--------------|-------------------|--------------------|-------------------|
#   | **Ciudad A** | 600               | 400                | 100               |
#   | **Ciudad B** | 900               | 600                | 200               |
#   | **Ciudad C** | 1200              | 700                | 50                |
  

vec2<-c(600,400,100,900,600,200,1200,700,50)#valores en k€
X2<-crea.tablaX(vec2,3,3)

criterio.Todos(X2,alfa=0.3,favorable=TRUE)
