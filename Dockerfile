FROM ubuntu:latest
RUN apt update -y
RUN apt install -y python3.10 python3-pip python3.10-dev
COPY ./backend/main.py /app/main.py
COPY ./backend/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python3","main.py"]