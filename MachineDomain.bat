@echo off
REM Copyright (c) 2016, Pierre Saikaly  (saikalypierre@gmail.com)
REM Copyright (c) 2017, RTE (Author: Frederic Troalen)
REM This Source Code Form is subject to the terms of the Mozilla Public
REM License, v. 2.0. If a copy of the MPL was not distributed with this
REM file, You can obtain one at http://mozilla.org/MPL/2.0/.
cls

echo #=======================================================#
echo #                                                       #              
echo #     RECHERCHE DU DOMAINE DE SIMULATION STABLE         #
echo #                                                       #
echo #=======================================================#
echo.
echo #=======================INFORMATION=====================#
echo #                                                       #
echo # Vous devez utiliser ce programme dans le repertoire   #
echo # contenant un fichier .dta et les regulateurs associes #
echo # aux machine ainsi qu'un dictionnaire                  #
echo #                                                       #
echo #=======================================================#
echo.

set /p RefdtaFile= Indiquer le fichier .dta : 
echo.
set /p generatorsFile= Indiquer le fichier contenant les generateurs a traiter : 
echo.
set /p dictFile= Indiquer le fichier dictionnaire : 
echo.

echo Les generateurs a traiter sont :
type %generatorsFile%
echo.

echo.
echo Confirmer ?
pause

python ./IndusMachineDomain.py %RefdtaFile% %generatorsFile% %dictFile%

pause

python ./IndusMachineDomain2.py %RefdtaFile% %generatorsFile% %dictFile%

pause