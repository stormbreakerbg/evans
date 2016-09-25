# language: bg
Функционалност: Задачи
  За да могат студентите наистина да научат материала
  като преподаватели
  искаме да можем да им даваме задачи за домашно

  Сценарий: Създаване на задача
    Дадено че съм влязъл като администратор
    Когато създам задача:
      | Име     | Първа задача      |
      | Условие | Напишете програма |
    То трябва да съм на задачата "Първа задача"

  Сценарий: Редактиране на задача
    Дадено че съм влязъл като администратор
    И че съществува задача "Първа задача"
    Когато редактирам задачата "Първа задача":
      | Име | Задача 1.5 |
    То трябва да съм на задачата "Задача 1.5"

  Сценарий: Предаване на решение
    Дадено че съм студент
    И че в момента тече задача "Първа задача"
    Когато предам следното решение на "Първа задача":
      """
      print("Hello world")
      """
    То трябва да съм на задачата "Първа задача"
    И да имам решение на "Първа задача" с код:
      """
      print("Hello world")
      """

  Сценарий: Опит за предаване на решение след крайния срок
    Дадено че съм студент
    И че има затворена задача "Първа задача"
    Когато отворя моето решение на "Първа задача"
    То трябва да виждам "Крайният срок на тази задача е отминал."

  Сценарий: Опит за предаване на задача, която не отговаря на стиловите изисквания
    Дадено че съм студент
    И че в момента тече задача "Първа задача"
    И че методите в "Първа задача" са ограничени до 2 реда
    Когато предам следното решение на "Първа задача":
      """
      class LongMethodContainer
        def long_method
          one line
          two lines
          three lines
        end
      end
      """
    То трябва да видя, че метода е твърде дълъг
