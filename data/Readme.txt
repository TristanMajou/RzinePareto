# Placer vos données documentées par des métadonnées dans ce dossier

ne_50m_land :
    description: polygones représentant les surfaces terrestres, utilisé pour le fond de carte.
    version: 4.1.0
    url: https://www.naturalearthdata.com/downloads/50m-physical-vectors/
    variables:
        scalerank: niveau d'échelle (non utilisé)
        featurecla: type de polygone (non utilisé)
        min_zoom: paramètre de zoom pour les logiciels SIG (non utilisé)

ne_50m_ocean:
    description: polygone représentant l'océan, utilisé pour le fond de carte.
    version: 4.1.0
    url: https://www.naturalearthdata.com/downloads/50m-physical-vectors/
    variables:
        scalerank: niveau d'échelle (non utilisé)
        featurecla: type de polygone (non utilisé)
        min_zoom: paramètre de zoom pour les logiciels SIG (non utilisé)

départements:
    description: données identifiant les départements français. la géométrie a été simplifiée en utilisant R afin de réduire la taille des données.
    version: ADMIN EXPRESS (édition juin 2026)
    url: https://cartes.gouv.fr/rechercher-une-donnee/dataset/IGNF_ADMIN-EXPRESS
    variables:
        fid: FeatureID
        cleabs: clé absolue de l'objet surfacique
        nom_officiel: nom officiel du département
        nom_officiel_en_majuscules: nom officiel du département en majuscules
        code_insee: code Insee du département
        code_insee_de_la_region: code Insee de la région englobant le département
        code_siren: code siren du département

insee_locale:
    description: tableau de données produit en utilisant l'observatoire des territoires, la plupart des données valent pour l'année 2022, l'extraction a été faite le 12 juin 2026. Les données manquantes de Mayotte ont été calquées sur celles de la réunion.
    url: https://www.observatoire-des-territoires.gouv.fr/outils/cartographie-interactive/
    variables:
        scol: Part des non ou peu diplômés dans la pop. non scolarisée de 15 ans ou + (2022)
        ndv: Médiane du niveau de vie (2021)
        chom: Taux de chômage annuel moyen (2024)
        suro: Part des logements en situation de sur-occupation (2021)
        eprox: Part de la population éloignée des équipements de proximité (2021)
        morti: Taux de mortalité infantile (2021-2023)



