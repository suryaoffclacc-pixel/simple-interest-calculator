#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="
echo ""

# Prompt user for principal amount
echo -n "Enter Principal Amount (P): "
read principal

# Prompt user for rate of interest
echo -n "Enter Rate of Interest (R) in %: "
read rate

# Prompt user for time period
echo -n "Enter Time Period (T) in years: "
read time

# Calculate Simple Interest
# Using bc for floating point arithmetic
si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $si" | bc)

echo ""
echo "=== Results ==="
echo "Simple Interest: Rs. $si"
echo "Total Amount: Rs. $total"
