FROM python:slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt --break-system-packages

EXPOSE 5001


ENV FLASK_APP=main.py


ENTRYPOINT [ "flask" ]
CMD ["run", "--host", "0.0.0.0", "--port", "5001"]
