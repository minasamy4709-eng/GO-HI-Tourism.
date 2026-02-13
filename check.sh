#!/bin/bash

# 🎯 Go & Hi Tourism - Pre-Deployment Check Script
# Run this before deploying to verify everything is ready

echo "🚀 Go & Hi Tourism - Pre-Deployment Verification"
echo "=================================================="
echo ""

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check Node.js
echo "📦 Checking Node.js..."
if command -v node &> /dev/null; then
    NODE_VERSION=$(node -v)
    echo -e "${GREEN}✅ Node.js installed: $NODE_VERSION${NC}"
else
    echo -e "${RED}❌ Node.js not found. Install from nodejs.org${NC}"
    exit 1
fi

# Check npm
echo ""
echo "📦 Checking npm..."
if command -v npm &> /dev/null; then
    NPM_VERSION=$(npm -v)
    echo -e "${GREEN}✅ npm installed: $NPM_VERSION${NC}"
else
    echo -e "${RED}❌ npm not found${NC}"
    exit 1
fi

# Check Git
echo ""
echo "📦 Checking Git..."
if command -v git &> /dev/null; then
    GIT_VERSION=$(git --version)
    echo -e "${GREEN}✅ Git installed: $GIT_VERSION${NC}"
else
    echo -e "${YELLOW}⚠️  Git not found (needed for deployment)${NC}"
fi

# Check if node_modules exists
echo ""
echo "📦 Checking dependencies..."
if [ -d "node_modules" ]; then
    echo -e "${GREEN}✅ Dependencies installed${NC}"
else
    echo -e "${YELLOW}⚠️  Dependencies not installed. Run: npm install${NC}"
fi

# Check if package.json exists
echo ""
echo "📦 Checking project files..."
if [ -f "package.json" ]; then
    echo -e "${GREEN}✅ package.json found${NC}"
else
    echo -e "${RED}❌ package.json not found${NC}"
    exit 1
fi

# Check if src directory exists
if [ -d "src" ]; then
    echo -e "${GREEN}✅ src/ directory found${NC}"
else
    echo -e "${RED}❌ src/ directory not found${NC}"
    exit 1
fi

# Check if main component files exist
echo ""
echo "📄 Checking components..."
COMPONENTS=(
    "src/app/App.tsx"
    "src/app/components/Navigation.tsx"
    "src/app/components/Hero.tsx"
    "src/app/components/Problem.tsx"
    "src/app/components/Solution.tsx"
    "src/app/components/Features.tsx"
    "src/app/components/Market.tsx"
    "src/app/components/Partners.tsx"
    "src/app/components/CTA.tsx"
    "src/app/components/Footer.tsx"
)

MISSING_COUNT=0
for component in "${COMPONENTS[@]}"; do
    if [ -f "$component" ]; then
        echo -e "${GREEN}✅ $component${NC}"
    else
        echo -e "${RED}❌ $component (missing)${NC}"
        ((MISSING_COUNT++))
    fi
done

# Check documentation
echo ""
echo "📚 Checking documentation..."
DOCS=(
    "START_HERE.md"
    "QUICK_START.md"
    "DEPLOYMENT_GUIDE.md"
    "COMMANDS.md"
    "README.md"
)

for doc in "${DOCS[@]}"; do
    if [ -f "$doc" ]; then
        echo -e "${GREEN}✅ $doc${NC}"
    else
        echo -e "${YELLOW}⚠️  $doc (optional)${NC}"
    fi
done

# Check config files
echo ""
echo "⚙️  Checking configuration..."
CONFIGS=(
    "vite.config.ts"
    "vercel.json"
    ".gitignore"
)

for config in "${CONFIGS[@]}"; do
    if [ -f "$config" ]; then
        echo -e "${GREEN}✅ $config${NC}"
    else
        echo -e "${YELLOW}⚠️  $config (optional but recommended)${NC}"
    fi
done

# Try to build
echo ""
echo "🔨 Testing build..."
if npm run build &> /dev/null; then
    echo -e "${GREEN}✅ Build successful${NC}"
else
    echo -e "${RED}❌ Build failed. Run 'npm run build' to see errors${NC}"
fi

# Final summary
echo ""
echo "=================================================="
echo "📊 SUMMARY"
echo "=================================================="

if [ $MISSING_COUNT -eq 0 ]; then
    echo -e "${GREEN}✅ All components present${NC}"
else
    echo -e "${RED}❌ $MISSING_COUNT component(s) missing${NC}"
fi

echo ""
echo "🎯 Next Steps:"
echo "1. Run: npm install (if not done)"
echo "2. Run: npm start (test locally)"
echo "3. Follow: DEPLOYMENT_GUIDE.md"
echo ""
echo "🚀 Ready to deploy!"
