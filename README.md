# 🎮 Cutie Pong Game 

A simple **two-player Pong game** built using **Godot 4.5** — currently a **work in progress**.  
The game follows the classic Pong mechanics: two paddles, a bouncing ball, and a scoreboard to track points.  

<img width="1274" height="956" alt="image" src="https://github.com/user-attachments/assets/18259177-fa17-4372-abd8-507fa5517205" />


## 🚧 Project Status
> 🧱 **In Progress Work**  
The core functionality is complete — ball movement, paddle control, collision sounds, and scoring are implemented.  
Future updates will focus on adding game settings, and player modes.



## 🕹️ Game Features & Requirements

### ✅ Basic Functionality
- **Arena Setup**  
  - Two side walls and a divider create the playfield.
- **Player Paddles**  
  - Two paddles placed at opposite sides of the arena.  
  - Players can move their paddles vertically using key inputs.
- **Ball Mechanics**  
  - The ball moves automatically at the start of the game.  
  - It bounces off walls and paddles based on collision direction.
  - Ball's speed increases as it hits the paddle.
- **Scoring System**  
  - When the ball passes a paddle and leaves the playfield, the opposite player scores a point.  
  - The score is tracked and displayed on screen.
- **Sound Effects**  
  - A sound plays when the ball collides with a paddle or wall.  
  - A different sound plays when a player scores.



## 🧩 Future Enhancement

  - Implement an AI paddle that follows the ball’s position, allowing for **single-player** gameplay.
  - Game Settings



## 🎮 Controls

| Player | Move Up | Move Down |
|:-------|:---------|:----------|
| **Player 1** | `W` | `S` |
| **Player 2** | `↑` (Arrow Up) | `↓` (Arrow Down) |

**Additional Controls:**
- `R` → Reset / Restart the game



## 🕹️ How to Play

1. **Start the game** — the ball will automatically begin moving in a random direction.  
2. **Deflect the ball** using your paddle to prevent it from passing your side.  
3. **Score points** by making the ball pass your opponent’s side of the arena.  
4. The game continues indefinitely — you can reset anytime by pressing **R**.  
5. First player to reach your chosen score (e.g., 10 points) wins the match!



## 🛠️ Tech Stack

- **Engine:** Godot 4.5  
- **Language:** GDScript  
- **Audio:** `.wav` or `.ogg` files for collision and scoring sounds  
- **Resolution:** 1290 × 960  



## 🧾 Credits

- Game created and design by me, **Kaeri** 🎨  
- SFX from #Uppbeat (free for Creators!): https://uppbeat.io/t/pecan-pie/boogie | License code: QRHY0TOZWBCD8FOQ
- MUSIC by Brackeys, Sofia Thirslund
- FONTS by Jayvee Enaguas - HarvettFox96 - (https://www.dafont.com/pixel-operator.font?l[]=10&l[]=1)



## 🪐 License

This project is shared for educational purposes.  
Feel free to fork and experiment with it. Please credit the original author if reused or modified.




