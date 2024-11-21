#!/bin/bash

# Список URL-адрес для перевірки
urls=("https://google.com" "https://facebook.com" "https://x.com")

# Файл для запису логів
log_file="website_status.log"

# Додаємо поточну дату і час до файлу логів
echo -e "\nПеревірка стану сайтів: $(date '+%Y-%m-%d %H:%M:%S')" >> "$log_file"

# Проходимо циклом по кожному сайту
for url in "${urls[@]}"; do
    # Використовуємо curl для перевірки статусу з підтримкою переадресації (-L)
    http_code=$(curl -s -o /dev/null -w "%{http_code}" -L "$url")

    # Перевіряємо HTTP-код і визначаємо статус
    if [ "$http_code" -eq 200 ]; then
        status="<${url}> is UP (HTTP $http_code)"
    else
        status="<${url}> is DOWN (HTTP $http_code)"
    fi

    # Записуємо результат у файл логів
    echo "$status" >> "$log_file"

    # Виводимо результат у консоль
    echo "$status"
done

# Повідомляємо користувача, що результати записано у файл
echo "Результати записані у файл $log_file"
