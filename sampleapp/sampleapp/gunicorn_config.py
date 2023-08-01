import multiprocessing

bind = "0.0.0.0:8000"
# how many django applications work
workers = multiprocessing.cpu_count() * 2 + 1
