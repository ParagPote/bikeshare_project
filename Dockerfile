# pull python base image
FROM python:3.10

# Copy application files
ADD bikeshare_project bikeshare_project

# Specify workign directory
WORKDIR /bikeshare_project

#update pip
RUN pip install --upgrade pip

#install dependencies
RUN pip install -r /bikeshare_project/requirements/requirements.txt

#expose port for application
EXPOSE 8001

#start fastapi application
CMD ["python", "app/main.py"]
