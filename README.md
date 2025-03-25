# RemminaScriptZapusk
# Для работы данного скрипта нужно установить Remmina и Cron
apt-get(менеджер зависит от ОС) install rammina
apt-get install cron

# После переноса скрипта нужно выдать ему права на выполнение
chmod +x /путь/к/скрипту.sh
# Далее необходимо запустить cronetab
cronetab -e (выбираем удобным вам редактор)
# Далее добавляеем строку в конец файла 
@reboot sleep 20 && export DISPLAY=:0 && export XAUTHORITY=/home/ваш_username/.Xauthority && /путь/к/скрипту.sh >> /tmp/remmina_autostart.log 2>&1
# Где sleep 20 — ждёт полной загрузки графической оболочки.
# export DISPLAY=:0 — указывает, куда выводить графическое приложение.
# export XAUTHORITY=... — даёт права на доступ к экрану.
# >> /tmp/remmina_autostart.log 2>&1 — записывает логи в /tmp/ (чтобы видеть ошибки).
# После перезагружаем ПК

