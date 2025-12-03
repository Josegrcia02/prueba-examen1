# --- Etapa 1: Compilación (Build) ---
# Usamos una imagen de Maven con Java 21 para compilar el proyecto
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Empaquetamos saltando los tests para ir rápido
RUN mvn clean package -DskipTests

# --- Etapa 2: Ejecución (Runtime) ---
# Usamos una imagen JRE ligera de Java 21
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
# Copiamos el .jar generado en la etapa anterior
COPY --from=build /app/target/*.jar app.jar
# Exponemos el puerto 8080 (típico de Spring Boot)
EXPOSE 8080
# Comando de inicio
ENTRYPOINT ["java", "-jar", "app.jar"]