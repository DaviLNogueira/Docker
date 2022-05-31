FROM node:14 
#importar o versão 14 do node
WORKDIR /app-node
#faz com que todas as execuções sejam direcionadas para a pasta
COPY . .
#copiara a imagem do repositório atual para a pasta seguinte 
RUN  npm install
#executar os comandos na pasta app-node , na etapa de criação
ENTRYPOINT npm start 
#quando terminar a execução do , qual é a proxíma execução que será feita