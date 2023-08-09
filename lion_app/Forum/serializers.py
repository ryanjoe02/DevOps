from rest_framework import serializers

from .models import Topic, Post

class TopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = Topic
        fields = "__all__"
        read_only_fields = (
            "id",
            "create_at",
            "update_at",
        )