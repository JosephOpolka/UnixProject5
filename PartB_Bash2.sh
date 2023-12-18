#!/bin/bash
#PartB_Bash2 - Joseph Opolka

# goes through age array looking for anyone over 65, then displaying the total ammount
# eligible for social security
count_eligible_employees() {
    local eligible_count=0
    for age in "${ages[@]}"; do
        if [ "$age" -ge 65 ]; then
            ((eligible_count++))
        fi
    done
    echo "Number of employees eligible for social security benefits: $eligible_count"
}

declare -a last_names
declare -a first_names
declare -a ages
# our last name, first name and age arrays

# this section reads from the Employees.txt file, and fills the associated arrays
while IFS=',' read -r last_name first_name age; do
    last_names+=("$last_name")
    first_names+=("$first_name")
    ages+=("$age")
done < HospitalEmployees.txt

echo "Employees' Data - "
# for loop, cycles through each last name, and prints out that person's data
for ((i = 0; i < ${#last_names[@]}; i++)); do
    echo "Name: ${first_names[i]} ${last_names[i]}, Age: ${ages[i]}"
done

count_eligible_employees