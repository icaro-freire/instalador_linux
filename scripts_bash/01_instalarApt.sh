#!/bin/bash

#===========================================================================
# Nome     : 01_instalarApt.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Instalando programas que uso dos repositórios oficiais
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

# lista de programas ----------------------------------------------------->>
PROGRAMAS_APT=(
  wget
  tree
  locate
  nala
  testdisk 
  rsync
  git-flow
  zsh
  zathura
  zathura-cb
  zathura-ps
  zathura-djvu
  okular
  cowsay
  r-base
  r-base-dev
  default-jre 
  default-jdk
  libfreetype-dev
  libfontconfig1-dev
  libpng-dev
  libtiff5-dev
  libjpeg-dev
  libssl-dev
  libcurl4-openssl-dev
  libxml2-dev
  maxima
  octave
  telegram-desktop
  python3-pip
  gawk
  vlc
)
#-------------------------------------------------------------------------<<

# criando função --------------------------------------------------------->>
instalar_apt ()
{
  echo  
  echo "##### Atualizando repositórios ============================================="
  echo 
  sudo apt update -qq
  sudo apt upgrade
  echo 
  echo "##### Instalando programas via apt ========================================="
  echo 
  for programas_apt in "${PROGRAMAS_APT[@]}"
  do
    sudo apt install "$programas_apt" -y
  done
  echo 
  echo "------- FIM (instalar_apt)"
}
#-------------------------------------------------------------------------<<

# executando a função ------------------------------------------------------
instalar_apt
