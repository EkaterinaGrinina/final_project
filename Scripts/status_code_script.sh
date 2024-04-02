#!/bin/bash

echo "Введите корректный адрес веб-сайта: "
read num

status_code=$(curl -S -s -o /dev/null -w "%{http_code}\n" $num)

if [[ $status_code -ge 100 && $status_code -le 550 ]]; then
   echo "Статус код ответа сервера: $status_code"
else
   echo "Ошибка curl. Возможно, вы ввели некорректный адрес или что-то еще пошло не так. Посмотрите код и пояснение к ошибке, чтобы узнать о причине неисправности."
fi


