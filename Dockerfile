FROM python:3.13.0-alpine

RUN apk update \
    && apk add tesseract-ocr \
    && apk add tesseract-ocr-data-pol \
    && apk add tesseract-ocr-data-eng

COPY app /app
WORKDIR /app

RUN pip install -r requirements

ENTRYPOINT ["python3"]
CMD ["main.py"]