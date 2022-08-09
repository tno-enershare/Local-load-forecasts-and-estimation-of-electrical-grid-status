SET OUTPUT_FOLDER=ESDL

curl -X GET https://raw.githubusercontent.com/EnergyTransition/ESDL/master/esdl/model/esdl.ecore > %OUTPUT_FOLDER%\esdl.ecore
pyecoregen -vvv -e %OUTPUT_FOLDER%/esdl.ecore -o %OUTPUT_FOLDER%/ --with-dependencies --auto-register-package --user-module esdl_mixins

echo DONE!