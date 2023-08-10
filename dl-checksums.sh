#!/bin/sh
set -e
readonly MIRROR=https://github.com/alexellis/k3sup/releases/download

dl () {
    local ver=$1
    local os=$2
    local arch=$3

    local exe_suffix=""
    case $os in
        linux)
            case $arch in
                arm64)
                    exe_suffix="-arm64" ;;
                armhf)
                    exe_suffix="-armhf" ;;
            esac ;;
        darwin)
            exe_suffix="-darwin" ;;
        windows)
            exe_suffix=".exe"
    esac

    local url="${MIRROR}/${ver}/k3sup${exe_suffix}.sha256"
    printf "    # %s\n" $url
    printf "    %s-%s: sha256:%s\n" $os $arch $(curl -sSL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux amd64
    dl $ver linux arm64
    dl $ver linux armhf
    dl $ver darwin amd64
    dl $ver windows amd64
}

dl_ver ${1:-0.12.14}
