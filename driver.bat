del "cache_float.txt"
del "cache_double.txt"

for /l %%n in (1000, 1, 1100) do (
   for /l %%m in (1, 1, 5) do (
		cache_float.exe %%n >>cache_float.txt 2>&1
		cache_double.exe %%n >>cache_double.txt 2>&1
	)
)
for /l %%n in (1110, 10, 2000) do (
	for /l %%m in (1, 1, 5) do (
		cache_float.exe %%n >>cache_float.txt 2>&1
		cache_double.exe %%n >>cache_double.txt 2>&1
	)
)
