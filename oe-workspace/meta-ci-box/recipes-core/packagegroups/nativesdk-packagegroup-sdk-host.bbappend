#
# pahole allows kernels build using gcc to make debug info available in
# BTF format. It is required for CO-RE binaries to work and can also be
# exploited automatically by bpftrace to avoid having to parse headers.
#
# Added for: Advanced Kernel Debugging
#
RDEPENDS:${PN} += "nativesdk-pahole"
