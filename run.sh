#!/bin/bash

echo "############################################################################"
echo "############################################################################"
echo "################################ CREATED DB ################################"
echo "############################################################################"
echo "############################################################################"
python manage.py migrate
echo "############################################################################"
echo "############################################################################"
echo "################################ IMPORT DB ################################"
echo "############################################################################"
echo "############################################################################"
echo "nothing right now\n\n\n\n"
echo "############################################################################"
echo "############################################################################"
echo "################################ Created Admin DB ##########################"
echo "############################################################################"
echo "############################################################################"
python manage.py runscript create_admin -v3
echo "############################################################################"
echo "############################################################################"
echo "################################## RUN APP #################################"
echo "############################################################################"
echo "############################################################################"
python manage.py runserver 0.0.0.0:8000
