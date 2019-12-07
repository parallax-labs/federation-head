"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2019-12-05T16:49:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/cd7e8a690caf526e0634e3ca55b10308ee23182d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/cd7e8a690caf526e0634e3ca55b10308ee23182d.zip"
      ],
      strip_prefix = "rules_cc-cd7e8a690caf526e0634e3ca55b10308ee23182d",
      sha256 = "7e5fd5d3b54217ee40d8488bbd70840456baafb3896782942ae4db1400a77657",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2019-12-05T03:53:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip",
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip"
      ],
      strip_prefix = "rules_python-38f86fb55b698c51e8510c807489c9f4e047480e",
      sha256 = "7d64815f4b22400bed0f1b9da663037e1578573446b7bc78f20f24b2b5459bb9",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2019-12-06T15:28:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/77f87009a34c745255bd84d8f2647040d831a2b3.zip",
           "https://github.com/abseil/abseil-cpp/archive/77f87009a34c745255bd84d8f2647040d831a2b3.zip"
      ],
      strip_prefix = "abseil-cpp-77f87009a34c745255bd84d8f2647040d831a2b3",
      sha256 = "73b0cadb07a1496581e3d822739996482470ae55aadc3f7ee188683815a99806",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2019-12-06T16:34:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/78fdd6c00b8fa5dd67066fbb796affc87ba0e075.zip",
           "https://github.com/google/googletest/archive/78fdd6c00b8fa5dd67066fbb796affc87ba0e075.zip"
      ],
      strip_prefix = "googletest-78fdd6c00b8fa5dd67066fbb796affc87ba0e075",
      sha256 = "833af0bd5482d89aa2ed37dc93ef8219b8e6aabef9f5ad0a19715acf24c2735e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2019-12-02T09:29:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/367119482ff4abc3d73e4a109b410090fc281337.zip",
           "https://github.com/google/benchmark/archive/367119482ff4abc3d73e4a109b410090fc281337.zip"
      ],
      strip_prefix = "benchmark-367119482ff4abc3d73e4a109b410090fc281337",
      sha256 = "586479d79dfb69c9a3800204585e88d621e332ab01e0f0a171bba585efa59263",
    )

    # ********** zlib (pinned to 1.2.11) *****************
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
