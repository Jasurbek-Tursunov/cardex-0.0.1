from rest_framework import serializers

from .models import (
    Customer,
    Status,
    Category,
    Template,
    Card,
    Order,
)

class TemplateListSerializer(serializers.ModelSerializer):
    """Список Клиентов"""

    class Meta:
        model = Template
        field = ("name", "image", "draft")

