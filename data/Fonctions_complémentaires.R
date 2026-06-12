#Fonction de cartographie choroplèthe

carto<-function(x, var, type, pal, breaks){
  #Données métropolitaines uniquement
  dfm<-x %>% filter(code_insee %in% met)
  #données OM uniquement
  dfo<-x %>% filter(!code_insee %in% met)
  
  #cartographie
  mf_map(dfm,
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = "topright",
         leg_size = 1.5,
         leg_val_cex = 1.5,
         leg_title = NA)
  
  mf_inset_on(x = dfm %>% filter(code_insee %in% c("75","92","93","94")),
              fig = c(0, 0.2, 0.85, 1))
  mf_map(dfm %>% filter(code_insee %in% c("75","92","93","94")),
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Paris et petite couronne", inner = T, cex = 1.3)
  mf_inset_off()
  
  mf_inset_on(fig = c(0, 0.2, 0.65, 0.8))
  
  mf_map(dfo[1,],
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Guadeloupe", inner = T, cex = 1.3)
  
  mf_inset_off()
  
  mf_inset_on(fig = c(0, 0.2, 0.45, 0.6))
  
  mf_map(dfo[2,],
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Martinique", inner = T, cex = 1.3)
  
  mf_inset_off()
  
  mf_inset_on(fig = c(0, 0.2, 0.25, 0.4))
  
  mf_map(dfo[3,],
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Guyane", inner = T, cex = 1.3)
  
  mf_inset_off()
  
  mf_inset_on(fig = c(0.8, 1, 0.45, 0.6))
  
  mf_map(dfo[4,],
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("La Réunion", inner = T, cex = 1.3)
  
  mf_inset_off()
  
  mf_inset_on(fig = c(0.8, 1, 0.65, 0.8))
  
  mf_map(dfo[5,],
         type = type,
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Mayotte", inner = T, cex = 1.3)
  
  mf_inset_off()
  
}

#Fonction de cartographie typologique

carto_typo<-function(x, var, pal){
  was.chara<-FALSE
  #récupération de la variable typologique
  typo<-x[,which(colnames(x)==var)] %>% st_drop_geometry()
  typo<-typo %>% unlist()
  
    name <-typo %>% table() %>% names()
    typo<-typo %>% as.factor() %>% as.numeric()
    x$var<-typo
    var<-"var"
    was.chara<-TRUE


  breaks<-mf_get_breaks(typo, 
                        breaks = "fixed",
                        nbreaks = length(table(typo)))
  
  #Données métropolitaines uniquement
  dfm<-x %>% filter(code_insee %in% met)
  #données OM uniquement
  dfo<-x %>% filter(!code_insee %in% met)
  
  #cartographie
  mf_map(dfm,
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA
         )
  
  mf_inset_on(x = dfm %>% filter(code_insee %in% c("75","92","93","94")),
              fig = c(0, 0.2, 0.85, 1))
  mf_map(dfm %>% filter(code_insee %in% c("75","92","93","94")),
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Paris et petite couronne", inner = T, cex = 1.3)
  mf_inset_off()
  
  mf_inset_on(fig = c(0, 0.2, 0.65, 0.8))
  
  mf_map(dfo[which(dfo$code_insee == 971),],
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Guadeloupe", inner = T, cex = 1.3)
  mf_inset_off()
  
  mf_inset_on(fig = c(0, 0.2, 0.45, 0.6))
  
  mf_map(dfo[which(dfo$code_insee == 972),],
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Martinique", inner = T, cex = 1.3)
  mf_inset_off()
  
  mf_inset_on(fig = c(0, 0.2, 0.25, 0.4))
  
  mf_map(dfo[which(dfo$code_insee == 973),],
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Guyane", inner = T, cex = 1.3)
  mf_inset_off()
  
  mf_inset_on(fig = c(0.8, 1, 0.65, 0.8))
  
  mf_map(dfo[which(dfo$code_insee == 974),],
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("La Réunion", inner = T, cex = 1.3)
  
  mf_inset_off()
  
  mf_inset_on(fig = c(0.8, 1, 0.45, 0.6))
  
  mf_map(dfo[which(dfo$code_insee == 976),],
         type = "choro",
         breaks = breaks,
         var = var, 
         pal = pal,
         leg_pos = NA)
  mf_title("Mayotte", inner = T, cex = 1.3)
  
  mf_inset_off()
  

    
    mf_legend(val = name,
              pal = pal,
              pos = "topright",
              type = "typo",
              title = NA,
              val_cex = 2,
              title_cex = 3,
              size = 1.5)
    

  
}


#Fonction de normalisation
fnorm<-function(x){(x - min(x, na.rm = T)) / (max(x, na.rm = T) - min(x, na.rm = T))}

