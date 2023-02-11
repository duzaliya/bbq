# BBQ

Приложение для организации мероприятий. Вы можете планировать события, подписываться на них, добавлять фотографии и писать комментарии. Местоположение удобно отслеживать через прикрепленную карту, а приватные вечеринки можно ограничивать с помощью пинкода. О новых участниках, обсуждениях и фото вы узнаете сразу, получив письмо на почту.

### Технологии и инструменты, которые я использовала в проекте:

* Регистрация и аутентификация - **Device**

* Адрес на карте - **[API Яндекс Карт](https://yandex.ru/dev/maps/?p=realty)**

* Хранение фотографий - **ActiveStorage**, **[Yandex Cloud Storage](https://cloud.yandex.ru/services/storage)**

* Галерея для фотографий - **[Lightbox2](https://lokeshdhakar.com/projects/lightbox2/)**

* Отправка писем - **ActionMailer**, **[Mailjet](https://www.mailjet.com/)**

#### Для запуска:

```
Ruby 3.0.0
Rails 6.1.7
```
##### Склонируйте репозиторий

```
git clone https://github.com/duzaliya/bbq.git
```
##### Перейдите в папку bbq

```
cd bbq
```
##### Установите необходимые гемы командой

```
bundle install
```
##### Прогоните миграции

```
bundle exec rake db:migrate
```
##### Запустите игру локально

```
bundle exec rails s
```
Для корректной работы сторонних сервисов, использованных в приложении, необходимо обновить файл `credentials.yml.enc` командой:

```
EDITOR=nano rails credentials:edit
```
