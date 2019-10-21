#!/bin/bash

echo "editing file..."
sed -i '/Linux/i The next line contains the word Linux!' $1
echo "Done"

