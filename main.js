/* Minimal JS for copy buttons only */
document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.btn-copy').forEach((btn) => {
        btn.addEventListener('click', () => {
            const target = document.getElementById(btn.getAttribute('data-target'));
            if (!target) return;
            navigator.clipboard.writeText(target.innerText).then(() => {
                btn.textContent = '✓ Copied';
                btn.classList.add('copied');
                setTimeout(() => {
                    btn.textContent = btn.getAttribute('data-target').includes('bibtex') ? 'Copy BibTeX' : 'Copy Citation';
                    btn.classList.remove('copied');
                }, 2000);
            });
        });
    });
    // Make all fade-in elements visible immediately (no animation needed for crawlers)
    document.querySelectorAll('.fade-in').forEach(el => el.classList.add('visible'));
});
