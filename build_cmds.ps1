[Diagnostics.CodeAnalysis.SuppressMessage('PSAvoidUsingPositionalParameters','')]
[Diagnostics.CodeAnalysis.SuppressMessage('PSUseConsistentIndentation','')]
param()
#========================================================================================
# Upgrade/Reinstall
#----------------------------------------------------------------------------------------
nukedir .\node_modules
npm install
#========================================================================================
# Clean Build
#----------------------------------------------------------------------------------------
npm run clean
#========================================================================================
# Super TTC Composite (recommended)
#----------------------------------------------------------------------------------------
npm run build --verbose -- --verbosity=8 --jCmd=28 super-ttc::iosevka
npm run build --verbose -- --verbosity=8 --jCmd=28 super-ttc::iosevka-slab

npm run build --verbose -- --verbosity=8 --jCmd=28 super-ttc::iosevka-edev
npm run build --verbose -- --verbosity=8 --jCmd=28 super-ttc::iosevka-edev-slab

npm run build --verbose -- --verbosity=8 --jCmd=28 super-ttc::iosevka-pragpro
npm run build --verbose -- --verbosity=8 --jCmd=28 super-ttc::iosevka-pragpro-slab
#========================================================================================
# TTC for each composite
#----------------------------------------------------------------------------------------
npm run build --verbose -- --verbosity=8 --jCmd=28 ttc::iosevka
npm run build --verbose -- --verbosity=8 --jCmd=28 ttc::iosevka-slab

npm run build --verbose -- --verbosity=8 --jCmd=28 ttc::iosevka-edev
npm run build --verbose -- --verbosity=8 --jCmd=28 ttc::iosevka-edev-slab

npm run build --verbose -- --verbosity=8 --jCmd=28 ttc::iosevka-pragpro
npm run build --verbose -- --verbosity=8 --jCmd=28 ttc::iosevka-pragpro-slab
#========================================================================================
# TTF for each group (not recommended)
#----------------------------------------------------------------------------------------
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-term
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-fixed
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-slab
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-term-slab
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-fixed-slab

npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-edev
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-edev-term
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-edev-fixed
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-edev-slab
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-edev-term-slab
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-edev-fixed-slab

npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-pragpro
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-pragpro-term
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-pragpro-fixed
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-pragpro-slab
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-pragpro-term-slab
npm run build --verbose -- --verbosity=8 --jCmd=28 ttf::iosevka-pragpro-fixed-slab
#========================================================================================
# TTF+WEB for each group (not recommended)
#----------------------------------------------------------------------------------------
npm run build --verbose -- --verbosity=8 --jCmd=28 contents::iosevka-edev
npx verda -f verdafile.mjs --verbosity=8 --jCmd=28 ttc::iosevka-edev
