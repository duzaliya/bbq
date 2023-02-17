# BBQ

Приложение [BBQ](http://dubbq.site/) для организации мероприятий. Вы можете планировать события, подписываться на них, добавлять фотографии и писать комментарии. Местоположение удобно отслеживать через прикрепленную карту, а приватные вечеринки можно ограничивать с помощью пинкода. О новых участниках, обсуждениях и фото вы узнаете сразу, получив письмо на почту.

### Технологии и инструменты, которые я использовала в проекте:

* Регистрация и аутентификация - **Devise**
* Отображение адреса на карте - **[API Яндекс Карт](https://yandex.ru/dev/maps/?p=realty)**
* Хранение фотографий - **ActiveStorage**, **[Yandex Cloud Storage](https://cloud.yandex.ru/services/storage)**
* Галерея для фотографий - **[Lightbox2](https://lokeshdhakar.com/projects/lightbox2/)**
* Отправка писем - **ActionMailer**, **[Mailjet](https://www.mailjet.com/)**

#### Для запуска локально требуется:
```
Ruby 3.0.0
Rails 6.1.7
```
Склонируйте репозиторий
```
git clone https://github.com/duzaliya/bbq.git
```
Перейдите в папку bbq
```
cd bbq
```
Установите необходимые гемы командой
```
bundle install
```
Прогоните миграции
```
bundle exec rake db:migrate
```
Для корректной работы сторонних сервисов, использованных в приложении, необходимо удалить старый и создать новый файл `credentials.yml.enc` командой:
```
rm -rf config/credentials.yml.enc
EDITOR=<your_edit> rails credentials:edit
```
Заполните его своими API-ключами для каждого сервиса:
```
yc:
  access_key_id: <your_key>
  secret_access_key: <your_key>

mailjet:
  api_key: <your_key>
  secret_key: <your_key>
  sender: <your_sender_email>

yandex_map:
  api_key: <your_key>
```
##### Запустите игру локально
```
bundle exec rails s
```
