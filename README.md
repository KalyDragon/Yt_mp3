# YouTube Audio Downloader 🎵
Ce script Bash permet de télécharger l'audio d'une vidéo YouTube au format MP3 en utilisant yt-dlp. Il vérifie et installe automatiquement les dépendances nécessaires (pipx et yt-dlp) si elles ne sont pas déjà installées.

## Fonctionnalités ✨
Télécharge l'audio d'une vidéo YouTube au format MP3.

Vérifie et installe automatiquement pipx et yt-dlp si nécessaire.

Utilise un fichier cookies.txt pour accéder à des contenus restreints (optionnel).

Affiche des messages colorés et en gras pour une meilleure lisibilité.

Enregistre les fichiers téléchargés dans le dossier Téléchargements de l'utilisateur.

## Prérequis 📋
Bash : Le script est conçu pour fonctionner dans un environnement Bash.

pipx : Utilisé pour installer yt-dlp de manière isolée.

yt-dlp : Outil de téléchargement de vidéos YouTube.

## Installation 🛠️
Télécharge le script :

Copie le script dans un fichier, par exemple youtube_audio_downloader.sh.

Rends le script exécutable :

chmod +x youtube_audio_downloader.sh
Exécute le script :

./youtube_audio_downloader.sh <URL YouTube>
Utilisation 🚀
Commande de base
./youtube_audio_downloader.sh <URL YouTube>
Options
URL YouTube : L'URL de la vidéo YouTube dont tu souhaites télécharger l'audio.

Fichier cookies : Si tu as un fichier cookies.txt pour accéder à des contenus restreints, modifie la variable COOKIES_FILE dans le script pour pointer vers ton fichier.

## Exemple 📥
Télécharger l'audio d'une vidéo YouTube :

./youtube_audio_downloader.sh https://www.youtube.com/watch?v=hswqVIDA_Kc
Fonctionnement du script ⚙️
Vérification des dépendances :

Le script vérifie si pipx et yt-dlp sont installés. Si ce n'est pas le cas, il les installe automatiquement.

Téléchargement de l'audio :

Le script utilise yt-dlp pour extraire et télécharger l'audio au format MP3.

Les fichiers sont enregistrés dans le dossier Téléchargements de l'utilisateur.

Messages colorés :

Les messages de progression et de succès/échec sont affichés en gras et en couleur pour une meilleure lisibilité.

## Personnalisation 🎨
Répertoire de téléchargement :
Modifie la variable DOWNLOAD_DIR dans le script pour changer le dossier de destination des fichiers téléchargés.

Fichier cookies :
Si tu as un fichier cookies.txt, définis son chemin dans la variable COOKIES_FILE.

User-Agent :
Tu peux modifier la variable USER_AGENT pour utiliser un autre agent utilisateur.

Messages d'erreur courants ❌
yt-dlp n'est pas accessible :
Assure-toi que pipx est correctement installé et que le chemin $HOME/.local/bin est inclus dans ton PATH.

Usage : ./youtube_audio_downloader.sh <URL YouTube> :
Tu as oublié de fournir l'URL de la vidéo YouTube en argument.

## Améliorations possibles 🔧
Ajouter une option pour choisir le format de sortie (MP3, AAC, etc.).

Permettre de télécharger plusieurs URLs en une seule commande.

Ajouter une option pour spécifier un répertoire de téléchargement personnalisé via la ligne de commande.

## Auteur 👤
Nom : [Ton nom]

Contact : [Ton email ou GitHub]

## Licence 📜
Ce projet est sous licence MIT. N'hésite pas à le modifier et à l'utiliser selon tes besoins.
