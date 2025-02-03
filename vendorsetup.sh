git clone https://gitea.com/drishal/vendor_nothing_pong vendor/nothing/Pong --depth 1
git clone https://github.com/Nothing-phone-2-Development/android_hardware_nothing hardware/nothing
git clone https://github.com/Pong-Development/hardware_dolby -b 15 hardware/dolby
git clone https://github.com/HELLBOY017/kernel_nothing_sm8475 kernel/nothing/sm8475 -b inline-2 --depth 1 
cd kernel/nothing/sm8475
git submodule init && git submodule update
cd ../../../

cd hardware/qcom-caf/sm8450/display
git remote add np2-dev https://github.com/Nothing-phone-2-Development/android_hardware_qcom_display
git fetch np2-dev
git cherry-pick b33d28375720651a888cc7921f2d08fd1dd7e1c4
git cherry-pick --abort
cd ../../../../

cd device/qcom/sepolicy_vndr/sm8450
git remote add np2-dev https://github.com/Nothing-phone-2-Development/android_device_qcom_sepolicy_vndr
git fetch np2-dev
git cherry-pick fb4279c23fdd110ae0e13bdb72f36515242b866d
git cherry-pick --abort
git cherry-pick 066c4d78b75d9af23bf3ff7a67c73a64c9acc810
git cherry-pick --abort
git cherry-pick 7cd972ffc847631f0a892e4d13eb1def59982268
git cherry-pick --abort
git cherry-pick e63f86c2e43b021f34a1258e068964e72a91c395
git cherry-pick --abort
cd ../../../../

rm -rf hardware/qcom-caf/sm8450/audio/pal
git clone git@github.com:Nothing-phone-2-Development/android_vendor_qcom_opensource_arpal-lx.git hardware/qcom-caf/sm8450/audio/pal -b lineage-22.1-caf-sm8450
rm -rf hardware/qcom-caf/sm8450/audio/primary-hal
git clone git@github.com:Nothing-phone-2-Development/android_hardware_qcom_audio-ar.git hardware/qcom-caf/sm8450/audio/primary-hal  -b lineage-22.1-caf-sm8450
