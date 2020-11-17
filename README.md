# Dockerform


Criação da Imagem
```bash
docker build -t dockerform:0.1 .
```
Login no respositório
```bash
docker login
```

Criação da Tag para Upload
```bash
docker tag dockerform:0.1 nilsonrsvieira/dockerform:0.1
```

Envio da Imagem para DockerHUB
```bash
docker push nilsonrsvieira/dockerform:0.1
```


# Execução
Para executar basta entrar no repositório e executar com o paramentro terraform escolhido sem colchetes.
```bash
docker run -v ${PWD}:/data nilsonrsvieira/dockerform:0.1 [paramentro]
```

**Exemplo:**
```bash
docker run -v ${PWD}:/data nilsonrsvieira/dockerform:0.1 plan
```
