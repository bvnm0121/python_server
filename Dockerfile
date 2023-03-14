FROM python:3.9.6

RUN mkdir -p src/app
WORKDIR src/app
COPY . src/app
RUN pip install fastapi
RUN pip install "uvicorn[standard]"

CMD python ./src/app/main.py