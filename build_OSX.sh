function wrbase() {
  cd trunk
  export GYP_DEFINES="build_with_libjingle=1 build_with_chromium=0 libjingle_objc=1"
  export GYP_GENERATORS="ninja"
}

function wrmac() {
  wrbase
  export GYP_DEFINES="$GYP_DEFINES OS=mac target_arch=x64"
  export GYP_GENERATOR_FLAGS="$GYP_GENERATOR_FLAGS output_dir=out_mac"
}

wrmac && gclient runhooks && \
      ninja -C out_mac/Debug libjingle_peerconnection_objc_test && \
      ./out_mac/Debug/libjingle_peerconnection_objc_test.app/Contents/MacOS/libjingle_peerconnection_objc_test
