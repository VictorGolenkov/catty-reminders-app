#!/bin/bash
echo "🚀 Начинаем развертывание catty-reminders-app..."

# Путь к проекту (измените на свой)
APP_DIR="/home/victor/Desktop/DevOps/Lab_1/catty-reminders-app"

# 1. Обновляем код
echo "📦 Обновляем код из репозитория..."
cd $APP_DIR
git pull

# 2. Если есть зависимости, обновляем их (убедитесь, что pip3 установлен)
if [ -f "requirements.txt" ]; then
    echo "📦 Обновляем зависимости..."
    pip3 install -r requirements.txt
fi

# 3. Перезапускаем приложение через systemd
echo "🔄 Перезапускаем сервис..."
sudo systemctl restart catty-app

echo "✅ Развертывание завершено!"
