from django.db import models

class user(models.Model):
    name = models.CharField(max_length=30)
    login = models.CharField(max_length=30)
    password = models.CharField(max_length=30)

class MusicalGroup(models.Model):
    name = models.CharField(max_length=30)
    date_create = models.CharField(max_length=30)
    description = models.CharField(max_length=100)

class UserGroup(models.Model):
    id_group = models.ForeignKey(MusicalGroup, on_delete=models.CASCADE)
    id_user = models.ForeignKey(user, on_delete=models.CASCADE)
