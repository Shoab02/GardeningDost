FROM python:3.8.16-slim

RUN apt-get update

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/

RUN pip install -r requirements.txt

CMD [ "streamlit","run","false","leaf_classifier.py" ]
