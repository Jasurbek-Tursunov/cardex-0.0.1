from django.db import models
from datetime import date, time


class Customer(models.Model):
    """Заказчики"""
    name = models.CharField(max_length=100)
    date = models.DateField(default=date.today)
    count = 0
    
    class Meta:
        verbose_name = "Заказчик"
        verbose_name_plural = "Заказчики"

    def __str__(self):
        return str(self.name)


class Status(models.Model):
    """Статус заказа"""
    title = models.CharField(max_length=150)

    class Meta:
        verbose_name = "Статус"
        verbose_name_plural = "Статусы"
    
    def __str__(self):
        return str(self.title)


class Category(models.Model):
    """Категория"""
    name = models.CharField("Категория", max_length=150)
    image = models.ImageField("Изображение", upload_to="category/", default="")
    description = models.TextField("Описание")
    url = models.SlugField(max_length=160)
    count = 0

    def __str__(self):
        return self.name

    class Meta:
        verbose_name   = "Категория"
        verbose_name_plural = "Категории"


class Template(models.Model):
    """Шаблоны визиток"""
    name = models.CharField("Категория", max_length=150)
    description = models.TextField("Описание")
    image = models.ImageField("Изображение", upload_to="template/", default="")
    draft = models.BooleanField("Черновик", default=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name   = "Шаблон"
        verbose_name_plural = "Шаблоны"


class Card(models.Model):
    """Визитки"""
    template = models.ForeignKey(
        Template, verbose_name="Шаблон", on_delete=models.SET_NULL, null=True
    )
    

class Order(models.Model):
    """Таблица заказов"""
    customer = models.ForeignKey(
        Customer, verbose_name="Заказчик", on_delete=models.SET_NULL, null=True
    )
    time = models.TimeField("Время заказа", default=time)
    date = models.DateField("Дата заказа", default=date.today)
    price = models.PositiveIntegerField("Цена за пачку")
    amount = models.PositiveIntegerField("Количество", default=100)
    card = models.SlugField(max_length=160)
    status = models.ForeignKey(Status, verbose_name="Статус", on_delete=models.SET_NULL, null=True)

    class Meta:
        verbose_name = "Заказ"
        verbose_name_plural = "Заказы"

    def __str__(self):
        return str(self.card)
    