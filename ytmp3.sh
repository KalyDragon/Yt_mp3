#!/bin/bash

BOLD="\e[1m"
RESET="\e[0m"

# Vérifier si pipx est installé
if ! command -v pipx > /dev/null; then
  echo "pipx n'est pas installé. Installation en cours..."
  sudo apt update
  sudo apt install pipx -y
  pipx ensurepath
  echo "pipx a été installé avec succès."
fi

# Vérifier si yt-dlp est installé
if ! command -v yt-dlp > /dev/null; then
  echo "yt-dlp n'est pas installé. Installation en cours..."
  pipx install yt-dlp
  echo "yt-dlp a été installé avec succès."

# Définir le répertoire de téléchargement
DOWNLOAD_DIR="$HOME/Téléchargements"

# Ajouter le chemin pipx à PATH pour s'assurer que yt-dlp est accessible
export PATH="$HOME/.local/bin:$PATH"

# Définir le fichier des cookies et l'User-Agent
COOKIES_FILE="#Le chemin du fichier cookies.txt"
USER_AGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

# Vérifier si l'URL est fournie
if [ -z "$1" ]; then
  echo "❌ Usage : $0 <URL YouTube>"
  exit 1
fi

# Vérifier si yt-dlp est accessible
if ! command -v yt-dlp > /dev/null; then
  echo "❌ yt-dlp n'est pas accessible. Assurez-vous qu'il est installé via pipx et que le PATH est correct."
  exit 1
fi

# Télécharger l'audio au format MP3 avec yt-dlp
echo -e "${BOLD}🎵 Téléchargement de l'audio en cours...${RESET}"| lolcat
if [ -f "$COOKIES_FILE" ]; then
  yt-dlp --cookies "$COOKIES_FILE" --user-agent "$USER_AGENT" -x --audio-format mp3 -o "$DOWNLOAD_DIR/%(title)s.%(ext)s" "$1"
else
  yt-dlp --user-agent "$USER_AGENT" -x --audio-format mp3 -o "$DOWNLOAD_DIR/%(title)s.%(ext)s" "$1"
fi

# Vérifier si le téléchargement a réussi
if [ $? -eq 0 ]; then
  echo -e "${BOLD}✅ Téléchargement terminé avec succès !${RESET}" | lolcat
else
  echo -e "${BOLD}${RED}❌ Erreur lors du téléchargement.${RESET}"
  exit 1
fi
