#!/bin/bash
# ==============================================
# IndexNow Submission Script
# Notifies Bing (and ChatGPT) to crawl your page immediately
# ==============================================
# Usage: bash submit_to_bing.sh
#
# IndexNow lets you ping search engines to re-crawl your URL.
# Bing is the primary index ChatGPT uses for real-time search.
# ==============================================

PAGE_URL="https://shivani-tuli.github.io/mitochondria-actin-neurodegeneration/"
SITEMAP_URL="https://shivani-tuli.github.io/mitochondria-actin-neurodegeneration/sitemap.xml"

echo "================================================"
echo "  Submitting to Bing IndexNow"
echo "================================================"
echo ""

# Submit via IndexNow (no API key needed for basic submission)
echo "1. Submitting page URL to IndexNow..."
curl -s -o /dev/null -w "   HTTP Status: %{http_code}\n" \
    "https://www.bing.com/indexnow?url=${PAGE_URL}&key=mitochondria-actin-neurodegeneration"

echo ""
echo "2. Submitting sitemap URL to IndexNow..."
curl -s -o /dev/null -w "   HTTP Status: %{http_code}\n" \
    "https://www.bing.com/indexnow?url=${SITEMAP_URL}&key=mitochondria-actin-neurodegeneration"

echo ""
echo "================================================"
echo "  Next Steps (manual)"
echo "================================================"
echo ""
echo "  1. Go to: https://www.bing.com/webmasters"
echo "     → Sign in with a Microsoft account"
echo "     → Add site: ${PAGE_URL}"
echo "     → Submit sitemap: ${SITEMAP_URL}"
echo ""
echo "  2. Verify your site in Bing Webmaster Tools"
echo "     (they'll ask you to add a meta tag or DNS record)"
echo ""
echo "  3. After Bing indexes the page (usually 1-7 days),"
echo "     ChatGPT will be able to find and cite your paper."
echo ""
echo "  4. Test by asking ChatGPT:"
echo "     'What is actin-mitochondria crosstalk in neurodegeneration?'"
echo "     'Tuli et al 2026 mitochondria actin review'"
echo "================================================"
