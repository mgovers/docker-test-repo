git clone git@github.com:PowerGridModel/power-grid-model.git
cd power-grid-model
git status

sh ./build.sh -p gcc_debug -e -i -t || exit 1
