# 🚀 Go & Hi Tourism - Complete Deployment Guide

## 📋 Table of Contents
1. [Prerequisites](#prerequisites)
2. [Local Development Setup](#local-development-setup)
3. [Deploy to Vercel (Recommended)](#deploy-to-vercel)
4. [Environment Configuration](#environment-configuration)
5. [SEO & Performance Optimization](#seo--performance-optimization)
6. [Troubleshooting](#troubleshooting)

---

## Prerequisites

Before deploying, ensure you have:
- Node.js 18+ installed
- A GitHub account
- A Vercel account (free tier available)
- Git installed on your computer

---

## 🖥️ Local Development Setup

### Step 1: Install Dependencies

```bash
# Install all required packages
npm install

# Or using pnpm (recommended)
pnpm install
```

### Step 2: Run Development Server

```bash
# Start local development server
npm run dev

# The site will be available at http://localhost:5173
```

### Step 3: Build for Production (Optional - Test Locally)

```bash
# Create production build
npm run build

# Preview production build locally
npm run preview
```

---

## 🌐 Deploy to Vercel

### Method 1: Deploy via Vercel Dashboard (Easiest)

#### Step 1: Push Code to GitHub

```bash
# Initialize git repository (if not already done)
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit - Go & Hi Tourism website"

# Create a new repository on GitHub, then:
git remote add origin https://github.com/YOUR_USERNAME/goandhi-tourism.git
git branch -M main
git push -u origin main
```

#### Step 2: Import to Vercel

1. Go to [vercel.com](https://vercel.com) and sign in
2. Click **"Add New Project"**
3. Click **"Import Git Repository"**
4. Select your GitHub repository: `goandhi-tourism`
5. Vercel will auto-detect the configuration:
   - **Framework Preset:** Vite
   - **Build Command:** `npm run build`
   - **Output Directory:** `dist`
   - **Install Command:** `npm install`

6. Click **"Deploy"**

#### Step 3: Wait for Deployment

- Vercel will build and deploy your site (usually takes 1-2 minutes)
- You'll get a live URL like: `https://goandhi-tourism.vercel.app`

#### Step 4: Add Custom Domain (Optional)

1. In Vercel Dashboard, go to your project
2. Click **"Settings"** → **"Domains"**
3. Add your custom domain (e.g., `goandhi.com`)
4. Follow DNS configuration instructions
5. Vercel will automatically provision SSL certificate

---

### Method 2: Deploy via Vercel CLI

#### Step 1: Install Vercel CLI

```bash
npm install -g vercel
```

#### Step 2: Login to Vercel

```bash
vercel login
```

#### Step 3: Deploy

```bash
# Deploy to production
vercel --prod

# Follow the prompts:
# - Set up and deploy: Yes
# - Which scope: Your account
# - Link to existing project: No
# - Project name: goandhi-tourism
# - Directory: ./
# - Override settings: No
```

---

## ⚙️ Environment Configuration

### Vercel Configuration (vercel.json)

The project includes a pre-configured `vercel.json` with:

```json
{
  "buildCommand": "npm run build",
  "outputDirectory": "dist",
  "framework": "vite",
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ],
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "X-Content-Type-Options",
          "value": "nosniff"
        },
        {
          "key": "X-Frame-Options",
          "value": "DENY"
        },
        {
          "key": "X-XSS-Protection",
          "value": "1; mode=block"
        }
      ]
    },
    {
      "source": "/assets/(.*)",
      "headers": [
        {
          "key": "Cache-Control",
          "value": "public, max-age=31536000, immutable"
        }
      ]
    }
  ]
}
```

### Environment Variables (Optional)

If you need to add API keys or environment variables:

1. In Vercel Dashboard → Your Project → **Settings** → **Environment Variables**
2. Add variables:
   - `VITE_API_KEY` - Your API key
   - `VITE_ANALYTICS_ID` - Google Analytics ID
   - etc.

3. In your code, access them via:
   ```typescript
   const apiKey = import.meta.env.VITE_API_KEY;
   ```

---

## 📊 SEO & Performance Optimization

### SEO Features Already Implemented ✅

- ✅ **Meta Tags:** Title, description, keywords
- ✅ **Open Graph:** Facebook/LinkedIn sharing
- ✅ **Twitter Cards:** Twitter sharing
- ✅ **Structured Data:** JSON-LD schema for search engines
- ✅ **Semantic HTML:** Proper heading hierarchy
- ✅ **Mobile-Responsive:** Mobile-first design
- ✅ **Fast Loading:** Optimized images and lazy loading

### Add Google Analytics (Optional)

1. Get your Google Analytics ID (GA4)
2. Add to `index.html` before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### Performance Optimizations ✅

- ✅ **Code Splitting:** Vite automatically splits code
- ✅ **Asset Optimization:** Images compressed via Unsplash
- ✅ **Caching Headers:** 1-year cache for static assets
- ✅ **Lazy Loading:** Components load on demand
- ✅ **Minification:** Production build is minified

### Lighthouse Score Target

Your site should achieve:
- 🟢 **Performance:** 90+
- 🟢 **Accessibility:** 95+
- 🟢 **Best Practices:** 95+
- 🟢 **SEO:** 100

---

## 🔧 Troubleshooting

### Build Fails on Vercel

**Issue:** Build command fails

**Solution:**
```bash
# Ensure package.json has correct scripts
{
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  }
}
```

### 404 Errors on Refresh

**Issue:** Page not found when refreshing non-root routes

**Solution:** Already configured in `vercel.json` with rewrites. No action needed.

### Images Not Loading

**Issue:** Unsplash images blocked or slow

**Solution:** Images are already optimized via Unsplash CDN. Consider replacing with self-hosted images for production.

### Chatbot Not Working

**Issue:** Chatbot component not appearing

**Solution:** Ensure `<Chatbot />` is imported in `App.tsx`:
```tsx
import { Chatbot } from './components/Chatbot';
```

---

## 📱 Mobile Testing

Test your site on multiple devices:

1. **Chrome DevTools:** Right-click → Inspect → Toggle Device Toolbar
2. **Responsive Design Mode:** Test various screen sizes
3. **Real Devices:** Test on actual phones/tablets
4. **BrowserStack:** [browserstack.com](https://browserstack.com) for cross-browser testing

---

## 🎯 Post-Deployment Checklist

- [ ] Site loads correctly on Vercel URL
- [ ] All sections display properly (Hero, Features, etc.)
- [ ] Navigation menu works (desktop & mobile)
- [ ] Chatbot appears and responds correctly
- [ ] Images load properly
- [ ] Links work (anchor links scroll smoothly)
- [ ] Forms/buttons are clickable
- [ ] Mobile responsive on all breakpoints
- [ ] Custom domain configured (if applicable)
- [ ] SSL certificate active (automatic via Vercel)
- [ ] Google Analytics tracking (if added)
- [ ] Run Lighthouse audit (target 90+ scores)

---

## 🚀 Continuous Deployment

Vercel automatically deploys when you push to GitHub:

```bash
# Make changes to code
git add .
git commit -m "Update feature X"
git push

# Vercel will automatically:
# 1. Detect the push
# 2. Build the project
# 3. Deploy to production
# 4. Update your live site
```

---

## 📞 Support & Resources

- **Vercel Documentation:** [vercel.com/docs](https://vercel.com/docs)
- **Vite Documentation:** [vitejs.dev](https://vitejs.dev)
- **React Documentation:** [react.dev](https://react.dev)
- **Tailwind CSS:** [tailwindcss.com](https://tailwindcss.com)

---

## 🎉 You're Live!

Your Go & Hi Tourism website is now live and accessible worldwide! 🌍

**Next Steps:**
1. Share your website URL
2. Monitor analytics
3. Gather user feedback
4. Iterate and improve

---

**Made with ❤️ for Go & Hi Tourism**
*Transforming Egyptian Tourism with AI Technology*
