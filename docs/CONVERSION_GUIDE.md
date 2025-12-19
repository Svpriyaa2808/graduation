# Conversion Guide: HTML to PDF/Word/PowerPoint

This guide explains how to convert the HTML files to PDF, Word, and PowerPoint formats.

---

## 📄 Converting Report HTML to PDF/Word

### Method 1: Print to PDF (Easiest - Works in Any Browser)

**Steps:**
1. Open `docs/PROJECT_REPORT.html` in your browser
2. Press `Ctrl+P` (Windows) or `Cmd+P` (Mac)
3. Select "Save as PDF" as the printer
4. Click "Save"

**Result:** Professional PDF with proper formatting

---

### Method 2: Convert to Word (Using Browser)

**Steps:**
1. Open `docs/PROJECT_REPORT.html` in Google Chrome
2. Press `Ctrl+P` (Windows) or `Cmd+P` (Mac)
3. Click "More settings"
4. Select "Save as PDF"
5. Save the PDF
6. Open the PDF in Microsoft Word
7. Word will offer to convert it - click "OK"
8. Save as `.docx`

---

### Method 3: Online Conversion Tools

**For PDF:**
- **HTML to PDF:** https://html2pdf.com
  1. Upload `PROJECT_REPORT.html`
  2. Click "Convert"
  3. Download PDF

**For Word:**
- **HTML to DOCX:** https://convertio.co/html-docx/
  1. Upload `PROJECT_REPORT.html`
  2. Select "DOCX" as output
  3. Click "Convert"
  4. Download DOCX file

---

### Method 4: Using Pandoc (Command Line - Most Professional)

**Install Pandoc:**
```bash
# macOS
brew install pandoc

# Windows (using Chocolatey)
choco install pandoc

# Ubuntu/Debian
sudo apt-get install pandoc
```

**Convert to PDF:**
```bash
cd docs
pandoc PROJECT_REPORT.html -o PROJECT_REPORT.pdf
```

**Convert to Word:**
```bash
cd docs
pandoc PROJECT_REPORT.html -o PROJECT_REPORT.docx
```

---

## 📊 Converting Presentation HTML to PowerPoint

### Method 1: Use the HTML Presentation Directly

The `PRESENTATION.html` file is **already a fully functional presentation**!

**To present:**
1. Open `docs/presentation/PRESENTATION.html` in any web browser
2. Press `F11` for fullscreen
3. Use arrow keys or spacebar to navigate slides
4. Press `Esc` to exit fullscreen

**Features:**
- ✓ Professional slides with animations
- ✓ Navigation controls
- ✓ Slide numbers
- ✓ Print to PDF for handouts

---

### Method 2: Convert HTML Presentation to PDF

**Steps:**
1. Open `PRESENTATION.html` in browser
2. Press `Ctrl+P` (Windows) or `Cmd+P` (Mac)
3. In print settings:
   - Set "Layout" to "Landscape"
   - Enable "Background graphics"
4. Save as PDF

**Result:** PDF with all slides that can be imported to PowerPoint

---

### Method 3: Convert to PowerPoint Using Online Tools

**Recommended Tool: CloudConvert**
- URL: https://cloudconvert.com/html-to-pptx

**Steps:**
1. Visit CloudConvert
2. Upload `PRESENTATION.html`
3. Select "PPTX" as output format
4. Click "Convert"
5. Download `.pptx` file

---

### Method 4: Manual PowerPoint Creation (Most Control)

Since the HTML presentation is already styled and structured, you can:

1. Open PowerPoint
2. Create a new presentation
3. Open `PRESENTATION.html` in browser
4. For each slide:
   - Take a screenshot OR
   - Copy the content and paste into PowerPoint
   - Apply formatting using the color scheme:
     - Primary: #3B82F6 (Blue)
     - Secondary: #8B5CF6 (Purple)

---

## 🖼️ Adding Screenshots to Your Documents

### For the PDF/Word Report:

**Option 1: Edit HTML before conversion**
1. Take your screenshots (see `SCREENSHOT_GUIDE.md`)
2. Save screenshots to `docs/screenshots/`
3. Edit `PROJECT_REPORT.html`
4. Find `<!-- Insert screenshot here -->` comments
5. Add image tags:
```html
<img src="screenshots/kanban-board.png" alt="Kanban Board" style="width:100%; max-width:800px; margin:20px 0; border:1px solid #ddd; border-radius:8px;">
```
6. Save and convert to PDF/Word

**Option 2: Add screenshots after conversion**
1. Convert HTML to Word
2. Open in Microsoft Word
3. Insert screenshots at appropriate sections
4. Add captions
5. Save

---

### For the Presentation:

1. Open `PRESENTATION.html` in a text editor
2. Find `.screenshot-placeholder` sections
3. Replace with actual images:
```html
<img src="../screenshots/kanban-board.png" alt="Kanban Board" style="width:100%; border-radius:10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
```
4. Save and refresh in browser

---

## 🎨 Customizing Before Conversion

### Edit the HTML Report:

**Change colors:**
```css
/* In the <style> section */
--primary-color: #3B82F6;  /* Change this */
```

**Add your live URL:**
Find and replace `[Add your Vercel URL]` with your actual URL

**Add more sections:**
Copy an existing `<div class="section">` and modify

---

### Edit the HTML Presentation:

**Add your live URL:**
Find `[Add your Vercel URL here]` and replace

**Insert screenshots:**
Replace `.screenshot-placeholder` divs with actual images

**Customize theme:**
Change colors in the `:root` CSS variables

---

## 🚀 Quick Conversion Workflow

### For a Quick PDF Report:

```bash
# Option 1: Browser print (fastest)
# Open PROJECT_REPORT.html → Ctrl+P → Save as PDF

# Option 2: Command line (if Pandoc installed)
cd docs
pandoc PROJECT_REPORT.html -o PROJECT_REPORT.pdf
```

### For PowerPoint:

```bash
# Option 1: Use HTML presentation directly
# Open PRESENTATION.html in browser → F11 for fullscreen

# Option 2: Print to PDF slides
# Open PRESENTATION.html → Ctrl+P → Landscape → Save as PDF
# Then import PDF slides into PowerPoint
```

---

## 📋 Checklist Before Converting

### Report:
- [ ] Add your live demo URL
- [ ] Insert screenshots (optional, can add later)
- [ ] Review all content for accuracy
- [ ] Check that all sections are complete

### Presentation:
- [ ] Add your live demo URL
- [ ] Add QR code image
- [ ] Insert screenshot images (or leave placeholders)
- [ ] Test presentation in browser
- [ ] Check all 18 slides display correctly

---

## 🎯 Recommended Workflow

**Day 1: Prepare Files**
1. Deploy your app to get live URL
2. Take all 16 screenshots
3. Update HTML files with URLs

**Day 2: Create Documents**
1. Edit `PROJECT_REPORT.html` with screenshots
2. Convert to PDF using browser print
3. Edit `PRESENTATION.html` with screenshots
4. Test presentation in browser

**Day 3: Create PowerPoint (Optional)**
1. Use HTML presentation OR
2. Convert to PowerPoint using CloudConvert OR
3. Create slides manually from HTML content

**Day 4: Final Review**
1. Review PDF report
2. Test presentation
3. Print or export as needed
4. Prepare for submission

---

## 💡 Pro Tips

### For Best PDF Quality:
1. Use Chrome or Edge browser
2. Enable "Background graphics" in print settings
3. Set margins to "Default" or "None"
4. Use "Save as PDF" not "Print to PDF"

### For Best PowerPoint Conversion:
1. Screenshots make better slides than converted HTML
2. Use the HTML presentation for actual presenting
3. Create PowerPoint manually for best control
4. Copy text content from HTML, don't convert everything

### For Professional Look:
1. Add page numbers to PDF report
2. Include table of contents
3. Use consistent image sizes
4. Add captions to all screenshots

---

## 🛠️ Troubleshooting

**Problem:** Images don't show in PDF
- **Solution:** Use absolute paths or base64 encoded images

**Problem:** Presentation looks wrong in PowerPoint
- **Solution:** Use the HTML version for presenting, PowerPoint for handouts

**Problem:** Fonts look different
- **Solution:** Embed fonts in PDF using print settings

**Problem:** Colors are wrong in PDF
- **Solution:** Enable "Background graphics" in print dialog

---

## 📤 Files You'll Have

After conversion, you should have:

```
docs/
├── PROJECT_REPORT.html        # Source HTML
├── PROJECT_REPORT.pdf          # Converted PDF ✓
├── PROJECT_REPORT.docx         # Converted Word ✓
└── presentation/
    ├── PRESENTATION.html       # Source HTML (use for presenting!)
    ├── PRESENTATION.pdf        # PDF handout ✓
    └── PRESENTATION.pptx       # PowerPoint (optional) ✓
```

---

## ✅ Final Steps

1. **Convert both documents**
2. **Review converted files**
3. **Test presentation in browser**
4. **Print PDF if needed**
5. **Ready to submit!** 🎉

---

**Questions?** Check the main documentation in `docs/README.md`

**Need help?** All the content is already in the HTML files - you just need to convert them to your preferred format!

Good luck with your submission! 🚀
