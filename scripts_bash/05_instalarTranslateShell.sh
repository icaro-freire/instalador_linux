#!/bin/bash

#===========================================================================
# Nome     : 05_instalarTranslateShell.sh
#            Copyright (c) 2023 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: 
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: 
#===========================================================================

instalar_trans() {
  echo 
  echo "##### Instalando Translate Shell ========================================"
  echo
  wget git.io/trans 
  chmod +x ./trans
  mv trans ~/bin/meus-scripts 
}

instalar_trans
