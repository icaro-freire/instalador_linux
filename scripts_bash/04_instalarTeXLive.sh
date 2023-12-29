#!/bin/bash

#===========================================================================
# Nome     : 04_instalarTeXLive.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: 
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

instalar_texlive() {
  echo 
  echo "##### Instalando LaTeX (vai demorar!) ======================================="
  echo 
  cd /tmp
  wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  zcat < install-tl-unx.tar.gz | tar xf -
  cd install-tl-*
  perl ./install-tl --no-interaction
  echo "----- Lembrar de setar o caminho"
}

instalar_texlive
