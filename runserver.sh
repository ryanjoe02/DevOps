APP_NAME=sampleapp


# git pull
echo "git pull"
git pull

# venv 
echo "start to activate venv"
# For Window user
if [ -d "djenv/Script" ]; then
    source djenv/Script/activate
else
    source djenv/bin/activate
fi

#runserver
echo "runserver"
python $APP_NAME/manage.py runserver 0.0.0.0:8000