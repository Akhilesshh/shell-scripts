#!/bin/bash

echo "Welcome to our hotel! Please choose an item from the menu:"
echo "1) idli"
echo "2) dosae"
echo "3) coffeetea"
echo "4) Quit"

total=0

while true; do
  read -p "Enter your choice: " choice
  case $choice in
    1)
      echo "idli menu:"
      echo "1) rave idli: $20"
      echo "2) tatte idli: $20"
      read -p "Enter your choice: " idli
      case $idli in
        1)
          total=$((total + 20))
          echo "rave idli added to your bill. Current total: $total"
          ;;
        2)
          total=$((total + 20))
          echo "tatte idli added to your bill. Current total: $total"
          ;;
        *)
          echo "Invalid option. Please try again."
          ;;
      esac
      ;;
    2)
      echo "dosae menu:"
      echo "1) masale dosae: $50"
      echo "2) onion dosae: $60"
      read -p "Enter your choice: " dosae
      case $dosae in
        1)
          total=$((total + 50))
          echo "masale dosae added to your bill. Current total: $total"
          ;;
        2)
          total=$((total + 60))
          echo "onion dosae added to your bill. Current total: $total"
          ;;
        *)
          echo "Invalid option. Please try again."
          ;;
      esac
      ;;
    3)
      echo "coffeetea menu:"
      echo "1) coffee: $10"
      echo "2) tea: $10"
      read -p "Enter your choice: " coffeetea
      case $coffeetea in
        1)
          total=$((total + 10))
          echo "coffee added to your bill. Current total: $total"
          ;;
        2)
          total=$((total + 10))
          echo "tea added to your bill. Current total: $total"
          ;;
        *)
          echo "Invalid option. Please try again."
          ;;
      esac
      ;;
    4)
      echo "Quitting... Final bill: $total"
      exit
      ;;
    *)
      echo "Invalid option. Please try again."
      ;;
  esac
done

