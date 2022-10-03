---
## Front matter
lang: ru-RU
title: "Лабораторная работа №4"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Кондратьев Арсений Вячеславович"
institute: "Российский университет дружбы народов, Москва, Россия"
date: 02.10.2022

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2

fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric


## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Составить отчет по 3 лабораторной в формате Markdown

# Выполнение лабораторной работы

1. Сделать  предварительную конфигурацию git(рис.[-@fig:001])

 ![Рис. 1](image/1.PNG){ #fig:001 width=70% }
 
2. Создание SSH ключа(рис.[-@fig:002])

![Рис. 2](image/2.PNG){ #fig:002 width=70% }

3.	Создать каталог для предмета(рис.[-@fig:003])

![Рис. 3](image/3.PNG){ #fig:003 width=70% }

4.	Клонировать созданный репозиторий(рис.[-@fig:004])

![Рис. 4](image/4.PNG){ #fig:004 width=70% }

5.	Удалил лишние файлы и создал необходимые каталоги(рис.[-@fig:005])

![Рис. 5](image/5.PNG){ #fig:005 width=70% }

6.	Отправил файлы на сервер(рис.[-@fig:006])

![Рис. 6](image/6.PNG){ #fig:006 width=70% }

# Выводы

Я составил отчет по 3 лабораторной в формате Markdown

# Контрольные вопросы

1.	Системы контроля версий – это программные инструменты, помогающие командам разработчиков управлять изменениями в исходном коде с течением времени. Применяются при работе нескольких человек над одним проектом

2.	Хранилище – место, где хранятся изменения кода. Commit - снимок состояния проекта на текущий момент времени. История – список снимков состояния проекта к которым можно при необходимости откатиться. Рабочая копия - Рабочая копия является снимком одной версии проекта.

3.	Централизованные системы контроля версий представляют собой приложения типа клиент-сервер, когда репозиторий проекта существует в единственном экземпляре и хранится на сервере.(CVS, Subversion) Децентрализованные системы контроля версий (Distributed Version Control System, DVCS) позволяют хранить репозиторий (его копию) у каждого разработчика, работающего с данной системой.(Git, Mercurial)

4.	Создаем свою ветку, базирующуюся на главной(git checkout -b имя_ветки), вносим изменения, делаем снимок(git commit) и затем вносим эти изменения в свою ветку(git push)

5.	Отдельные ветки разработчиков внедряются в общую master ветку

6.	Git позволяет несокльким разработчикам с удобством работать над одним проектом. Возможность получать изменения, внесенные другим человеком и откатываться на прошлые версии в случае ошибок.

7.	Создание основного дерева репозитория – git init b. получение обновлений (изменений) текущего дерева из центрального репозитория – git pull c. отправка всех произведённых изменений локального дерева в центральный репозиторий – git push d. просмотр списка изменённых файлов в текущей директории – git status e. просмотр текущих изменений – git diff f. добавить все изменённые и/или созданные файлы и/или каталоги – git add g. сохранить все добавленные изменения и все изменённые файлы – git commit h. создание новой ветки, базирующейся на текущей: - git checkout -b имя_ветки i. переключение на некоторую ветку - git checkout имя_ветки j. слияние ветки с текущим деревом - git merge --no-ff имя_ветки k. удаление локальной уже слитой с основным деревом ветки - git branch -d имя_ветки l. принудительное удаление локальной ветки - git branch -D имя_ветки

8.	С локальным: commit(снимок состояния проекта) С удаленным: push(отправляем изменения) pull(загружаем изменения)

