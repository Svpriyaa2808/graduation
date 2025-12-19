#!/bin/bash

# Script to help capture screenshots for the project report
# This script will open the app and guide you through taking screenshots

echo "📸 Job Application Tracker - Screenshot Capture Helper"
echo "======================================================"
echo ""
echo "This script will help you capture screenshots for your report."
echo ""

# Check if the app is running
echo "Step 1: Starting the development server..."
echo ""
echo "Opening the app in your browser..."
echo "Please wait for the server to start..."
echo ""

# Function to create a README for screenshots
cat > docs/screenshots/README.md << 'EOF'
# Screenshots Directory

This directory contains screenshots for the project report and presentation.

## Required Screenshots

### For Project Report:
1. **kanban-board-desktop.png** - Full Kanban board view with cards in all columns
2. **kanban-board-cards.png** - Close-up of application cards showing details
3. **analytics-dashboard.png** - Analytics page with all charts and stats
4. **analytics-charts.png** - Close-up of charts (pie, bar, line)
5. **application-list.png** - Application management table view
6. **application-filters.png** - Table with filters active
7. **dark-mode.png** - Any page in dark mode
8. **mobile-view.png** - Mobile responsive view

## How to Capture Screenshots

### Method 1: Using Browser DevTools (Recommended)
1. Open the app: `npm run dev`
2. Visit http://localhost:3000
3. Add sample data (5-10 applications)
4. Open Chrome DevTools (F12)
5. Press Ctrl+Shift+P (Windows) or Cmd+Shift+P (Mac)
6. Type "screenshot" and select "Capture full size screenshot"
7. Save to this directory

### Method 2: Using Screenshot Tools
- **Windows:** Win + Shift + S
- **Mac:** Cmd + Shift + 4
- **Linux:** Use Screenshot app or `gnome-screenshot`

### Method 3: Using Browser Extensions
- Install "GoFullPage" or "Awesome Screenshot"
- Click extension icon
- Save screenshot to this directory

## Image Guidelines

- Format: PNG
- Desktop screenshots: 1920x1080 or higher
- Mobile screenshots: 375x667 (iPhone size)
- File size: Under 2MB per image
- Clear, high-quality captures
- Show real data (not empty states)

## After Capturing Screenshots

The HTML report will automatically display any images placed in this directory with the correct names.

Refresh the HTML report in your browser to see the screenshots appear!
EOF

echo "✓ Created screenshot guide in docs/screenshots/README.md"
echo ""
echo "📋 Next Steps:"
echo ""
echo "1. Start the development server:"
echo "   npm run dev"
echo ""
echo "2. Add sample job applications (5-10 applications)"
echo ""
echo "3. Take the following screenshots:"
echo "   - Kanban board (full view)"
echo "   - Analytics dashboard (all charts)"
echo "   - Application list (table view)"
echo "   - Mobile view (optional)"
echo "   - Dark mode (optional)"
echo ""
echo "4. Save screenshots to: docs/screenshots/"
echo "   Use these names:"
echo "   - kanban-board-desktop.png"
echo "   - analytics-dashboard.png"
echo "   - application-list.png"
echo "   - dark-mode.png"
echo "   - mobile-view.png"
echo ""
echo "5. Open PROJECT_REPORT.html in browser to see screenshots!"
echo ""
echo "📚 See docs/screenshots/README.md for detailed instructions"
echo ""
echo "Would you like to start the dev server now? (y/n)"
echo ""
EOF

chmod +x docs/screenshots/capture-screenshots.sh

echo "✓ Screenshot capture helper created!"
echo ""
echo "Run this script: ./docs/screenshots/capture-screenshots.sh"
