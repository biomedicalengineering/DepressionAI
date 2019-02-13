#FROM python:3.5

#ADD voice.py /

#WORKDIR /depressionai/

#EXPOSE 5000

#RUN pip install -r requirements.txt

#CMD [ "python3", "./voice.py" ]

# Dockerfile
# Using the official Python 3.6 image
FROM python:3.6
# Set the Work Directory
WORKDIR /usr/depressionai/
# Copy over the requirements.txt file
COPY ./requirements.txt /usr/depressionai/requirements.txt
# Install the project's dependencies
RUN pip install -r requirements.txt
# Copy the project codes into the Work Directory
COPY . /usr/src/app
# Expose port so that it's accessible to external connections
EXPOSE 5000
# Run the Flask application
CMD ["python", "./voice.py"]
