# 🎮 Cutie Pong Game 

A simple **two-player Pong game** built using **Godot 4.5** — currently a **work in progress**.  
The game follows the classic Pong mechanics: two paddles, a bouncing ball, and a scoreboard to track points.  

> [Play online](https://kaeri-gg.github.io/pong-game/release/)

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

## 🌐 GitHub Pages Deployment

This project is configured for automatic deployment to GitHub Pages. Here's everything you need to know:

### 🚀 **Play the Game Online**
[**🎮 Play Now on GitHub Pages →**](https://your-username.github.io/godot-basics/)

### 📋 **Deployment Setup**

**Prerequisites:**
- Repository must be public (for free GitHub Pages)
- GitHub Pages must be enabled in repository settings

**Setup Steps:**
1. Go to your repository **Settings** → **Pages**
2. Set **Source** to "Deploy from a branch"
3. Set **Branch** to `main` (root folder)
4. The game will auto-deploy on every push to `main` branch

### ⚙️ **Export Configuration (Important!)**

For Godot web exports to work on GitHub Pages, specific settings are required:

#### **In Godot Export Settings:**
1. **Project** → **Export** → Select **"Web"** preset
2. **Critical Settings** (must be disabled):
   - ✅ **Thread Support**: `OFF`
   - ✅ **Extensions Support**: `OFF`
3. **Export** your game to `index.html`

#### **Audio Bus Fix:**
All `AudioStreamPlayer` nodes must use the default **Master** bus only.

❌ **Remove these from .tscn files:**
```
bus = &"Music"
bus = &"SFX"
bus = &"Sound"
```

✅ **Use default bus (no bus line needed):**
```
[node name="AudioStreamPlayer2D" type="AudioStreamPlayer2D"]
stream = ExtResource("1_audio")
autoplay = true
```

### 🔧 **Troubleshooting Common Errors**

#### **Error: `SharedArrayBuffer transfer requires crossOriginIsolated`**
**Cause:** Threading is enabled in export settings  
**Fix:** Disable **Thread Support** in Godot export settings and re-export

#### **Error: `invalid bus index "-1"`**
**Cause:** Audio nodes reference non-existent audio buses  
**Fix:** Remove all `bus = &"BusName"` lines from scene files

#### **Error: `The following features required to run Godot projects on the Web are missing`**
**Cause:** Cross-Origin Isolation headers missing  
**Fix:** Ensure Thread Support is disabled (GitHub Pages doesn't support custom headers)

### 📝 **Post-Export Verification**

After exporting, verify your `index.html` contains:

```javascript
const GODOT_THREADS_ENABLED = false;
```
```javascript
"ensureCrossOriginIsolationHeaders": false
```

### 📁 **Required Files for Deployment**

Ensure these files are in your repository root:
- ✅ `index.html` (main game file)
- ✅ `index.js` (game engine)
- ✅ `index.wasm` (compiled game)
- ✅ `index.pck` (game assets)
- ✅ `index.icon.png` (favicon)
- ✅ `index.png` (loading splash)
- ✅ `.nojekyll` (disables Jekyll processing)
- ✅ `.github/workflows/deploy.yml` (auto-deployment)

### 🔄 **Automatic Deployment Workflow**

The repository includes a GitHub Actions workflow that:
1. **Triggers** on every push to `main` branch
2. **Deploys** all files to GitHub Pages automatically
3. **Updates** the live game within minutes

**Manual deployment trigger:** Go to **Actions** tab → **Deploy to GitHub Pages** → **Run workflow**

### 💡 **Development Tips**

**Local Testing:**
```bash
npx http-server --cert ~/cert.pem --key ~/key.pem --tls -o .
```

Run once if certs are not present (use gitHub bash)
```bash
openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout key.pem -out cert.pem
```

**Export Checklist:**
- [ ] Thread Support disabled
- [ ] Extensions Support disabled  
- [ ] No custom audio buses used
- [ ] All files exported to repository root
- [ ] Local testing successful
- [ ] Committed and pushed to main branch

**Deployment Status:** Check the **Actions** tab for deployment progress and any errors.



