from django.urls import path
from . import views


urlpatterns = [
    path('', views.create_blog, name='blog-create'),
    # path('', views.update_blog, name='update_blog'),
    # path('', views.delete_blog, name='delete_blog'),
    # path('', views.read_blog, name='read_blog'),
]
