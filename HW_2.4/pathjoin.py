import os

new_path = os.path.join('a', 'b', 'c')  # path.join принимает параметры через запятую. Он просто соединяет строки путей.
# Он просто строит путь, он не проверяет существование пути. То есть на самом деле, пути a\b\c не существует же :)
print(new_path)

