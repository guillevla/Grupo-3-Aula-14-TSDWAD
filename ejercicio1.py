## Inciso 8 Crear una tupla en Python con el nombre de "Historial4"
# la cual contenga los siguientes valores: 7510, 7960, 76180, 800, 410

Historial4 = (7510, 7960, 76180, 800, 4100)
valor_minimo = Historial4[0]

for precio in Historial4:
    if precio < valor_minimo:
        valor_minimo = precio


print("El valor mínimo de atención gastada en Olivia fue ", valor_minimo)

## Alternativa simple
print("El valor mínimo de atención gastada en Olivia fue ", min(Historial4))
