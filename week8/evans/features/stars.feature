# language: bg
Функционалност: Звездички
  За да насърчаваме студентите да комуникират повече един с друг
  като преподаватели
  искаме да можем да им даваме бонус точки за добри участия във форумите

  Предистория:
    Дадено че съм влязъл като администратор

  Сценарий: Даване на точка за тема
    Дадено че студент "Петър Петров" е публикувал тема "Въпрос"
    Когато дам звездичка на темата "Въпрос"
    То "Петър Петров" трябва да има "1" точка
    И темата "Въпрос" трябва да има звездичка

  Сценарий: Даване на точка за отговор
    Дадено че студент "Иван Иванов" е отговорил на тема "Въпрос"
    Когато дам звездичка на отговора на "Иван Иванов" на темата "Въпрос"
    То "Иван Иванов" трябва да има "1" точка

  Сценарий: Премахване на звездичка от тема
    Дадено че студент "Иван Иванов" има звездичка за тема "Въпрос"
    Когато махна звездичката на темата "Въпрос"
    То "Иван Иванов" трябва да има "0" точки
