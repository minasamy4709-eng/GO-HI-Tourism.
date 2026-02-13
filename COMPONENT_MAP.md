# 🗺️ Go & Hi Tourism - Component Map

Visual guide to all components and their locations in the codebase.

---

## 📊 Site Structure (Visual Flow)

```
┌─────────────────────────────────────────────────────────────┐
│                        NAVIGATION                            │
│  Logo | Features | How It Works | Partners | About | Download│
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                          HERO                                │
│         The Smart Way to Explore Egypt                       │
│    [Download App] [Watch Demo]                               │
│    15M+ Tourists | 24/7 Support | 100% Secure                │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                        PROBLEM                               │
│    [Language    ] [Safety      ] [Transportation  ]          │
│    [Barriers    ] [Concerns    ] [Issues          ]          │
│    [Icon + Desc ] [Icon + Desc ] [Icon + Desc     ]          │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                        SOLUTION                              │
│  [Image]          Go & Hi Solves Everything                  │
│  [Phone]          ✓ One unified platform                     │
│  [Mockup]         ✓ AI-powered guide                         │
│                   ✓ Verified transportation                  │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                       FEATURES                               │
│  [Transport] [AI Guide ] [Planning]                          │
│  [Recommend] [Payments ] [Support ]                          │
│   6 feature cards with icons, titles, descriptions           │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                        MARKET                                │
│  15M+ Tourists | 25% Growth | 180+ Countries | $13B Revenue  │
│  Why Now? Digital Transform | Egypt 2030 | Market Gap        │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                       PARTNERS                               │
│  Revenue Model         |  Partner Benefits                   │
│  • Transportation      |  • 15M+ tourists                    │
│  • Hotel Bookings      |  • Analytics                        │
│  • Subscriptions       |  • Reviews                          │
│  [Partnership Banner with CTA]                               │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                          CTA                                 │
│  Start Your Egyptian Adventure Today                         │
│  [App Store] [Google Play]                                   │
│  4.8★ Rating | 50K+ Downloads | 25K+ Happy Tourists          │
│  [Phone Mockup with App Preview]                             │
└─────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────┐
│                        FOOTER                                │
│  About | Quick Links | Support | Partners | Legal            │
│  Contact: info@goandhi.com | Cairo, Egypt                    │
│  [Facebook] [Twitter] [Instagram] [LinkedIn] [YouTube]       │
│  © 2026 Go & Hi Tourism. All rights reserved.                │
└─────────────────────────────────────────────────────────────┘

┌──────────────────┐
│    CHATBOT       │  ← Floating button (bottom-right)
│  💬 Click to     │
│     Chat         │
└──────────────────┘
```

---

## 📁 File-to-Component Mapping

### Main Application
```
/src/app/App.tsx
├── <Navigation />      → /src/app/components/Navigation.tsx
├── <Hero />            → /src/app/components/Hero.tsx
├── <Problem />         → /src/app/components/Problem.tsx
├── <Solution />        → /src/app/components/Solution.tsx
├── <Features />        → /src/app/components/Features.tsx
├── <Market />          → /src/app/components/Market.tsx
├── <Partners />        → /src/app/components/Partners.tsx
├── <CTA />             → /src/app/components/CTA.tsx
├── <Footer />          → /src/app/components/Footer.tsx
└── <Chatbot />         → /src/app/components/Chatbot.tsx
```

---

## 🎨 Component Details

### 1️⃣ Navigation Component
**File:** `/src/app/components/Navigation.tsx`

**Contains:**
- Company logo (G&H)
- Desktop menu (Features, How It Works, Partners, About)
- Mobile hamburger menu
- Sign In button
- Download button
- Responsive mobile menu overlay

**Props:** None  
**State:** `isOpen` (mobile menu toggle)

---

### 2️⃣ Hero Component
**File:** `/src/app/components/Hero.tsx`

**Contains:**
- Full-screen background image (Egypt pyramids)
- Gradient overlay
- AI-Powered badge
- Main headline: "The Smart Way to Explore Egypt"
- Subheadline description
- CTA buttons (Download App, Watch Demo)
- Statistics cards (15M+ tourists, 24/7 support, 100% secure)
- Animated scroll indicator

**Props:** None  
**Images:** Unsplash (Egypt pyramids)

---

### 3️⃣ Problem Component
**File:** `/src/app/components/Problem.tsx`

**Contains:**
- Section header: "Tourists Face Real Problems"
- 3 problem cards:
  1. Language Barriers (Languages icon)
  2. Safety Concerns (Shield icon)
  3. Transportation Issues (Car icon)

**Props:** None  
**Icons:** Lucide React (Languages, Shield, Car)

---

### 4️⃣ Solution Component
**File:** `/src/app/components/Solution.tsx`

**Contains:**
- Two-column layout
- Left: Image (tourist using smartphone)
- Right: Content
  - "Go & Hi Solves Everything" headline
  - 6 solution bullet points with checkmarks
  - Floating "AI-Powered" badge

**Props:** None  
**Icons:** CheckCircle2, Sparkles

---

### 5️⃣ Features Component
**File:** `/src/app/components/Features.tsx`

**Contains:**
- Section header: "Everything You Need to Explore Egypt"
- 6 feature cards in 3-column grid:
  1. Smart Transportation Booking (Car icon - blue)
  2. AI Virtual Tour Guide (Bot icon - amber)
  3. Trip Planning Before Arrival (Calendar icon - purple)
  4. Smart Recommendations (Sparkles icon - green)
  5. Secure Cashless Payments (CreditCard icon - indigo)
  6. 24/7 Support (Headphones icon - red)

**Props:** None  
**Icons:** Car, Bot, Calendar, Sparkles, CreditCard, Headphones  
**Colors:** Color-coded per feature

---

### 6️⃣ Market Component
**File:** `/src/app/components/Market.tsx`

**Contains:**
- Dark blue gradient background
- Section header: "A Rapidly Growing Market"
- 4 statistics cards:
  1. 15M+ Annual Tourists
  2. 25% Growth Rate
  3. 180+ Countries
  4. $13B Tourism Revenue
- "Why Now?" section with 3 points (Digital Transform, Egypt 2030, Market Gap)

**Props:** None  
**Icons:** Users, TrendingUp, Globe, Landmark

---

### 7️⃣ Partners Component
**File:** `/src/app/components/Partners.tsx`

**Contains:**
- Section header: "Built for Growth & Partnership"
- Two-column layout:
  - **Left:** Revenue Model (3 cards)
    - Transportation Commissions
    - Hotel & Activity Bookings
    - Premium Subscriptions
  - **Right:** Partner Benefits (6 bullet points)
- Partnership banner with image and CTA

**Props:** None  
**Icons:** Handshake, DollarSign, Building2, Car, Hotel, CreditCard  
**Buttons:** "Become a Partner", "Contact Our Team"

---

### 8️⃣ CTA Component
**File:** `/src/app/components/CTA.tsx`

**Contains:**
- Blue gradient background
- Two-column layout:
  - **Left:** Content
    - "Start Your Egyptian Adventure Today"
    - App store buttons (iOS & Android)
    - Statistics (4.8★ rating, 50K+ downloads, 25K+ tourists)
  - **Right:** Phone mockup with app preview
- Bottom CTA buttons (Download, Become Partner)

**Props:** None  
**Icons:** Download, ArrowRight, Smartphone, Apple  
**Images:** App interface preview

---

### 9️⃣ Footer Component
**File:** `/src/app/components/Footer.tsx`

**Contains:**
- Dark slate background
- 6-column grid (responsive):
  1. Company info + contact (Email, Location)
  2. Quick Links (5 links)
  3. Support (5 links)
  4. Partners (5 links)
  5. Legal (5 links)
  6. Empty column
- Social media icons (5 platforms)
- Copyright notice
- Bottom bar: "Made with ❤️ in Egypt"

**Props:** None  
**Icons:** Mail, MapPin, Facebook, Twitter, Instagram, LinkedIn, Youtube

---

### 🔟 Chatbot Component
**File:** `/src/app/components/Chatbot.tsx`

**Contains:**
- Floating chat button (bottom-right corner)
- Chat window with:
  - Header (Go & Hi Support, AI Assistant)
  - Message list (user & bot messages)
  - Quick reply buttons
  - Input field + send button
  - Typing indicator
- AI-powered response system (10+ question types)

**Props:** None  
**State:**
- `isOpen` - Chat window visibility
- `messages` - Message history
- `inputValue` - Input field value
- `isTyping` - Typing indicator

**Icons:** MessageCircle, X, Send, Bot, User, Smartphone

**Response Categories:**
1. Booking
2. Safety
3. Payment
4. AI guide
5. App download
6. Languages
7. Support
8. Pricing
9. Partnerships
10. Greetings

---

## 🧩 UI Components Library

Located in: `/src/app/components/ui/`

### Button Component
**File:** `button.tsx`

**Variants:**
- default (primary)
- destructive (red)
- outline (bordered)
- secondary (gray)
- ghost (transparent)
- link (underlined)

**Sizes:**
- sm (small)
- default (medium)
- lg (large)
- icon (square)

**Usage:**
```tsx
<Button variant="default" size="lg">
  Click Me
</Button>
```

### Other UI Components (50+)
- Accordion
- Alert Dialog
- Avatar
- Badge
- Card
- Checkbox
- Dialog
- Dropdown Menu
- Input
- Label
- Popover
- Progress
- Radio Group
- Select
- Separator
- Slider
- Switch
- Tabs
- Textarea
- Tooltip
- ... and more

---

## 🎨 Styling System

### Theme Variables
**File:** `/src/styles/theme.css`

```css
:root {
  /* Colors */
  --color-primary: #1E40AF;    /* Blue 600 */
  --color-secondary: #F59E0B;  /* Amber 500 */
  
  /* Grays */
  --color-background: #ffffff;
  --color-foreground: #0F172A;
  
  /* Semantic Colors */
  --color-destructive: #DC2626;
  --color-muted: #F1F5F9;
  
  /* Borders & Radius */
  --radius: 0.625rem;
}
```

### Tailwind Classes
**File:** `/src/styles/tailwind.css`

Common patterns used:
```tsx
// Responsive grid
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

// Flexbox
<div className="flex items-center justify-between">

// Text
<h1 className="text-4xl font-bold text-slate-900">

// Colors
<div className="bg-blue-600 text-white">

// Spacing
<div className="px-4 py-8 mx-auto">

// Hover effects
<button className="hover:bg-blue-700 transition-colors">
```

---

## 🔗 Component Dependencies

```
App.tsx
├─ Navigation
│  └─ Button (ui)
│
├─ Hero
│  └─ Button (ui)
│
├─ Problem
│  └─ Icons (lucide-react)
│
├─ Solution
│  └─ Icons (lucide-react)
│
├─ Features
│  └─ Icons (lucide-react)
│
├─ Market
│  └─ Icons (lucide-react)
│
├─ Partners
│  ├─ Button (ui)
│  └─ Icons (lucide-react)
│
├─ CTA
│  ├─ Button (ui)
│  └─ Icons (lucide-react)
│
├─ Footer
│  └─ Icons (lucide-react)
│
└─ Chatbot
   ├─ Button (ui)
   └─ Icons (lucide-react)
```

---

## 📱 Responsive Breakpoints Used

```tsx
// Mobile-first approach

// Default (mobile): < 640px
<div className="text-sm">

// sm: 640px+
<div className="sm:text-base">

// md: 768px+
<div className="md:grid-cols-2">

// lg: 1024px+
<div className="lg:grid-cols-3">

// xl: 1280px+
<div className="xl:max-w-7xl">

// 2xl: 1536px+
<div className="2xl:max-w-screen-2xl">
```

---

## 🎯 Key Files Reference

| File | Purpose | Lines of Code |
|------|---------|---------------|
| `/index.html` | Entry HTML + SEO | ~70 |
| `/src/main.tsx` | App entry point | ~10 |
| `/src/app/App.tsx` | Main component | ~40 |
| `/src/app/components/Navigation.tsx` | Header | ~92 |
| `/src/app/components/Hero.tsx` | Hero section | ~79 |
| `/src/app/components/Problem.tsx` | Problems section | ~58 |
| `/src/app/components/Solution.tsx` | Solutions section | ~71 |
| `/src/app/components/Features.tsx` | Features grid | ~96 |
| `/src/app/components/Market.tsx` | Market stats | ~101 |
| `/src/app/components/Partners.tsx` | Partnerships | ~127 |
| `/src/app/components/CTA.tsx` | Call to action | ~128 |
| `/src/app/components/Footer.tsx` | Footer | ~177 |
| `/src/app/components/Chatbot.tsx` | AI chatbot | ~250 |
| `/src/styles/theme.css` | Design tokens | ~182 |

**Total:** ~3,000+ lines of production-ready code

---

## 🔍 Finding Components

### By Section Name
- **Navigation** → `Navigation.tsx`
- **Hero** → `Hero.tsx`
- **Problems** → `Problem.tsx`
- **Solutions** → `Solution.tsx`
- **Features** → `Features.tsx`
- **Market** → `Market.tsx`
- **Partners** → `Partners.tsx`
- **CTA** → `CTA.tsx`
- **Footer** → `Footer.tsx`
- **Chatbot** → `Chatbot.tsx`

### By Function
- **Menus** → `Navigation.tsx`
- **Forms** → `Chatbot.tsx` (input)
- **Cards** → `Problem.tsx`, `Features.tsx`, `Market.tsx`
- **Buttons** → `ui/button.tsx`
- **Images** → All sections use Unsplash URLs
- **Icons** → Lucide React library

---

## 🎨 Design Patterns Used

### Component Pattern
```tsx
export function ComponentName() {
  const [state, setState] = useState(initialValue);
  
  return (
    <section className="py-20 bg-white">
      {/* Content */}
    </section>
  );
}
```

### Data Pattern
```tsx
const items = [
  { icon: Icon, title: 'Title', description: 'Description' }
];

return (
  <div>
    {items.map((item, index) => (
      <div key={index}>...</div>
    ))}
  </div>
);
```

### Responsive Pattern
```tsx
<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
  {/* Responsive grid: 1 col mobile, 2 tablet, 3 desktop */}
</div>
```

---

**Made with ❤️ for Go & Hi Tourism**

This map shows every component in your website! Use it as a quick reference guide. 🗺️
