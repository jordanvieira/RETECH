# Use uma imagem oficial do Python como imagem pai
FROM python:3.8.0-slim

# Defina variáveis de ambiente
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBUG 1

# Crie e defina o diretório de trabalho
WORKDIR /Retech

# Instale as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie os arquivos do projeto para o diretório de trabalho
COPY . .

# Exponha a porta para o servidor Django
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]