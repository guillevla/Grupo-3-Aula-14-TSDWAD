Historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
sum = 0
cont = 0
prom = 0
for i in Historial3:
    sum += i
    cont = len(Historial3)
prom = round (sum/cont, 2)
if prom > 4500:
        print("Se ha excedido del gasto promedio para su mascota")
else:
        print(prom)
