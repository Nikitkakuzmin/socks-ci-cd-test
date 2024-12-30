# Используем официальный образ с OpenJDK 17 от Oracle
FROM openjdk:17-oracle

# Указываем имя и контактную информацию для поддержания образа
LABEL maintainer="nik"

# Копируем JAR файл в контейнер
# socks-backspark.jar - это файл, который будет передан в контейнер
COPY socks-backspark.jar /app/socks-backspark.jar

# Устанавливаем рабочую директорию
WORKDIR /app

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "socks-backspark.jar"]
