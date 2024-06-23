echo "Ingrese un nombre para saber su edad:"
read nombre

response=$(curl -s "https://api.agify.io/?name=$nombre")

if echo "$response" | jq -e .error >/dev/null; then
        echo "Error: $(echo $response | jq -r .error.message)"
        exit 1
fi

edad=$(echo "$response" | jq -r '.age')

echo "$nombre tiene $edad"
