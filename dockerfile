from python:latest

# Set up application root directory
RUN mkdir /HS_Assignment
WORKDIR /HS_Assignment

# Set up application structure and files
ADD src /HS_Assignment/src
ADD features /HS_Assignment/features

# Execute the app
CMD [ "python", "sort_cities.py" ]