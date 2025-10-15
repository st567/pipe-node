# 🚀 Pipe Network Node - Simple Management Script

## Назначение / Purpose

Простой скрипт для установки и управления Pipe Network Node с поддержкой русского и английского языков.

Simple script for installing and managing Pipe Network Node with Russian and English language support.

### 🚀 Быстрый запуск / Quick Launch
```bash
bash <(curl -s https://raw.githubusercontent.com/st567/pipe-node/master/pipe_node.sh)
```

---

## 💻 Требования к ноде / Node Requirements

| Компонент / Component | Требование / Requirement |
|----------------------|-------------------------|
| **CPU** | 2 vCPU |
| **RAM** | 4 GB |
| **Диск / Disk** | 20 GB SSD или больше / or higher |
| **Пропускная способность / Bandwidth** | 100Mbps |
| **ОС / OS** | Ubuntu 24.04+, Debian 11+ |

### Открытые порты / Open Ports

| Порт / Port | Протокол / Protocol | Назначение / Purpose |
|-------------|-------------------|---------------------|
| 80 | TCP | HTTP |
| 443 | TCP | HTTPS |

---

## 🌐 Социальные сети проекта / Project Social Media

### Pipe Network
- **Website**: [pipe.network](https://pipe.network)
- **Documentation**: [docs.pipe.network](https://docs.pipe.network)
- **GitHub**: [github.com/pipe-network](https://github.com/pipe-network)

---

## 🎛 Меню / Menu Structure

### Главное меню / Main Menu
1. **🚀 Установка / Install** - Полная установка Pipe Network Node
2. **⚙️ Управление / Manage** - Управление установленной нодой
3. **🗑️ Удаление / Remove** - Удаление Pipe Network Node
4. **❌ Выход / Exit** - Завершение работы

### Меню управления / Management Menu
1. **📋 Логи / Logs** - Просмотр логов ноды
2. **🔄 Перезапуск / Restart** - Перезапуск ноды
3. **🛑 Остановка / Stop** - Остановка ноды
4. **▶️ Запуск / Start** - Запуск ноды
5. **📍 Статус / Status** - Отображение статуса ноды
6. **💰 Доходы / Earnings** - Просмотр доходов ноды
7. **🏥 Проверка здоровья / Health Check** - Проверка состояния ноды
8. **🔑 Показать адрес кошелька / Show Wallet Address** - Отображение адреса Solana кошелька
9. **✏️ Изменить адрес кошелька / Change Wallet Address** - Смена адреса кошелька
10. **❓ Команды помощи / Help Commands** - Полезные команды
11. **⬅️ Назад / Back** - Возврат в главное меню

---

## 🚀 Установка ноды / Node Installation

### 1. Подготовка к установке / Preparation

#### 1.1 Создание кошелька Solana / Solana Wallet Creation

1. **Создайте новый кошелек Solana** для ноды
2. **Установите Phantom Wallet** или используйте Solana CLI:
   ```bash
   # Установка Solana CLI
   sh -c "$(curl -sSfL https://release.solana.com/v1.18.4/install)"

   # Создание нового кошелька
   solana-keygen new

   # Получение публичного ключа
   solana address
   ```
3. **Скопируйте публичный ключ** (44 символа) для использования в ноде

### 2. Установка через наш скрипт / Installation via Our Script

#### 2.1 Автоматическая установка / Automatic Installation

```bash
# Запуск скрипта
bash pipe_node.sh

# Выберите язык / Select language
# Выберите "1) 🚀 Установка / Install"
```

**Скрипт автоматически выполнит:**
- Обновление системы
- Установку необходимых пакетов
- Загрузку бинарного файла Pipe
- Настройку адреса кошелька Solana
- Создание systemd сервиса
- Запуск Pipe Network Node

#### 2.2 Ручная установка / Manual Installation

```bash
# 1. Обновление системы
sudo apt update && sudo apt upgrade -y

# 2. Создание директории установки
sudo mkdir -p /opt/pipe
cd /opt/pipe

# 3. Загрузка бинарного файла
sudo curl -L https://pipe.network/p1-cdn/releases/latest/download/pop -o pop
sudo chmod +x pop

# 4. Создание конфигурации
sudo tee .env > /dev/null <<EOF
# Wallet for earnings
NODE_SOLANA_PUBLIC_KEY=your_solana_wallet_address

# Node identity
NODE_NAME=my-pipe-node
NODE_EMAIL="operator@example.com"
NODE_LOCATION="San Francisco, USA"

# Cache configuration
MEMORY_CACHE_SIZE_MB=512
DISK_CACHE_SIZE_GB=100
DISK_CACHE_PATH=./cache

# Network ports
HTTP_PORT=80
HTTPS_PORT=443

# Home network auto port forwarding (disable on VPS/servers)
UPNP_ENABLED=true
EOF

# 5. Создание systemd сервиса
sudo tee /etc/systemd/system/pipe.service > /dev/null <<EOF
[Unit]
Description=Pipe Network POP Node
After=network-online.target
Wants=network-online.target

[Service]
WorkingDirectory=/opt/pipe
ExecStart=/bin/bash -c 'source /opt/pipe/.env && /opt/pipe/pop'
Restart=always
RestartSec=5
StandardOutput=journal
StandardError=journal
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target
EOF

# 6. Запуск сервиса
sudo systemctl daemon-reload
sudo systemctl enable pipe
sudo systemctl start pipe
```

### 3. Проверка установки / Installation Verification

```bash
# Проверка статуса сервиса
sudo systemctl status pipe

# Проверка здоровья ноды
curl http://localhost:8081/health

# Просмотр логов
sudo journalctl -u pipe -f
```

---

## 💾 Важные файлы / Important Files

### Конфигурационные файлы / Configuration Files

```bash
# Файлы находятся в / Files located in:
/opt/pipe/

# Важные файлы / Important files:
/opt/pipe/.env              # Конфигурация ноды / Node configuration
/opt/pipe/pop              # Бинарный файл / Binary file
/opt/pipe/cache/           # Директория кэша / Cache directory
/etc/systemd/system/pipe.service  # Systemd сервис / Systemd service
```

### Systemd команды / Systemd Commands

```bash
# Основные команды / Main commands
sudo systemctl status pipe         # Статус сервиса / Service status
sudo systemctl start pipe          # Запуск ноды / Start node
sudo systemctl stop pipe           # Остановка ноды / Stop node
sudo systemctl restart pipe        # Перезапуск ноды / Restart node
sudo systemctl enable pipe         # Автозапуск / Auto-start
sudo systemctl disable pipe        # Отключить автозапуск / Disable auto-start

# Логи / Logs
sudo journalctl -u pipe -f         # Логи в реальном времени / Real-time logs
sudo journalctl -u pipe -n 100     # Последние 100 строк / Last 100 lines
```

---

## 🔧 Устранение неполадок / Troubleshooting

### Проблемы с установкой / Installation Issues

#### Порты 80/443 заняты / Ports 80/443 in use
```bash
# Проверка занятых портов
sudo lsof -i :80
sudo lsof -i :443

# Остановка конфликтующих сервисов
sudo systemctl stop apache2  # если используется Apache
sudo systemctl stop nginx    # если используется Nginx
```

#### Проблемы с правами / Permission Issues
```bash
# Проверка прав на файлы
ls -la /opt/pipe/
sudo chown -R root:root /opt/pipe/
sudo chmod +x /opt/pipe/pop
```

### Проблемы с нодой / Node Issues

#### Нода не запускается / Node won't start
```bash
# Проверка логов
sudo journalctl -u pipe --tail 50

# Проверка статуса сервиса
sudo systemctl status pipe

# Перезапуск через скрипт
bash pipe_node.sh
# Выберите "2) ⚙️ Управление / Manage" → "2) 🔄 Перезапуск / Restart"
```

#### Проблемы с кэшем / Cache Issues
```bash
# Очистка кэша
sudo rm -rf /opt/pipe/cache/*
sudo systemctl restart pipe
```

#### Проблемы с UPnP / UPnP Issues
```bash
# Отключение UPnP для VPS
sudo sed -i 's/UPNP_ENABLED=true/UPNP_ENABLED=false/' /opt/pipe/.env
sudo systemctl restart pipe
```

---

## 📊 Мониторинг и диагностика / Monitoring and Diagnostics

### Основные команды / Main Commands

```bash
# Статус ноды
cd /opt/pipe && ./pop status

# Доходы ноды
cd /opt/pipe && ./pop earnings

# Проверка здоровья
curl http://localhost:8081/health

# Метрики Prometheus
curl http://localhost:9090/metrics
```

### Логи и диагностика / Logs and Diagnostics

```bash
# Основные логи
sudo journalctl -u pipe -f

# Последние 100 строк логов
sudo journalctl -u pipe -n 100

# Проверка статуса сервиса
sudo systemctl status pipe

# Проверка использования ресурсов
sudo systemctl show pipe --property=MainPID
ps aux | grep pop
```

---

## ⚡ Оптимизация производительности / Performance Tuning

### Для высоконагруженных установок / For High-Traffic Setups

```bash
# Увеличение количества worker threads
export TOKIO_WORKER_THREADS=16

# Увеличение размера кэша
export MEMORY_CACHE_SIZE_MB=8192
export DISK_CACHE_SIZE_GB=500

# Использование SSD/NVMe для кэша
export DISK_CACHE_PATH=/mnt/nvme/cache
```

### Настройка для VPS / VPS Configuration

```bash
# Отключение UPnP для VPS
sudo sed -i 's/UPNP_ENABLED=true/UPNP_ENABLED=false/' /opt/pipe/.env

# Настройка файрвола
sudo ufw allow 80
sudo ufw allow 443
```

---

**Создано командой CryptoCompass / Created by CryptoCompass Team**

*Версия / Version: 1.0.0*

---

## 🏆 CryptoCompass

### О нас / About Us

CryptoCompass - ваш проводник в мире криптовалют. Мы создаем простые и удобные инструменты для работы с блокчейн-нодами.

CryptoCompass - your guide in the world of cryptocurrencies. We create simple and convenient tools for working with blockchain nodes.

### 🌐 Наши социальные сети / Our Social Media

- **Twitter/X**: [@0xGreenFlag](https://x.com/0xGreenFlag) - Новости и обновления
- **YouTube**: [@beloglazovpro](https://www.youtube.com/@beloglazovpro) - Обучающие видео и гайды
- **Telegram**: [@beloglazovpro](https://t.me/beloglazovpro) - Канал CryptoCompass с эксклюзивным контентом

[![GitHub](https://img.shields.io/badge/GitHub-pipe--node-blue?style=flat-square&logo=github)](https://github.com/st567/pipe-node)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.0.0-orange?style=flat-square)](https://github.com/st567/pipe-node/releases)



