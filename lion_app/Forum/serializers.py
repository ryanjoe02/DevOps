from rest_framework import serializers

from .models import Topic, Post

class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = "__all__"
        read_only_fields = (
            "id",
            "created_at",
            "updated_at",
        )

class TopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = Topic

    posts = serializers.SerializerMethodField()

    def get_posts(self, obj: Topic):
        posts = obj.posts.all()
        return PostSerializer(posts, many=True).data
