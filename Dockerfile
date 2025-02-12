FROM public.ecr.aws/lambda/python:3.13

# Copy requirements.txt
COPY requirements.txt ${LAMBDA_TASK_ROOT}

# Install the specified packages
RUN pip install -r requirements.txt

# Copia el código de la aplicación
COPY app.py ${LAMBDA_TASK_ROOT}

# Define el comando por defecto para Lambda
CMD ["app.handler"]
