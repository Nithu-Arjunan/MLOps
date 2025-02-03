# importing the base file

FROM python:3.9-slim


# Creating a working directory

WORKDIR /DataSenseCareerGuide


# Copy the current directory contents into the container at /DataSense Career Guide

COPY . /DataSenseCareerGuide
COPY requirements.txt /DataSenseCareerGuide/requirements.txt

# Install dependencies

RUN pip install -r requirements.txt

#RUN python -m pip install --upgrade pip
#RUN pip install --no-cache-dir -r requirements.txt --verbose

# Running the file

CMD ["python", "main.py"]