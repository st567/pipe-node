#!/bin/bash

# Pipe Network Node - Simple Management Script
# CryptoCompass Branded Installation Script

# Color functions for CryptoCompass branding
show_red()     { echo -e "\e[31m$1\e[0m"; }
show_green()   { echo -e "\e[32m$1\e[0m"; }
show_yellow()  { echo -e "\e[1;33m$1\e[0m"; }
show_blue()    { echo -e "\e[34m$1\e[0m"; }
show_purple()  { echo -e "\e[35m$1\e[0m"; }
show_cyan()    { echo -e "\e[36m$1\e[0m"; }
show_white()   { echo -e "\e[1;37m$1\e[0m"; }
show_bold()    { echo -e "\e[1m$1\e[0m"; }

# Combined color functions
show_success() { echo -e "\e[32m\e[1m$1\e[0m"; }
show_error()   { echo -e "\e[31m\e[1m$1\e[0m"; }
show_warning() { echo -e "\e[1;33m\e[1m$1\e[0m"; }
show_info()    { echo -e "\e[36m\e[1m$1\e[0m"; }
show_header()  { echo -e "\e[1;37m\e[1m$1\e[0m"; }

# CryptoCompass logo
show_logo() {
    clear
    echo -e "\e[36m\e[1m"
    echo "  ╔══════════════════════════════════════════════════════════════╗"
    echo "  ║                                                              ║"
    echo "  ║    ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗         ║"
    echo "  ║   ██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═══██╗        ║"
    echo "  ║   ██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║   ██║        ║"
    echo "  ║   ██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██║   ██║        ║"
    echo "  ║   ╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝        ║"
    echo "  ║    ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝         ║"
    echo "  ║                                                              ║"
    echo "  ║  ██████╗ ██████╗ ███╗   ███╗██████╗ ██████╗ ███████╗███████╗ ║"
    echo "  ║ ██╔════╝██╔═══██╗████╗ ████║██╔══██╗██╔══██╗██╔════╝██╔════╝ ║"
    echo "  ║ ██║     ██║   ██║██╔████╔██║██████╔╝███████║███████╗███████╗ ║"
    echo "  ║ ██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██╔══██║╚════██║╚════██║ ║"
    echo "  ║ ╚██████╗╚██████╔╝██║     ██║██║     ██║  ██║███████║███████║ ║"
    echo "  ║  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ║"
    echo "  ║                                                              ║"
    echo "  ║                      Pipe Network Node                       ║"
    echo "  ║                   Simple Management Script                   ║"
    echo "  ║                                                              ║"
    echo "  ╚══════════════════════════════════════════════════════════════╝"
    echo -e "\e[0m"
    echo ""
    echo -e "\e[1;37m\e[1m🌐 CryptoCompass Resources:\e[0m"
    echo -e "\e[36m\e[1m• Twitter/X:\e[0m \e[1;37mhttps://x.com/0xGreenFlag\e[0m"
    echo -e "\e[36m\e[1m• YouTube:\e[0m \e[1;37mhttps://www.youtube.com/@beloglazovpro\e[0m"
    echo -e "\e[36m\e[1m• Telegram:\e[0m \e[1;37mhttps://t.me/beloglazovpro\e[0m"
    echo ""
}

# Language selection
select_language() {
    show_logo
    show_yellow "Выберите язык / Select Language:"
    show_white "1) Русский"
    show_white "2) English"
    echo ""
    read -p "$(show_cyan "Выбор / Choice [1-2]: ")" lang_choice

    case $lang_choice in
        1) LANG="ru" ;;
        2) LANG="en" ;;
        *) show_error "Неверный выбор / Invalid choice"; select_language ;;
    esac
}

# Text strings based on language
get_text() {
    case $LANG in
        "ru")
            case $1 in
                "main_menu") echo "Главное меню" ;;
                "install") echo "Установка" ;;
                "manage") echo "Управление" ;;
                "remove") echo "Удаление" ;;
                "exit") echo "Выход" ;;
                "requirements") echo "Требования к системе:" ;;
                "cpu") echo "• CPU: 2 vCPU" ;;
                "ram") echo "• RAM: 4 GB" ;;
                "disk") echo "• Диск: 20 GB SSD или больше" ;;
                "bandwidth") echo "• Пропускная способность: 100Mbps" ;;
                "ports") echo "• Открытые порты: TCP 80, 443" ;;
                "continue") echo "Продолжить установку?" ;;
                "yes_no") echo "[y/n]: " ;;
                "installing") echo "Установка Pipe Network Node..." ;;
                "updating") echo "Обновление системы..." ;;
                "installing_packages") echo "Установка необходимых пакетов..." ;;
                "downloading_binary") echo "Загрузка бинарного файла Pipe..." ;;
                "setup_wallet") echo "Настройка кошелька Solana..." ;;
                "enter_solana_address") echo "Введите адрес кошелька Solana: " ;;
                "enter_node_name") echo "Введите имя ноды: " ;;
                "enter_node_email") echo "Введите email оператора: " ;;
                "enter_node_location") echo "Введите местоположение ноды: " ;;
                "starting_node") echo "Запуск ноды..." ;;
                "installation_complete") echo "Установка завершена!" ;;
                "node_running") echo "Нода запущена" ;;
                "node_stopped") echo "Нода остановлена" ;;
                "press_enter") echo "Нажмите Enter для продолжения..." ;;
                "invalid_choice") echo "Неверный выбор!" ;;
                "logs") echo "Логи" ;;
                "restart") echo "Перезапуск" ;;
                "stop") echo "Остановка" ;;
                "start") echo "Запуск" ;;
                "back") echo "Назад" ;;
                "node_restarted") echo "Нода перезапущена!" ;;
                "node_stopped_msg") echo "Нода остановлена!" ;;
                "node_started") echo "Нода запущена!" ;;
                "remove_confirm") echo "Вы уверены, что хотите удалить Pipe Network Node?" ;;
                "removing") echo "Удаление Pipe Network Node..." ;;
                "removed") echo "Pipe Network Node удален!" ;;
                "not_installed") echo "Pipe Network Node не установлен" ;;
                "already_installed") echo "Pipe Network Node уже установлен" ;;
                "solana_address") echo "Адрес кошелька Solana" ;;
                "show_solana_address") echo "Показать адрес кошелька" ;;
                "change_solana_address") echo "Изменить адрес кошелька" ;;
                "help_commands") echo "Команды помощи" ;;
                "manual_commands") echo "Ручные команды" ;;
                "status") echo "Статус" ;;
                "earnings") echo "Доходы" ;;
                "health_check") echo "Проверка здоровья" ;;
            esac
            ;;
        "en")
            case $1 in
                "main_menu") echo "Main Menu" ;;
                "install") echo "Install" ;;
                "manage") echo "Manage" ;;
                "remove") echo "Remove" ;;
                "exit") echo "Exit" ;;
                "requirements") echo "System Requirements:" ;;
                "cpu") echo "• CPU: 2 vCPU" ;;
                "ram") echo "• RAM: 4 GB" ;;
                "disk") echo "• Disk: 20 GB SSD or higher" ;;
                "bandwidth") echo "• Bandwidth: 100Mbps" ;;
                "ports") echo "• Open ports: TCP 80, 443" ;;
                "continue") echo "Continue with installation?" ;;
                "yes_no") echo "[y/n]: " ;;
                "installing") echo "Installing Pipe Network Node..." ;;
                "updating") echo "Updating system..." ;;
                "installing_packages") echo "Installing required packages..." ;;
                "downloading_binary") echo "Downloading Pipe binary..." ;;
                "setup_wallet") echo "Setting up Solana wallet..." ;;
                "enter_solana_address") echo "Enter Solana wallet address: " ;;
                "enter_node_name") echo "Enter node name: " ;;
                "enter_node_email") echo "Enter operator email: " ;;
                "enter_node_location") echo "Enter node location: " ;;
                "starting_node") echo "Starting node..." ;;
                "installation_complete") echo "Installation completed!" ;;
                "node_running") echo "Node is running" ;;
                "node_stopped") echo "Node is stopped" ;;
                "press_enter") echo "Press Enter to continue..." ;;
                "invalid_choice") echo "Invalid choice!" ;;
                "logs") echo "Logs" ;;
                "restart") echo "Restart" ;;
                "stop") echo "Stop" ;;
                "start") echo "Start" ;;
                "back") echo "Back" ;;
                "node_restarted") echo "Node restarted!" ;;
                "node_stopped_msg") echo "Node stopped!" ;;
                "node_started") echo "Node started!" ;;
                "remove_confirm") echo "Are you sure you want to remove Pipe Network Node?" ;;
                "removing") echo "Removing Pipe Network Node..." ;;
                "removed") echo "Pipe Network Node removed!" ;;
                "not_installed") echo "Pipe Network Node not installed" ;;
                "already_installed") echo "Pipe Network Node already installed" ;;
                "solana_address") echo "Solana Wallet Address" ;;
                "show_solana_address") echo "Show Solana Address" ;;
                "change_solana_address") echo "Change Solana Address" ;;
                "help_commands") echo "Help Commands" ;;
                "manual_commands") echo "Manual Commands" ;;
                "status") echo "Status" ;;
                "earnings") echo "Earnings" ;;
                "health_check") echo "Health Check" ;;
            esac
            ;;
    esac
}

# Check if Pipe node is installed
is_pipe_installed() {
    if [[ -d /opt/pipe ]] && [[ -f /opt/pipe/pop ]] && [[ -f /opt/pipe/.env ]]; then
        return 0
    else
        return 1
    fi
}

# Check if node is running
is_node_running() {
    if systemctl is-active --quiet pipe; then
        return 0
    else
        return 1
    fi
}

# Show system requirements
show_requirements() {
    show_yellow "$(get_text "requirements")"
    show_white "$(get_text "cpu")"
    show_white "$(get_text "ram")"
    show_white "$(get_text "disk")"
    show_white "$(get_text "bandwidth")"
    show_white "$(get_text "ports")"
    echo ""
}

# Update system
update_system() {
    show_info "$(get_text "updating")"

    # Suppress VM warnings and update system
    sudo apt update 2>/dev/null || true
    sudo apt upgrade -y 2>/dev/null || true

    show_success "Система обновлена / System updated"
}

# Install required packages
install_packages() {
    show_info "$(get_text "installing_packages")"

    sudo apt-get install -yq apt-utils dialog 2>/dev/null

    PACKAGES=(
        curl
        git
        jq
        lz4
        build-essential
        unzip
        make
        gcc
        ncdu
        cmake
        clang
        pkg-config
        libssl-dev
        libzmq3-dev
        libczmq-dev
        python3-pip
        protobuf-compiler
        dos2unix
        screen
    )

    for PACKAGE in "${PACKAGES[@]}"; do
        echo "Установка $PACKAGE..."
        sudo apt install -y "$PACKAGE"
        if [ $? -eq 0 ]; then
            echo "$PACKAGE успешно установлен."
        else
            echo "Ошибка при установке $PACKAGE. Пропускаем..."
        fi
    done
}

# Download Pipe binary
download_pipe_binary() {
    show_info "$(get_text "downloading_binary")"

    # Create installation directory
    sudo mkdir -p /opt/pipe
    cd /opt/pipe

    # Download latest binary
    sudo curl -L https://pipe.network/p1-cdn/releases/latest/download/pop -o pop
    sudo chmod +x pop

    show_success "Бинарный файл загружен / Binary downloaded"
}

# Setup Solana wallet
setup_solana_wallet() {
    show_info "$(get_text "setup_wallet")"

    while true; do
        read -p "$(show_cyan "$(get_text "enter_solana_address")")" solana_address

        if [[ -n "$solana_address" ]] && [[ ${#solana_address} -eq 44 ]] && [[ "$solana_address" =~ ^[A-Za-z0-9]+$ ]]; then
            export NODE_SOLANA_PUBLIC_KEY="$solana_address"
            show_success "Адрес кошелька установлен: $solana_address / Wallet address set: $solana_address"
            break
        else
            show_error "Неверный формат адреса. Введите корректный Solana адрес (44 символа) / Invalid address format. Enter valid Solana address (44 characters)"
        fi
    done
}

# Setup node configuration
setup_node_config() {
    show_info "Настройка конфигурации ноды / Setting up node configuration"

    read -p "$(show_cyan "$(get_text "enter_node_name")")" node_name
    read -p "$(show_cyan "$(get_text "enter_node_email")")" node_email
    read -p "$(show_cyan "$(get_text "enter_node_location")")" node_location

    # Create .env file
    sudo tee /opt/pipe/.env > /dev/null <<EOF
# Wallet for earnings
NODE_SOLANA_PUBLIC_KEY=$NODE_SOLANA_PUBLIC_KEY

# Node identity
NODE_NAME=$node_name
NODE_EMAIL="$node_email"
NODE_LOCATION="$node_location"

# Cache configuration
MEMORY_CACHE_SIZE_MB=512
DISK_CACHE_SIZE_GB=100
DISK_CACHE_PATH=./cache

# Network ports
HTTP_PORT=80
HTTPS_PORT=443

# Home network auto port forwarding (disable on VPS/servers)
UPNP_ENABLED=false
EOF

    show_success "Конфигурация создана / Configuration created"
}

# Create systemd service
create_systemd_service() {
    show_info "Создание systemd сервиса / Creating systemd service"

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

    # Reload systemd and enable service
    sudo systemctl daemon-reload
    sudo systemctl enable pipe

    show_success "Systemd сервис создан / Systemd service created"
}

# Start node
start_node() {
    show_info "$(get_text "starting_node")"

    if is_node_running; then
        show_warning "Нода уже запущена / Node is already running"
        return 0
    fi

    sudo systemctl start pipe
    sleep 3

    if is_node_running; then
        show_success "$(get_text "node_started")"
    else
        show_error "Ошибка запуска ноды / Error starting node"
    fi
}

# Stop node
stop_node() {
    show_info "🛑 Остановка ноды / Stopping node..."

    sudo systemctl stop pipe

    if ! is_node_running; then
        show_success "$(get_text "node_stopped_msg")"
    else
        show_error "Ошибка остановки ноды / Error stopping node"
    fi
}

# Restart node
restart_node() {
    show_info "🔄 $(get_text "restart")..."

    sudo systemctl restart pipe
    sleep 3

    if is_node_running; then
        show_success "$(get_text "node_restarted")"
    else
        show_error "Ошибка перезапуска ноды / Error restarting node"
    fi
}

# View logs
view_logs() {
    if is_node_running; then
        show_info "📋 Логи Pipe Network Node / Pipe Network Node Logs:"
        show_yellow "═══════════════════════════════════════════════════════════════"
        sudo journalctl -u pipe -n 100 --no-pager
        show_yellow "═══════════════════════════════════════════════════════════════"
        echo ""
        show_info "Для просмотра логов в реальном времени используйте: / For real-time log viewing use:"
        show_cyan "sudo journalctl -u pipe -f"
    else
        show_error "Нода не запущена / Node is not running"
    fi
}

# Show Solana address
show_solana_address() {
    if [[ -f /opt/pipe/.env ]]; then
        solana_address=$(grep NODE_SOLANA_PUBLIC_KEY /opt/pipe/.env | cut -d'=' -f2)
        show_success "$(get_text "solana_address"):"
        show_cyan "$solana_address"
    else
        show_error "Адрес кошелька не найден / Wallet address not found"
    fi
}

# Change Solana address
change_solana_address() {
    show_info "Изменить адрес кошелька / Change wallet address"

    if is_node_running; then
        show_warning "Остановите ноду перед изменением адреса / Stop node before changing address"
        return 1
    fi

    setup_solana_wallet

    # Update .env file
    sudo sed -i "s/NODE_SOLANA_PUBLIC_KEY=.*/NODE_SOLANA_PUBLIC_KEY=$NODE_SOLANA_PUBLIC_KEY/" /opt/pipe/.env

    show_success "Адрес кошелька изменен / Wallet address changed"
}

# Show node status
show_node_status() {
    if is_node_running; then
        show_success "$(get_text "node_running")"
        echo ""
        show_info "Статус сервиса / Service status:"
        sudo systemctl status pipe --no-pager -l
    else
        show_error "$(get_text "node_stopped")"
    fi
}

# Show earnings
show_earnings() {
    if is_node_running; then
        show_info "Доходы ноды / Node earnings:"
        cd /opt/pipe
        sudo -u root ./pop earnings 2>/dev/null || show_warning "Команда earnings недоступна / Earnings command not available"
    else
        show_error "Нода не запущена / Node is not running"
    fi
}

# Health check
health_check() {
    if is_node_running; then
        show_info "Проверка здоровья ноды / Node health check:"
        curl -s http://localhost:8081/health 2>/dev/null || show_warning "Health endpoint недоступен / Health endpoint not available"
    else
        show_error "Нода не запущена / Node is not running"
    fi
}

# Show help commands
show_help_commands() {
    show_info "$(get_text "help_commands")"
    echo ""
    show_white "Основные команды systemctl / Main systemctl commands:"
    show_cyan "• sudo systemctl status pipe          # Статус сервиса / Service status"
    show_cyan "• sudo systemctl start pipe           # Запуск ноды / Start node"
    show_cyan "• sudo systemctl stop pipe            # Остановка ноды / Stop node"
    show_cyan "• sudo systemctl restart pipe         # Перезапуск ноды / Restart node"
    show_cyan "• sudo journalctl -u pipe -f          # Логи в реальном времени / Real-time logs"
    show_cyan "• sudo journalctl -u pipe -n 100      # Последние 100 строк / Last 100 lines"
    echo ""
    show_white "Команды Pipe Network / Pipe Network commands:"
    show_cyan "• cd /opt/pipe && ./pop status        # Статус ноды / Node status"
    show_cyan "• cd /opt/pipe && ./pop earnings      # Доходы / Earnings"
    show_cyan "• curl http://localhost:8081/health   # Проверка здоровья / Health check"
    echo ""
    show_white "Файлы конфигурации / Configuration files:"
    show_cyan "• /opt/pipe/                          # Директория установки / Installation directory"
    show_cyan "• /opt/pipe/.env                      # Конфигурация / Configuration"
    show_cyan "• /opt/pipe/cache/                    # Директория кэша / Cache directory"
}

# Remove Pipe node
remove_pipe() {
    show_warning "⚠️ $(get_text "remove_confirm")"
    read -p "$(show_cyan "$(get_text "yes_no")")" confirm_remove

    if [[ $confirm_remove =~ ^[Yy]$ ]]; then
        show_info "$(get_text "removing")"

        # Stop and disable service
        sudo systemctl stop pipe 2>/dev/null || true
        sudo systemctl disable pipe 2>/dev/null || true

        # Remove service file
        sudo rm -f /etc/systemd/system/pipe.service
        sudo systemctl daemon-reload

        # Remove installation directory
        sudo rm -rf /opt/pipe

        show_success "$(get_text "removed")"
    else
        show_warning "Удаление отменено / Removal cancelled"
    fi
}

# Main installation function
main_installation() {
    if is_pipe_installed; then
        show_warning "$(get_text "already_installed")"
        read -p "$(show_cyan "$(get_text "press_enter")")"
        return
    fi

    show_requirements
    read -p "$(show_cyan "$(get_text "continue") $(get_text "yes_no")")" continue_install

    if [[ ! $continue_install =~ ^[Yy]$ ]]; then
        show_warning "Установка отменена / Installation cancelled"
        return
    fi

    show_info "$(get_text "installing")"

    update_system
    install_packages
    download_pipe_binary
    setup_solana_wallet
    setup_node_config
    create_systemd_service
    start_node

    echo ""
    show_warning "Важно / Important:"
    show_white "• Нода синхронизируется с сетью Pipe / Node is syncing with Pipe network"
    show_white "• Убедитесь, что порты 80 и 443 открыты / Make sure ports 80 and 443 are open"
    show_white "• Используйте команды управления для мониторинга / Use management commands for monitoring"
    echo ""

    read -p "$(show_cyan "$(get_text "press_enter")")"
}

# Management menu
show_management_menu() {
    while true; do
        show_logo
        show_green "$(get_text "manage")"
        echo ""
        show_white "1) $(get_text "logs")"
        show_white "2) $(get_text "restart")"
        show_white "3) $(get_text "stop")"
        show_white "4) $(get_text "start")"
        show_white "5) $(get_text "status")"
        show_white "6) $(get_text "earnings")"
        show_white "7) $(get_text "health_check")"
        show_white "8) $(get_text "show_solana_address")"
        show_white "9) $(get_text "change_solana_address")"
        show_white "10) $(get_text "help_commands")"
        show_white "0) $(get_text "back")"
        echo ""

        read -p "$(show_cyan "Выбор / Choice [0-10]: ")" choice

        case $choice in
            1)
                view_logs
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            2)
                restart_node
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            3)
                stop_node
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            4)
                start_node
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            5)
                show_node_status
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            6)
                show_earnings
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            7)
                health_check
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            8)
                show_solana_address
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            9)
                change_solana_address
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            10)
                show_help_commands
                echo ""
                read -p "$(show_yellow "$(get_text "press_enter")")"
                ;;
            0)
                return
                ;;
            *)
                show_error "$(get_text "invalid_choice")"
                sleep 2
                ;;
        esac
    done
}

# Main menu
show_main_menu() {
    while true; do
        show_logo
        show_green "$(get_text "main_menu")"
        echo ""
        show_white "1) 🚀 $(get_text "install")"
        show_white "2) ⚙️ $(get_text "manage")"
        show_white "3) 🗑️ $(get_text "remove")"
        show_white "0) ❌ $(get_text "exit")"
        echo ""

        read -p "$(show_cyan "Выбор / Choice [0-3]: ")" choice

        case $choice in
            1)
                main_installation
                ;;
            2)
                if is_pipe_installed; then
                    show_management_menu
                else
                    show_error "$(get_text "not_installed")"
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                fi
                ;;
            3)
                if is_pipe_installed; then
                    remove_pipe
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                else
                    show_error "$(get_text "not_installed")"
                    read -p "$(show_cyan "$(get_text "press_enter")")"
                fi
                ;;
            0)
                show_success "До свидания! / Goodbye!"
                exit 0
                ;;
            *)
                show_error "$(get_text "invalid_choice")"
                sleep 2
                ;;
        esac
    done
}

# Main function
main() {
    select_language
    show_main_menu
}

# Run main function
main "$@"


