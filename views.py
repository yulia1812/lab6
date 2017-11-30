from django.shortcuts import render
from django.views.generic import ListView
from dz_v1 import models
# Create your views here.

class musical_group_view(ListView):
    model = models.MusicalGroup

    def get(self, request):
        d = dict(orders=self.model.objects.values('name', 'date_create', 'description'))
        return render(request, "groups.html", d)
