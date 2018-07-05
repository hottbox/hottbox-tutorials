#!/bin/bash

RED="\033[0;31m"
GREEN="\033[0;32m"
CYAN="\033[0;36m"
BROWN="\033[0;33m"
WHITE="\033[0;0m"

VENV_NAME="hottbox-tutorials"
proceed_installation=1

welcome_message(){
printf "\n====================================================================\n"


printf "\n\tWelcome to a series of tutorials on HOTTBOX. \n\n"
printf "This script will prepare a virtual environment for these tutorials. \n"
printf "Here is what is going to happen during this process: \n\n"
printf "1) Use anaconda to create a new venv: ${GREEN}${VENV_NAME}${WHITE} \n\n"
printf "2) Install required packages: \n"
cat requirements.txt
printf "\n\n"
printf "3) Install ipykernel: ${GREEN}${VENV_NAME}${WHITE}\n"

printf "\n====================================================================\n\n"

}


##################################################################
###--------------------        Main        --------------------###
##################################################################


welcome_message


printf "Do you want to proceed? (y/n) "
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
if echo "$answer" | grep -iq "^y" ;then
    echo -e "\nFingers crossed and start $GREEN :-/ $WHITE"
else
    echo -e "\nQuitting $RED :-( $WHITE\n"
    proceed_installation=0
fi

###-------- Check if conda installation exists
if [[ ($proceed_installation == 1) ]]; then
    printf "\nChecking to see if ${GREEN}anaconda${WHITE} is installed: "
    if ! [ -x "$(command -v conda)" ]; then
        echo -e "${RED}not installed${WHITE}.\n"
        echo -e "You need have ${RED}anaconda${WHITE} to proceed with this script."
        echo -e "Abort installation, nothing has been configured.\n"
        proceed_installation=0
    else
        echo -e "${GREEN}yes, it is${WHITE}."
    fi
fi

###-------- Environment creation
if [[ ($proceed_installation == 1) ]]; then
    conda create --name ${VENV_NAME} python=3.6
    source activate ${VENV_NAME}
    VENV_HOME="$(which python)"

    pip install --upgrade pip
    pip install -r requirements.txt
    python -m ipykernel install --user --name ${VENV_NAME} --display-name ${VENV_NAME}

    printf "\n"
    printf "====================================================================\n"
    printf "============                                            ============\n"
    printf "============        Working environment is ready        ============\n"
    printf "============                                            ============\n"
    printf "====================================================================\n"
    printf "\n"
    printf "1) Python interpreter for '$VENV_NAME' is located in: \n\n\t"
    printf "${VENV_HOME}\n\n"

    printf "2) The associate ipython kernel (used in the tutorials by default) is located in: \n\n\t"
    jupyter kernelspec list | grep "$VENV_NAME"

    printf "\n"
    printf "3) You can also select this kernel (${VENV_NAME}), if you want to play around in your own notebook.\n\n"

    source deactivate
fi
