api_key="97eb7232fb6a4aaaa50181928242106"

echo "Ingrese el nombre de una ciudad:"
read ciudad

ciudad_encode=$(echo $ciudad | sed 's/ /%20/g')

response=$(curl -s "http://api.weatherapi.com/v1/current.json?key=$api_key&q=$ciudad_encode&lang=es")

if echo "$response" | jq -e .error >/dev/null; then
	echo "Error: $(echo $response | jq -r .error.message)"
	exit 1
fi

nombreCiudad=$(echo "$response" | jq -r '.location.name')
tempCiudad=$(echo "$response" | jq -r '.current.temp_c')
condicionCiudad=$(echo "$response" | jq -r '.current.condition.text')

echo "Ciudad: $nombreCiudad"
echo "Temperatura: $tempCiudad grados"
echo "Clima: $condicionCiudad"
