from django.shortcuts import render

from rest_framework import generics
from .models import Post
from .serializers import PostSerializer
# Create your views here.

class PostListView(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer

class PostDetailView(generics.RetrieveAPIView):
    def get_object(self, pk):
        try:
            return Post.object.get(pk=slug)
        except Post.DoesNotExist:
            raise Http404
    #queryset = Post.objects.all()
    #serializer_class = PostSerializer
