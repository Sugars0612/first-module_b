from django.urls import path

from . import views

urlpatterns = [
    path("banners/", views.banner),
    path("foods/", views.foods),
    path("categories/", views.categories),
    path("foods-type/", views.foods_type),
    path("chefs/", views.chefs),
]