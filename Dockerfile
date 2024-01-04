# Use a imagem base do Rust
FROM rust:latest

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie o arquivo Cargo.toml e Cargo.lock separadamente para evitar recompilação desnecessária
COPY Cargo.toml .
COPY Cargo.lock .

# Copie o diretório src para o container
COPY src ./src

# Instale as dependências necessárias (exemplo para pacotes baseados em Debian/Ubuntu)
RUN apt-get update && apt-get install -y <pacotes adicionais>

# Compile o projeto Rust
RUN cargo build --release

# Exponha a porta que a API estará escutando
EXPOSE 8000

# Execute o comando para iniciar a API
CMD ["cargo", "run", "--release"]
