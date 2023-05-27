from django.contrib import admin
from services.models import Plan, Subscription, Service

admin.site.register(Service)
admin.site.register(Plan)
admin.site.register(Subscription)

