# Use official python runtime as base image
FROM python:3.8-slim

# set the working directory in the container
WORKDIR /app

# copy the current directory content into the container at /app
COPY . /app

# install ant needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# make port 80 available to the world outside this container
EXPOSE 80

# define environment variable
ENV NAME=World

# run app.py when the container launches
CMD ["python", "app.py"]