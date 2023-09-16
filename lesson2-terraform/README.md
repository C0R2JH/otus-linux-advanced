# Lesson-2 Terraform Yandex Cloud
### Что делает манифест терраформа:

- Создает сеть, подсеть
- Создает вм в созданной сети
- Устанавливает nginx

### Нееобходимо преднастроить облако:
(https://cloud.yandex.ru/docs/tutorials/infrastructure-management/terraform-quickstart)
- Создан каталог
- Создан ТУЗ (техническая учетная запись)
- Создана пара ключей для доступа по SSH

Необходимо создать файл с секретами по аналогии с terraform.tfvars.example
Поля обязательные к заполнению:
- cloud_id                 = ""
- folder_id                = ""
- zone                     = ""
- service_account_key_file = ""
