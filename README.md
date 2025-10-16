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

### Базовые требования / Basic Requirements

| Компонент / Component | Требование / Requirement |
|----------------------|-------------------------|
| **CPU** | 2 vCPU |
| **RAM** | 4 GB |
| **Диск / Disk** | 20 GB SSD или больше / or higher |
| **Пропускная способность / Bandwidth** | 100Mbps |
| **ОС / OS** | Ubuntu 24.04+, Debian 11+ |

### Рекомендуемые требования для PoP Node Operators / Recommended Requirements for PoP Node Operators

| Компонент / Component | Рекомендуемое требование / Recommended Requirement |
|----------------------|---------------------------------------------------|
| **ОС / OS** | Linux operating system |
| **RAM** | Минимум 16GB (рекомендуется 32GB+ для продакшена) / Minimum 16GB (32GB+ recommended for production) |
| **Диск / Disk** | 100GB+ SSD storage |
| **Сеть / Network** | 1Gbps+ network connection |
| **Подключение / Connectivity** | 24/7 internet connectivity |

### Открытые порты / Open Ports

| Порт / Port | Протокол / Protocol | Назначение / Purpose |
|-------------|-------------------|---------------------|
| 80 | TCP | HTTP |
| 443 | TCP | HTTPS |

---

## 🎯 Quality Multiplier - Система бонусов / Bonus System

### Что такое Quality Multiplier? / What is Quality Multiplier?

Quality Multiplier - это система бонусов, которая увеличивает ваши доходы в зависимости от качества работы ноды. Множитель варьируется от 0.7x до 1.5x от базового дохода.

Quality Multiplier is a performance bonus that adjusts your earnings based on how well your node runs. It ranges from 0.7x to 1.5x your base earnings.

### Уровни производительности / Performance Tiers

| Уровень / Tier | Множитель / Multiplier | Ваш доход / Your Earnings |
|----------------|----------------------|-------------------------|
| Premium 🌟 | 1.5x | +50% бонус / +50% bonus |
| Standard ✅ | 1.0x | Базовый тариф / Base rate |
| Basic ⚠️ | 0.85x | -15% штраф / -15% penalty |
| Poor ❌ | 0.7x | -30% штраф / -30% penalty |

### Пример: Обслуживание 1 ТБ трафика / Example: Serving 1 TB of Bandwidth

| Ваш уровень / Your Tier | Вы зарабатываете / You Earn |
|------------------------|---------------------------|
| Premium (1.5x) | $0.375 |
| Standard (1.0x) | $0.25 |
| Basic (0.85x) | $0.2125 |
| Poor (0.7x) | $0.175 |

### Факторы, влияющие на оценку / What Affects Your Score?

Ваша оценка качества основана на четырех ключевых факторах:

Your quality score is based on four key factors:

#### 1. Время работы / Uptime (35% - самый важный фактор)
- **Цель / Goal:** Работать онлайн 98%+ времени / Stay online 98%+ of the time
- Система проверяет ноду каждые 30 минут / System checks your node every 30 minutes

#### 2. Скорость / Speed (25%)
- **Цель / Goal:** Отвечать менее чем за 100мс / Respond in under 100ms
- Как быстро ваша нода отвечает на запросы / How fast your node responds to requests

#### 3. Надежность / Reliability (25%)
- **Цель / Goal:** Менее 0.1% ошибок / Less than 0.1% error rate
- Как часто нода успешно обслуживает контент без ошибок / How often your node successfully serves content without errors

#### 4. Эффективность / Efficiency (15%)
- **Цель / Goal:** 80%+ кэш-хит / 80%+ cache hit rate
- Насколько хорошо нода использует ресурсы и кэширует контент / How well your node uses its resources and caches content

### Как достичь Premium уровня (1.5x) / How to Reach Premium Tier (1.5x)

#### Приоритетные действия / Priority Actions:

1. **Держите ноду онлайн / Keep Your Node Online**
   - Настройте автоперезапуск при сбоях / Set up auto-restart if your node crashes
   - Обеспечьте стабильный интернет и питание / Ensure stable internet and power
   - **Цель / Target:** Менее 15 минут простоя в день / Less than 15 minutes downtime per day

2. **Используйте быстрое хранилище / Use Fast Storage**
   - SSD хранилище настоятельно рекомендуется / SSD storage is strongly recommended over HDD
   - Выделите 4-8 ГБ RAM для кэширования / Allocate 4-8 GB RAM for caching
   - Убедитесь в достаточном свободном месте на диске / Ensure you have enough free disk space

3. **Минимизируйте ошибки / Minimize Errors**
   - Мониторьте логи ноды на предмет проблем / Monitor your node logs for issues
   - Держите ПО ноды обновленным / Keep your node software updated
   - Быстро исправляйте проблемы конфигурации / Fix any configuration problems quickly

4. **Оптимизируйте настройки / Optimize Your Setup**
   - Не перегружайте сервер / Don't overload your server
   - Разместите ноду в хорошем сетевом расположении / Place your node in a good network location
   - Настройте адекватное кэш-хранилище / Configure adequate cache storage

### Whitelist Bonus = Дополнительный 2x множитель! 🚀

Нахождение в whitelist кошельков дает вам 2x бонус, который складывается с множителем качества:

Being on the wallet whitelist gives you a 2x bonus that stacks with your quality multiplier:

**Ваш общий множитель = Quality Multiplier × Whitelist Bonus (2x)**

**Your Total Multiplier = Quality Multiplier × Whitelist Bonus (2x)**

#### Сравнение доходов / Earnings Comparison

| Уровень качества / Quality Tier | Без Whitelist | С Whitelist | Разница бонуса / Bonus Difference |
|--------------------------------|---------------|-------------|----------------------------------|
| Premium (1.5x) | $0.375/TB | $0.75/TB | +$0.375/TB |
| Standard (1.0x) | $0.25/TB | $0.50/TB | +$0.25/TB |
| Basic (0.85x) | $0.2125/TB | $0.425/TB | +$0.2125/TB |
| Poor (0.7x) | $0.175/TB | $0.35/TB | +$0.175/TB |

#### Пример: Если вы Premium уровень И в whitelist / Example: If you're Premium tier AND whitelisted:

- Базовый тариф / Base rate: $0.25/TB
- × 1.5 (Premium качество / quality) = $0.375/TB
- × 2.0 (Whitelist бонус / bonus) = $0.75/TB (3x базовый тариф / base rate!)

💡 **Профессиональный совет / Pro Tip:** Даже нода с Poor производительностью с whitelist ($0.35/TB) зарабатывает больше, чем Standard нода без него ($0.25/TB)!

### Проверка производительности / Checking Your Performance

```bash
# Проверка текущего множителя / Check current multiplier
cd /opt/pipe && ./pop earnings
```

Ваша оценка качества обновляется каждые 1-4 часа на основе последних 24 часов работы.

Your quality score updates every 1-4 hours based on your last 24 hours of performance.

### Быстрые советы для успеха / Quick Tips for Success

#### ✅ Делайте это / Do This:
- Держите ноду работающей 24/7 / Keep your node running 24/7
- Используйте SSD хранилище / Use SSD storage
- Выделите достаточно RAM (рекомендуется 4-8 ГБ) / Allocate sufficient RAM (4-8 GB recommended)
- Мониторьте логи на ошибки / Monitor your logs for errors
- Обеспечьте стабильное интернет-соединение / Ensure stable internet connection

#### ❌ Избегайте этого / Avoid This:
- Частых перезапусков или простоев / Frequent restarts or downtime
- Работы на перегруженном железе / Running on overloaded hardware
- Игнорирования сообщений об ошибках / Ignoring error messages
- Использования медленного HDD хранилища / Using slow HDD storage
- Недостаточного места на диске для кэша / Insufficient disk space for cache

### Ключевые факты / Key Facts:

- Premium нода зарабатывает в 2.14 раза больше, чем Poor нода
- Whitelisted нода зарабатывает в 2 раза больше, чем non-whitelisted нода
- Комбинация: Premium + Whitelisted зарабатывает в 4.3 раза больше, чем Poor + Non-whitelisted!

**Максимальный доход / Maximum Earnings:** Premium уровень + Whitelist = 3x базовый тариф ($0.75/TB)

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



