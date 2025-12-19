# Deployment Guide - Job Application Tracker

This guide will help you deploy your Job Application Tracker to get a live demo URL for your presentation and report.

---

## Recommended: Deploy to Vercel (Fastest & Easiest)

Vercel is the recommended platform as it's created by the Next.js team and provides the best performance.

### Prerequisites
- GitHub account
- Code pushed to GitHub repository
- Vercel account (free tier available)

### Step-by-Step Deployment

#### 1. Push Your Code to GitHub

Your code is already on GitHub at: `https://github.com/Svpriyaa2808/graduation`

Verify the latest code is pushed:
```bash
git status
git push origin claude/job-tracker-kanban-dBF4V
```

#### 2. Create Vercel Account

1. Visit https://vercel.com
2. Click "Sign Up"
3. Choose "Continue with GitHub"
4. Authorize Vercel to access your repositories

#### 3. Import Your Project

1. Click "Add New..." → "Project"
2. Find your repository: `graduation`
3. Click "Import"

#### 4. Configure Project

**Project Settings:**
- **Framework Preset:** Next.js (auto-detected)
- **Root Directory:** `./` (leave as default)
- **Build Command:** `npm run build` (auto-detected)
- **Output Directory:** `.next` (auto-detected)
- **Install Command:** `npm install` (auto-detected)

**Environment Variables:**
- None required (localStorage is client-side)

#### 5. Deploy

1. Click "Deploy"
2. Wait 2-3 minutes for build to complete
3. Once done, you'll see "Congratulations" screen
4. Your live URL will be: `https://graduation-[random].vercel.app`

#### 6. Custom Domain (Optional)

**Free Vercel subdomain:**
1. Go to Project Settings → Domains
2. Add: `job-tracker-[yourname].vercel.app`
3. Wait for DNS propagation (1-2 minutes)

**Custom domain (if you own one):**
1. Go to Project Settings → Domains
2. Add your custom domain
3. Update DNS records as instructed
4. Wait for verification

#### 7. Update Links

Once deployed, update these files with your live URL:

**In PROJECT_REPORT.md:**
```markdown
**Live Demo:** https://your-app.vercel.app
```

**In PRESENTATION_SCRIPT.md:**
```markdown
**Live Demo:**
https://your-app.vercel.app
```

**In README.md:**
```markdown
🔗 **Live Demo:** [https://your-app.vercel.app](https://your-app.vercel.app)
```

---

## Alternative: Deploy to Netlify

Netlify is another excellent option with similar features.

### Step-by-Step

#### 1. Create Netlify Account

1. Visit https://netlify.com
2. Sign up with GitHub
3. Authorize Netlify

#### 2. New Site from Git

1. Click "Add new site" → "Import an existing project"
2. Choose "GitHub"
3. Select your repository: `graduation`
4. Select branch: `claude/job-tracker-kanban-dBF4V`

#### 3. Build Settings

- **Base directory:** (leave empty)
- **Build command:** `npm run build`
- **Publish directory:** `.next`
- **Functions directory:** (leave empty)

#### 4. Deploy

1. Click "Deploy site"
2. Wait for build (2-3 minutes)
3. Get your URL: `https://random-name.netlify.app`

#### 5. Custom Netlify Domain

1. Site settings → Domain management
2. Click "Options" → "Edit site name"
3. Choose: `job-tracker-yourname`
4. New URL: `https://job-tracker-yourname.netlify.app`

---

## Alternative: Deploy to GitHub Pages

GitHub Pages is free but requires more configuration for Next.js.

### Prerequisites

1. Install `gh-pages` package:
```bash
npm install --save-dev gh-pages
```

2. Update `package.json`:
```json
{
  "scripts": {
    "predeploy": "npm run build",
    "deploy": "gh-pages -d out"
  }
}
```

3. Update `next.config.ts`:
```typescript
const nextConfig = {
  output: 'export',
  basePath: '/graduation',
  images: {
    unoptimized: true,
  },
};

export default nextConfig;
```

### Deploy

```bash
npm run deploy
```

**Live URL:** `https://svpriyaa2808.github.io/graduation`

**Note:** GitHub Pages has limitations with Next.js dynamic features.

---

## Alternative: Deploy to Railway

Railway offers simple deployment with great performance.

### Step-by-Step

1. Visit https://railway.app
2. Sign up with GitHub
3. Click "New Project"
4. Select "Deploy from GitHub repo"
5. Choose your repository
6. Railway auto-detects Next.js
7. Click "Deploy"
8. Get URL from deployment logs

---

## Deployment Checklist

Before presenting, verify:

### Functionality Tests
- [ ] Application loads correctly
- [ ] Navigation works between all 3 pages
- [ ] Can add new applications
- [ ] Can edit applications
- [ ] Can delete applications
- [ ] Drag-and-drop works on Kanban board
- [ ] Analytics charts display correctly
- [ ] Filters work on Applications page
- [ ] Sort works on table columns
- [ ] CSV export downloads
- [ ] HTML export downloads
- [ ] Dark mode toggle works
- [ ] Data persists after page reload
- [ ] Search functionality works

### Performance Tests
- [ ] Page load time < 3 seconds
- [ ] Smooth animations (60 fps)
- [ ] No console errors
- [ ] Mobile responsive
- [ ] Works on different browsers

### Browser Testing
Test on:
- [ ] Chrome (desktop)
- [ ] Firefox (desktop)
- [ ] Safari (desktop)
- [ ] Edge (desktop)
- [ ] Chrome (mobile)
- [ ] Safari (mobile)

---

## Troubleshooting Common Issues

### Issue: Build Fails

**Error:** "Module not found"
**Solution:**
```bash
rm -rf node_modules package-lock.json
npm install
npm run build
```

**Error:** "TypeScript errors"
**Solution:** Fix TypeScript errors locally first:
```bash
npm run build
# Fix any errors shown
git add .
git commit -m "Fix TypeScript errors"
git push
```

### Issue: Page Not Found (404)

**Problem:** Routes not working
**Solution:** Ensure you're using Next.js App Router, not Pages Router
- Check files are in `src/app/` not `src/pages/`

### Issue: Data Not Persisting

**Problem:** localStorage not working
**Solution:**
- Check browser privacy settings
- Verify domain is HTTPS (required for some features)
- localStorage doesn't work on some restrictive networks

### Issue: Drag-and-Drop Not Working

**Problem:** Touch events on mobile
**Solution:**
- Ensure @dnd-kit is properly installed
- Test on actual device, not just DevTools

### Issue: Charts Not Rendering

**Problem:** Recharts not loading
**Solution:**
- Check Recharts is installed: `npm list recharts`
- Verify ResponsiveContainer is used
- Check console for errors

---

## Post-Deployment Steps

### 1. Create QR Code

Generate a QR code for easy mobile access:

**Free Tools:**
- https://qr-code-generator.com
- https://www.qr-code-generator.com
- Chrome extension: QR Code Generator

**Input your URL:** `https://your-app.vercel.app`

**Settings:**
- Size: 500x500px minimum
- Format: PNG
- Error correction: Medium
- Save as: `docs/presentation/qr-code.png`

### 2. Update Documentation

Update all references to the live URL:
- `docs/PROJECT_REPORT.md`
- `docs/presentation/PRESENTATION_SCRIPT.md`
- `README.md`
- PowerPoint presentation

### 3. Test on Multiple Devices

Share the link and test on:
- Your phone
- Friend's phone
- Tablet
- Different computers

### 4. Monitor Performance

Use these tools:
- **Vercel Analytics** (if using Vercel)
- **Google PageSpeed Insights**: https://pagespeed.web.dev
- **Lighthouse** (in Chrome DevTools)

### 5. Prepare for Presentation

1. Bookmark your live URL
2. Test on presentation venue's WiFi
3. Have screenshots ready as backup
4. Clear browser cache before demo
5. Close unnecessary tabs
6. Have QR code ready for audience

---

## Continuous Deployment Setup

### Automatic Deployments

Once set up, any push to your branch will automatically redeploy:

**Vercel:**
1. Go to Project Settings → Git
2. Enable "Production Branch": `main` or your branch
3. Every push triggers new deployment

**Netlify:**
1. Site settings → Build & deploy
2. Continuous deployment is enabled by default
3. Push to GitHub → Auto deploy

### Preview Deployments

Test changes before going live:

1. Create a new branch:
```bash
git checkout -b feature/new-feature
```

2. Make changes and push:
```bash
git push origin feature/new-feature
```

3. Vercel/Netlify creates preview URL automatically

4. Test preview URL before merging to main

---

## Domain and SSL

### Free HTTPS

Both Vercel and Netlify provide:
- ✅ Free SSL certificate
- ✅ Automatic renewal
- ✅ HTTPS by default
- ✅ HTTP to HTTPS redirect

### Custom Domain with HTTPS

**Steps:**
1. Buy domain (Namecheap, GoDaddy, etc.)
2. Add domain in Vercel/Netlify settings
3. Update DNS records:
   - Type: A
   - Name: @
   - Value: [Platform IP]
4. Wait for SSL provisioning (5-10 minutes)

---

## Monitoring and Analytics

### Vercel Analytics

1. Enable in Project Settings → Analytics
2. View real-time traffic
3. See page views and unique visitors
4. Track Core Web Vitals

### Google Analytics (Optional)

1. Create GA4 property
2. Get Measurement ID
3. Add to `src/app/layout.tsx`:

```tsx
import Script from 'next/script'

// In return statement
<Script
  src={`https://www.googletagmanager.com/gtag/js?id=G-YOUR-ID`}
  strategy="afterInteractive"
/>
```

---

## Final Pre-Presentation Checklist

**24 Hours Before:**
- [ ] Deploy to production
- [ ] Test all features on live site
- [ ] Verify on mobile devices
- [ ] Check all browsers
- [ ] Update all documentation with live URL
- [ ] Generate and test QR code
- [ ] Take final screenshots
- [ ] Run Lighthouse audit
- [ ] Clear any test data

**Day of Presentation:**
- [ ] Test live site one more time
- [ ] Have backup screenshots ready
- [ ] Bookmark live URL
- [ ] Test on venue WiFi (if possible)
- [ ] Have QR code ready to display
- [ ] Close all unnecessary browser tabs
- [ ] Clear browser cache
- [ ] Prepare to demo key features

---

## Support and Resources

### Documentation
- **Vercel Docs:** https://vercel.com/docs
- **Netlify Docs:** https://docs.netlify.com
- **Next.js Deployment:** https://nextjs.org/docs/deployment

### Community Help
- **Vercel Discord:** https://vercel.com/discord
- **Next.js GitHub:** https://github.com/vercel/next.js/discussions
- **Stack Overflow:** Tag with `next.js`, `vercel`

### Contact Support
- **Vercel Support:** support@vercel.com
- **Netlify Support:** https://www.netlify.com/support

---

## Success Metrics

After deployment, you should have:

✅ Live URL accessible worldwide
✅ HTTPS enabled by default
✅ Fast loading (<3 seconds)
✅ Mobile responsive
✅ All features working
✅ Data persistence
✅ No console errors
✅ Cross-browser compatible
✅ QR code for easy sharing
✅ Documentation updated

---

## Congratulations!

Your Job Application Tracker is now live! 🎉

Share your accomplishment:
- Add to your resume
- Share on LinkedIn
- Include in portfolio
- Use in presentations
- Show to potential employers

**Next:** Take screenshots and prepare your presentation!

---

**Need Help?**
If you encounter issues during deployment, check the troubleshooting section above or reach out to the platform's support team.

Good luck with your deployment and presentation! 🚀
