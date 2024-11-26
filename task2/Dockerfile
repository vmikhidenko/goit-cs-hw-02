# Використовуємо офіційний Python образ
FROM python:3.10-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файл залежностей
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Копіюємо весь код застосунку
COPY . .

# Виставляємо порт
EXPOSE 8000

# Команда для запуску застосунку
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
