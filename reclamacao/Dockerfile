FROM eclipse-temurin:20-alpine
LABEL Grupo B - 5SCJO - 2022 - RECLAMACAO
COPY jars/hackaton-reclamacoes-*.jar /app/app.jar
ENTRYPOINT "java" "-jar" "/app/app.jar"

#Defaul cofniguration
ENV DB_FOCUS_URL=jdbc:mysql://localhost:3306/focusdb
ENV DB_FOCUS_USER=focusdbuser
ENV DB_FOCUS_PASS=f0cusF14pdb

EXPOSE 8080