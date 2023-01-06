# Build Commands


# Clean Upgrade/Reinstall
nukedir .\node_modules
npm install

# Clean Build
npm run clean

# Super TTC Composite (recommended)
npm run build -- super-ttc::iosevka-ikrima            --jCmd=28
npm run build -- super-ttc::iosevka-ikrima-slab       --jCmd=28
npm run build -- super-ttc::iosevka-pragmatapro       --jCmd=28
npm run build -- super-ttc::iosevka-pragmatapro-slab  --jCmd=28

# TTC for each scope
npm run build -- ttc::iosevka-ikrima                  --jCmd=28
npm run build -- ttc::iosevka-ikrima-slab             --jCmd=28
npm run build -- ttc::iosevka-pragmatapro             --jCmd=28
npm run build -- ttc::iosevka-pragmatapro-slab        --jCmd=28

# TTF for each scope (not recommended)
npm run build -- ttf::iosevka-ikrima                  --jCmd=28
npm run build -- ttf::iosevka-ikrima-slab             --jCmd=28
npm run build -- ttf::iosevka-pragmatapro             --jCmd=28
npm run build -- ttf::iosevka-pragmatapro-slab        --jCmd=28
