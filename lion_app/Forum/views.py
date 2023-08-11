from drf_spectacular.utils import extend_schema
from rest_framework import viewsets

from .models import Topic, Post
from .serializers import TopicSerializer, PostSerializer


@extend_schema(tags=["Topics"])
class TopicViewSet(viewsets.ModelViewSet):
    queryset = Topic.objects.all()
    serializer_class = TopicSerializer



@extend_schema(tags=["Post"])
class PostViewSet(viewsets.ModelViewset):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
