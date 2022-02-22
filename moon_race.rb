

# ==== LIVECODE =====

# Pseudo-code for the moon race

# ===== Game Setup ====
# 0 - Greet the user
# 1 - Ask user for their name
# 2 - Select opponent
#   # (How) - Choose the name from an array
# 3 - Welcome to the game!
# 4 - Set the player and computer positions to 0

# ===== Play the game =====
# loop starts
# 5 - Prompt user to roll a dice
# 6 - Roll a dice
#      (how?) rand(1..6)
# 7 - Update the position and display the player's movement
# 8 & 9 - do the same for the computer
# Loop *until* either player or computer reaches 10 or more 
# loop ends

# ====== End the game =====
# Display the winner
#    Actually figure out who is the winner
# Draw if both reached the moon on the same turn...


# Use methods to make your code more readable, for example:
def roll_dice
    rand(1..6)
end