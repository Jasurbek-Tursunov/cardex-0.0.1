from rest_framework.response import Response 
from rest_framework.views import APIView

from .models import Template
from .serializers import TemplateListSerializer

class TemplateListView(APIView):
    """Показ шаблонов"""
    def get(self, request):
        templates = Template.objects.filter(draft=False)
        serializer = TemplateListSerializer(templates, many=True)
        return Response(serializer.data)

