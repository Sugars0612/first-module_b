from django.http import JsonResponse
from django.shortcuts import render

# Create your views here.

def categories(request):
    data = [
        {
            "id": 1,
            "name": "Main dishes",
            "image": "/media/categories/1.png",
        },
        {
            "id": 2,
            "name": "Pastries",
            "image": "/media/categories/2.png",
        },
        {
            "id": 3,
            "name": "Soups",
            "image": "/media/categories/3.png",
        },
    ]

    return JsonResponse(data, safe=False)

def banner(request):
    data = [
        {
            "id": 1,
            "image": "/media/banner/1.jpg",
        },
        {
            "id": 2,
            "image": "/media/banner/2.jpg",
        },
        {
            "id": 3,
            "image": "/media/banner/3.jpg",
        },
    ]

    return JsonResponse(data, safe=False)


def foods(request):
    data = [
        {
            "id": 1,
            "name": "Matsutake foie gras",
            "image": "/media/foods/1.png",
            "rating": 4.8,
            "introduce": "什么都没有ing"
        },
        {
            "id": 2,
            "name": "Burgundy stew",
            "image": "/media/foods/2.png",
            "rating": 4.6,
            "introduce": "什么都没有ing"
        },
        {
            "id": 3,
            "name": "French pastry",
            "image": "/media/foods/3.png",
            "rating": 4.7,
            "introduce": "什么都没有ing"
        },
    ]

    return JsonResponse(data, safe=False)

def foods_type(request):
    data = [
        {
            "id": 1,
            "name": "Main Dishes",
            "image": "/media/foodsType/1.png",
        },
        {
            "id": 2,
            "name": "Pastries",
            "image": "/media/foodsType/2.png",
        },
        {
            "id": 3,
            "name": "Soups",
            "image": "/media/foodsType/3.png",
        },
    ]

    return JsonResponse(data, safe=False)


def chefs(request):
    data = [
        {
            "id": 1,
            "name": "Alex Martin",
            "avatar": "/media/chefs/1.png",
            "rating": 4.8,
            "introduction": "A passionate chef specializing in French cuisine.",
            "foods": [
                {
                    "name": "Matsutake foie gras",
                    "image": "/media/foods/1.png",
                },
                {
                    "name": "Burgundy stew",
                    "image": "/media/foods/2.png",
                },
            ],
        },
        {
            "id": 2,
            "name": "Sophie Laurent",
            "avatar": "/media/chefs/2.png",
            "rating": 4.7,
            "introduction": "A pastry chef who loves creating elegant desserts.",
            "foods": [
                {
                    "name": "French pastry",
                    "image": "/media/foods/3.png",
                },
                {
                    "name": "Burgundy stew",
                    "image": "/media/foods/2.png",
                },
            ],
        },
        {
            "id": 3,
            "name": "Daniel Wilson",
            "avatar": "/media/chefs/3.png",
            "rating": 4.6,
            "introduction": "A creative chef focused on fresh and simple ingredients.",
            "foods": [
                {
                    "name": "Matsutake foie gras",
                    "image": "/media/foods/1.png",
                },
                {
                    "name": "French pastry",
                    "image": "/media/foods/3.png",
                },
            ],
        },
    ]

    return JsonResponse(data, safe=False)