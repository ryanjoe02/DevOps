from django.http import JsonResponse


def healthcheck(request):
    return JsonResponse({"status": "ok"})


def get_version(request):
    return JsonResponse({"version": settings.VERSION})
