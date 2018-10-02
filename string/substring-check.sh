string='My long string'
if [[ $string = *"My long"* ]]; then
  echo "It's there!"
fi