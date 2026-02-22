# Design Specification — Extracted from HTML Inspirations

## Color System Update
| Token | Old | New |
|---|---|---|
| Primary | `#FF007F` (Neon Pink) | `#0DF26C` (Matrix/Terminal Green) |
| Secondary | `#00F0FF` (Neon Blue) | `#FF0055` / `#FF0080` (Neon Pink accent) |
| Accent Blue | — | `#00E5FF` / `#00D2FF` (Neon Cyan) |
| Accent Yellow | — | `#FFCC00` |
| Background | `#000000` (OLED Black) | `#000000` (kept) |
| Surface | — | `#111111` / `#121212` |
| Card | — | `#1A1D23` with `#2D343F` border |
| Code BG | — | `#1E1E2E` |

## Typography
- **Mono**: JetBrains Mono (code blocks, UI labels) — already used
- **Display**: Inter (headings, body text) — already used via google_fonts
- **Serif**: Source Serif 4 (PDF disguise screen only)

## Screen Designs

### 1. Fake Lock Screen → "iOS PDF Viewer"
- Realistic iOS-style app chrome (back button "Files", search, share icons)
- Paper container with academic syllabus (serif font, grading policy, schedule)
- Secret trigger: long-press filename in header bar (1.5s)
- Page slider in footer

### 2. DSA Dashboard → "Skill Tree Map"
- GitHub commit graph with neon glow boxes (matrix green gradient)
- Vertical skill tree with zone nodes (circular buttons with progress rings)
- Dashed connector path between zones
- Lock icons on incomplete zones
- Bottom nav: Map, Practice, Rank, Profile
- FAB play button

### 3. Jigsaw Engine → "Interactive Logic Builder"
- Split-screen: Code editor top (with line numbers, syntax highlighting)
- Bottom sheet with draggable glass chips (2-column grid)
- Drop zones with dashed borders that glow on hover
- "Mental Dry Run" section showing array state with highlighted `mid`
- "Run Code" primary action button

### 4. Memory Visualizer (NEW SCREEN)
- Split layout: Stack (left 40%) + Heap (right 60%)
- Animated SVG connector lines with neon gradient
- Stack frame cards with variable types and hex addresses
- Heap objects with array visualizations
- Code snippet at bottom showing current execution line

### 5. Time Complexity Swipe Mode (NEW SCREEN)
- Tinder-style card stack with code snippets
- Directional indicators: Left=O(logN), Right=O(N), Up=O(N²)
- Card with terminal-style header (colored dots)
- Bottom action buttons as alternatives to swiping
- Progress history trail (check/cross dots)

### 6. Company Shards Inventory (NEW SCREEN)
- 2-column grid of company cards (Amazon, Google, Meta, etc.)
- Each card: logo, shard name, topic, progress bar
- Daily loot chest with glow effect
- Master OA locked button
- Credits/currency display in header
- Bottom nav: Home, Learn, Inventory, Profile

### 7. Export to Matrix Terminal (NEW SCREEN)
- Full-screen terminal aesthetic with matrix grid background
- Terminal title bar (colored dots) + Solution.java label
- Syntax-highlighted Java code
- Complexity cards (Time O(n), Space O(n))
- "COPY TO CLIPBOARD" primary action
- "VERIFIED" floating badge

## UI Patterns
- **Glass panels**: `backdrop-filter: blur(12px)`, subtle white borders
- **Neon glow shadows**: `box-shadow: 0 0 10px rgba(color, 0.5)`
- **Progress rings**: SVG circles with stroke-dasharray
- **Dashed connector paths**: Repeating linear gradient lines
- **Grid background**: Subtle dot-grid or line-grid overlays at low opacity
