APP_NAME=sampleapp


# git pull
echo "git pull"
git pull

# venv 
echo "start to activate venv"
source /djenv/bin/activate

#runserver
echo "runserver"
python $APP_NAME/manage.py runserver 0.0.0.0:8000