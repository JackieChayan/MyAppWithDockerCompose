# Берем образ с Python
FROM python:3.11-slim

# Устанавливаем рабочую папку внутри контейнера
WORKDIR /app

# Копируем файл с библиотеками
COPY requirements.txt .

# Устанавливаем библиотеки
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект в контейнер
COPY . .

# Запускаем приложение
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]