# 🚀 Deployment Commands Cheat Sheet

Copy and paste these commands to deploy your website!

---

## 📦 First Time Setup (Do Once)

### 1. Install Dependencies
```bash
npm install
```

### 2. Test Locally
```bash
npm start
```
Then open: http://localhost:5173

---

## 🔄 Push to GitHub (First Time)

### Step 1: Create Repository on GitHub.com
1. Go to https://github.com/new
2. Repository name: `go-hi-tourism`
3. Public or Private: Choose Public
4. Do NOT add README (we have one)
5. Click "Create repository"

### Step 2: Run These Commands

```bash
# Initialize Git in your project
git init

# Add all files
git add .

# Make first commit
git commit -m "Initial commit: Go & Hi Tourism landing page"

# Connect to GitHub (REPLACE YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/go-hi-tourism.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**✅ Done! Check github.com/YOUR_USERNAME/go-hi-tourism**

---

## 🌐 Deploy to Vercel

### Option 1: Via Website (Easiest)

1. Go to: https://vercel.com/signup
2. Click "Continue with GitHub"
3. Authorize Vercel
4. Click "Add New..." → "Project"
5. Find "go-hi-tourism"
6. Click "Import"
7. Click "Deploy"
8. Wait 2 minutes
9. **Get your live URL!** 🎉

### Option 2: Via Vercel CLI

```bash
# Install Vercel CLI
npm install -g vercel

# Login to Vercel
vercel login

# Deploy
vercel

# Deploy to production
vercel --prod
```

---

## 🔄 Update Your Website (After First Deploy)

Every time you make changes:

```bash
# 1. Save your changes in code editor

# 2. Stage changes
git add .

# 3. Commit with description
git commit -m "Updated hero section text"

# 4. Push to GitHub
git push

# ✅ Vercel automatically deploys in 1-2 minutes!
```

---

## 🧪 Test Before Deploying

```bash
# Build production version
npm run build

# Preview production build
npm run preview

# Open http://localhost:4173 to test
```

---

## 🐛 Troubleshooting Commands

### Clear Cache and Reinstall
```bash
rm -rf node_modules
rm package-lock.json
npm install
```

### Check for Errors
```bash
npm run build
```
Look for any red error messages.

### Reset Git (If Something Goes Wrong)
```bash
# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes) - CAREFUL!
git reset --hard HEAD~1
```

---

## 📊 Check Deployment Status

### View Your Deployments
```bash
# See all deployments
vercel list

# See deployment logs
vercel logs
```

### Check Build Status
- Go to: https://vercel.com/dashboard
- Click your project
- View "Deployments" tab

---

## 🌐 Your URLs

After deployment:

**Production URL:**
```
https://go-hi-tourism.vercel.app
(or https://your-project-name.vercel.app)
```

**Vercel Dashboard:**
```
https://vercel.com/YOUR_USERNAME/go-hi-tourism
```

**GitHub Repository:**
```
https://github.com/YOUR_USERNAME/go-hi-tourism
```

---

## ⚡ Quick Deploy (All Steps)

Copy this entire block for first-time deployment:

```bash
# Install dependencies
npm install

# Test locally
npm start
# Press Ctrl+C to stop server

# Initialize Git
git init
git add .
git commit -m "Initial commit: Go & Hi Tourism landing page"

# REPLACE YOUR_USERNAME before running this line!
git remote add origin https://github.com/YOUR_USERNAME/go-hi-tourism.git

# Push to GitHub
git branch -M main
git push -u origin main

# Now go to vercel.com and click import!
```

---

## 📱 Share Your Live Website

After deployment, share:

```
Check out our new website!
🌐 https://go-hi-tourism.vercel.app

Built with React + Tailwind CSS
Deployed on Vercel
```

---

## 🎯 Common Commands Reference

| Task | Command |
|------|---------|
| Install | `npm install` |
| Dev Server | `npm start` |
| Build | `npm run build` |
| Preview Build | `npm run preview` |
| Commit | `git commit -m "message"` |
| Push | `git push` |
| Status | `git status` |
| View Changes | `git diff` |

---

## 💡 Pro Tips

### Commit Messages
```bash
git commit -m "Added new feature"
git commit -m "Fixed navigation bug"
git commit -m "Updated contact email"
git commit -m "Improved mobile responsiveness"
```

### Check What Changed
```bash
git status              # See what files changed
git diff                # See exact changes
git log --oneline       # See commit history
```

### Branch for Experiments
```bash
git checkout -b new-feature
# Make changes
git add .
git commit -m "Experimental feature"
git checkout main       # Go back to main
```

---

## 🔗 Helpful Links

- **GitHub**: https://github.com
- **Vercel**: https://vercel.com
- **Git Help**: https://git-scm.com/docs
- **Node.js**: https://nodejs.org

---

## ✅ Deployment Checklist

Before you deploy:

- [ ] `npm install` works
- [ ] `npm start` runs without errors
- [ ] All content reviewed
- [ ] Contact email is correct
- [ ] Tested on mobile (resize browser)
- [ ] Git initialized
- [ ] GitHub repository created
- [ ] Code pushed to GitHub
- [ ] Vercel account created
- [ ] Project imported to Vercel
- [ ] Deployment succeeded
- [ ] Live URL tested
- [ ] Shared with team! 🎉

---

**Need More Help?**
📖 See: [DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md)

**Ready to Deploy?**
🚀 Let's go!
