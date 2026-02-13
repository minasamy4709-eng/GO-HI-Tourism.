# ⚡ Quick Start Guide - Go & Hi Tourism

> Get your Go & Hi Tourism website running in 5 minutes!

---

## 🚀 Installation (1 minute)

```bash
# Install dependencies
npm install

# Start development server
npm run dev
```

✅ **Done!** Open http://localhost:5173

---

## 🌐 Deploy to Vercel (3 minutes)

### Option 1: GitHub + Vercel (Easiest)

```bash
# 1. Push to GitHub
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_USERNAME/goandhi-tourism.git
git push -u origin main

# 2. Go to vercel.com
# 3. Click "New Project"
# 4. Import your GitHub repo
# 5. Click "Deploy"
```

✅ **Done!** Your site is live!

### Option 2: Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login and deploy
vercel login
vercel --prod
```

✅ **Done!** Copy the production URL!

---

## 📝 Customize Content (5 minutes)

### Update Company Info

Edit `/src/app/components/Footer.tsx`:
```tsx
<a href="mailto:YOUR_EMAIL@domain.com">
  YOUR_EMAIL@domain.com
</a>
```

### Change Hero Headline

Edit `/src/app/components/Hero.tsx`:
```tsx
<h1>
  Your Custom Headline
  <span>Your Subheadline</span>
</h1>
```

### Update Colors

Edit `/src/styles/theme.css`:
```css
:root {
  --color-primary: #YOUR_COLOR;
}
```

---

## 🎨 Key Files

| File | Purpose |
|------|---------|
| `/src/app/App.tsx` | Main app layout |
| `/src/app/components/` | All page sections |
| `/src/styles/theme.css` | Colors & design tokens |
| `/index.html` | SEO meta tags |
| `/vercel.json` | Deployment config |

---

## 📱 Test Responsive Design

```bash
# Run dev server
npm run dev

# Open in browser
# Press F12 → Toggle Device Toolbar
# Test: Mobile (375px), Tablet (768px), Desktop (1920px)
```

---

## 🧪 Build for Production

```bash
# Create production build
npm run build

# Preview production build
npm run preview

# Check build size
ls -lh dist/
```

---

## ✅ Pre-Deployment Checklist

- [ ] Updated contact email in Footer
- [ ] Changed placeholder content in Hero
- [ ] Tested on mobile, tablet, desktop
- [ ] Verified all links work
- [ ] Chatbot responds correctly
- [ ] Images load properly
- [ ] Build completes without errors

---

## 🆘 Common Issues

### Port 5173 already in use
```bash
# Kill process on port 5173
npx kill-port 5173

# Or change port in vite.config.ts
```

### Build fails
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
npm run build
```

### Images not loading
- Check internet connection (Unsplash CDN)
- Verify image URLs are valid

---

## 📚 Full Documentation

- **[README.md](./README.md)** - Complete documentation
- **[VERCEL_DEPLOYMENT_GUIDE.md](./VERCEL_DEPLOYMENT_GUIDE.md)** - Detailed deployment steps
- **[PROJECT_OVERVIEW.md](./PROJECT_OVERVIEW.md)** - Architecture & design system

---

## 🎯 Next Steps

1. ✅ Get it running locally
2. ✅ Deploy to Vercel
3. ✅ Add custom domain
4. ✅ Set up analytics
5. ✅ Share with the world!

---

**Need help?** Check the [full documentation](./README.md) or email info@goandhi.com

**Made with ❤️ for Go & Hi Tourism**
