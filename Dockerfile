FROM amazon/aws-sam-cli-build-image-python3.8
# Copia e instala dependencias de Python
COPY requirements.txt ./

RUN pip install -r requirements.txt --no-cache-dir

FROM public.ecr.aws/lambda/python:3.13



# Copia el código de la aplicación
COPY app.py ./

# Define el comando por defecto para Lambda
CMD ["app.handler"]