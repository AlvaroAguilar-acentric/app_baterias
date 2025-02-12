FROM amazon/aws-sam-cli-build-image-python3.8
# Copia e instala dependencias de Python
COPY requirements.txt ${LAMBDA_TASK_ROOT}

RUN pip install -r requirements.txt --no-cache-dir

FROM public.ecr.aws/lambda/python:3.13



# Copia el código de la aplicación
COPY app.py ${LAMBDA_TASK_ROOT}

# Define el comando por defecto para Lambda
CMD ["app.handler"]
