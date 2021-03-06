# Модель прецедентів

![MP](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/MP)
![MPTL_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/MPTL_1)
![MPTL_2](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/MPTL_2)
![UC_10_1_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_10_1_1)
![UC_13_1_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_13_1_1)
***
### Сценарій №1 
**ID**: UC_1_1

**Назва**: Реєстрація нового користувача.

**Учасники**: Користувач, система

**Передумова**: Користувач має бути не зареєстрованим. (Обліковий запис користувача в системі відсутній)

**Результат**: Реєстрація нового облікового запису користувача.

**Виключні ситуації**:
- EX.01.01 користувач ввів дані акаунту що вже існує
- EX.01.02 користувач ввів неправильний e-mail
- EX.01.03 користувач неправильно повторив пароль

![UC_1_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_1_1)


***

### Сценарій №2

**ID:** UC_2_1

**Назва:** Надання пакету платних послуг

**Учасники:** Користувач, система

**Передумова:** Користувач має бути зареєстрованим (Мати обліковий запис в системі)

**Результат:** Оформлено пакет платних послуг для користувача

**Виключні ситуації:**

- EX.02.01 Користувач не має акаунту в системі

![UC_2_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_2_1)

***

### Сценарій №3

**ID:** UC_3_1

**Назва:** Оплата обраного пакету послуг

**Учасники:** Користувач, система

**Передумова:** Користувач має обрати пакет послуг та натиснути на кнопку "Pay"

**Результат:** Користувач оплатив обраний пакет послуг

**Виключні ситуації:**

- EX.03.01 Користувач неправильно заповнив поля форми
- EX.03.02 Користувач не погодився із умовами надання послуг та політикой конфідеційності
- EX.03.03 Недостатньо коштів на платіжній карткі
- EX.03.04 Платіжна картка заблокована

![UC_3_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_3_1)

***

### Сценарій №4

**ID:** UC_4_1

**Назва:** Створення дошки проєкту

**Учасники:** Система, Тімлід

**Передумова:** Тімлід має бути зареєстрованимв системі

**Результат:** Створено дошку проєкту

**Виключні ситуації:**

- EX.04.01 Тімлід не заповнив поля форми "Add board title"

![UC_4_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_4_1)
***

### Сценарій №5

**ID:** UC_5_1

**Назва:** Створення команди

**Учасники:** Тімлід, система

**Передумова:** Тімлід створює проєкт в системі

**Результат:** Усі розробники ПЗ мають доступ до дошки проєкту в системі 

**Виключні ситуації:**

- EX.05.01  Розробник ПЗ не має акаунту в системі
- EX.05.02  Тімлід не отримав юзернейму розробника ПЗ
- EX.05.03  Розробник ПЗ надав не коректний юзернейм
- EX.05.04  Тімлід не коректно ввів юзернейм
- EX.05.05  Розробник ПЗ відхилив запрошення

![UC_5_1f](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_5_1f)
***

### Сценарій №6

**ID:** UC_6_1

**Назва:** Створення нової картки-завдання

**Учасники:** Тімлід, система

**Передумова:** Тімлід створює дошку проєкту у системі. Створено облікові записи розробників ПЗ у системі

**Результат:** Створено нову картку-завдання  

**Виключні ситуації:**

- EX.06.01  Дошка проєкту була видалена
- EX.06.02  Обліковий запис розробника ПЗ був видалений
- EX.06.03  Розробник ПЗ не доданий до команди проєкта
- EX.06.04  Тімлід не заповнив усі поля форми для створення нової картки-завдання

![UC_6_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_6_1)

***

### Сценарій №7

**ID:** UC_7_1

**Назва:** Редагування картки-завдання

**Учасники:** Тімлід, система

**Передумова:** Картка-завдання попередньо створена тімлідом у системі

**Результат:** Редагована картка-завдання у системі

**Виключні ситуації:**

- EX.07.01  Картка-завдання була видалена із системи.

![UC_7_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_7_1)

***

### Сценарій №8

**ID:** UC_8_1

**Назва:** Видалення картки-завдання

**Учасники:** Тімлід, система

**Передумова:** Картку-завдання попередньо створено тімлідом у системі

**Результат:** Видалення картки-завдання

**Виключні ситуації:**

- EX.08.01  Картка-завдання була попередньо видалена

![UC_8_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_8_1)

***

### Сценарій №9.

**ID:** UC_9_1

**Назва:** Зміна статусу картки-завдання

**Учасники:** Тімлід, система

**Передумова:** Картку-завдання попередньо створено тімлідом у системі

**Результат:** Зміна статусу картки-завдання у системі

**Виключні ситуації:**

- EX.09.01  Дошка проєкту була видалена
- EX.09.02  Картка-завдання була видалена

![UC_9_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_9_1)

***
### Сценарій №10

**ID:** UC_10_1

**Назва:** Створення/Редагування/Видалення картки- завдання

**Учасники:** Розробник ПЗ, система

**Передумова:** Картка-завдання попередньо створена/редагована/видалена тімлідом 

**Результат:** Розробник ПЗ ознайомлений із карткою-завданням

**Виключні ситуації:**

-	EX.10.01 Обліковий запис розробника ПЗ був видалений
-	EX.10.02 Розробник ПЗ не доданий до команди проєкта

![UC_10_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_10_1)

***

### Сценарій №11

**ID:** UC_11_1

**Назва:** Оновлення статусу картки-завдання розробником 

**Учасники:** Розробник ПЗ, система

**Передумова:** Картка-завдання попередньо створена тімлідом 

**Результат:** Тімлід ознайомлений з новим статусом завдання

- EX.11.01  Дошка проєкту була видалена
- EX.11.02  Картка-завдання була видалена
- EX.11.03  Розробнику не надано доступ до картки-завдання

![UC_11_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_11_1)

***

### Сценарій №12 
**ID**: UC_12_1

**Назва**: Приєднання розробника до команди

**Учасники**: Розробник ПЗ, система

**Передумова**: Розробник має бути зареєстрованим. 

**Результат**: Приєднання розробника до команди

![UC_12_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_12_1)

***

**ID**: UC_13_1

**Назва**: Додання коментаря замовника до робочої версії проєкту

**Учасники**: Замовник, система

**Передумова**: Замовника має бути додано до дошки проєкту

**Результат**: Тімлід отримує правки замовника 

![UC_13_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/IKerrigan/Project_management_system/master/src/uml/UC_13_1)

***
