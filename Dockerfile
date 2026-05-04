# Imagen base
FROM python:3.9-slim

# Evitar archivos .pyc y buffer
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Crear carpeta de trabajo e instalar dependencias
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el contenido de la aplicación
COPY service/ ./service/

# Crear usuario no root
RUN useradd --uid 1000 theia && chown -R theia /app

# Cambiar a usuario no root
USER theia

# Exponer puerto
EXPOSE 8080

# Ejecutar el servicio con gunicorn
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]