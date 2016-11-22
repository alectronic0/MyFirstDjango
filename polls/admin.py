from django.contrib import admin

from polls.models.models import Question, Choice

admin.site.register(Question)
admin.site.register(Choice)
