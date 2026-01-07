echo ""
echo "Вывод всех ключей:"
echo "===================="
redis-cli --scan --pattern '*' | while read key; do
    value=$(redis-cli GET "$key")
    echo "Key: '$key' - Value: '$value'"
done
