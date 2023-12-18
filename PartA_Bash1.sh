#!/bin/bash
# PartA Bash 1 - Joseph Opolka

sub_menu1() {
    echo "~~ Games ~~"
    echo "1 - Solitiare"
    echo "2 - Mine Sweeper"
    echo "3 - Return to Main Menu"
    read -p "Enter your choice: " sub_menu1_choice

    case $sub_menu1_choice in
        1)
            echo "Trump Card, you lose"
            ;;
        2)
            echo "You hit a bomb on your first move. Bummer..."
            ;;
        3)
            echo "Going back to the main menu..."
            ;;
        *)
            echo "Invalid choice. Going back to the main menu"
            ;;
    esac
}

sub_menu2() {
    echo "~~ System Preferences ~~"
    echo "1 - Colors"
    echo "2 - Fonts"
    echo "3. Go back to main menu"
    read -p "Enter your choice: " sub_menu2_choice

    case $sub_menu2_choice in
        1)
            echo "Well im the machine around here, and I say the white text and black background stays"
            ;;
        2)
            echo "Monospace or bust, pal"
            ;;
        3)
            echo "Going back to the main menu..."
            ;;
        *)
            echo "Invalid choice. Going back to the main menu"
            ;;
    esac
}

sub_menu3() {
    echo "~~ Administer Users ~~"
    echo "1 - Delete Admin"
    echo "2 - Delete Everyone Else"
    echo "3. Go back to main menu"
    read -p "Enter your choice: " sub_menu2_choice

    case $sub_menu2_choice in
        1)
            echo "If you take out the admin, who will control you?"
            ;;
        2)
            echo "Tyranical though process... I like it >:)"
            ;;
        3)
            echo "Going back to the main menu..."
            ;;
        *)
            echo "Invalid choice. Going back to the main menu"
            ;;
    esac
}

while true; do
    echo "~~ Welcome to the Menu ~~"
    echo "1 - Edit Commands"
    echo "2 - Administer Users 000"
    echo "3 - Games"
    echo "4 - System Commands"
    echo "5 - System Preferences"
    echo "6 - Exit"

    read -p "Enter your choice: " main_menu_choice
    # based on user input (p) certain cases will activate

    case $main_menu_choice in
        1)
            echo "Editing User Commands - "
            # double semicolons return us to the main menu
            ;;
        2)
            sub_menu3
            ;;
        3)
            sub_menu1
            ;;
        4)
            echo "Your now in System Commands."
            ;;
        5)
            sub_menu2
            ;;
        6)
            echo "Exiting the menu..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac
    #escapes case section
done