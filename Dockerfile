FROM python:3.12-alpine
LABEL author='Gjorgjija Veljanovski'

WORKDIR /app
COPY . .
RUN apk --no-cache add curl
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 3000
ENTRYPOINT [ "python", "app.py" ]