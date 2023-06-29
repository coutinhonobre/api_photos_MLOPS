# Use a imagem oficial do Python
FROM python:3.9

# Define a diretório de trabalho no contêiner Docker
WORKDIR /usr/src/app

# Copie os arquivos de dependência para o diretório de trabalho
COPY requirements.txt ./

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copia os arquivos do projeto para o diretório de trabalho
COPY . .

# Expõe a porta do servidor FastAPI
EXPOSE 8000

# Define o comando para iniciar o contêiner
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

