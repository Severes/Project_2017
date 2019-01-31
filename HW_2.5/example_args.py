import sys

# print(argv)
'''
Данный файл мы должны вызвать из командной строки
Для этого сначала перейдем в директорию, где находится текущий файл, затем при помощи команды
python example_args.py запустим данный файл:
Также мы можем написать программу, которую также будем запускать из командной строки:
программа будет выводить информацию в зависимости от того, записал ли пользователь в значение
агумента что-будь или нет. То есть, если мы в командной строке просто запустим
программу python example_args.py, то выведется первый if. Если
напишем python example_args.py Vladimir, то выведется Hello Vladimir
Это происходит из-за того, что argv - это по сути список, в котором первый элемент это имя самой программы
в который мы добавили элемент Vladimir,
а затем вывели этот элемент при условии, что список argv не равен 1
'''
if len(sys.argv) == 1:
    print('Hello world')
else:
    print('Hello', sys.argv[1])

# следующая логика
# вызывая данную программу через командную строку, мы можем сразу проивзодить какие-то вычисления
sum_args = 0
for args in sys.argv[1:]:  # начинаем с первого элемента, потому что первый выведен под приветствие запросом выше
    sum_args += int(args)
print(sum_args)
# прописав блок ниже, мы можем воздействовать на исход работы программы, и указывать код захвата.
# данныйкод можо обрабатывать в дальнейшем, сообщая при выполнении программы, как она отраотала
# В данном случае программа завершится корреткно с кодом 0, и некорректно с кодом 5
if len(sys.argv) == 1:
    exit(5)
else:
    exit(0)
