"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-08-18T17:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip",
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip"
      ],
      strip_prefix = "rules_cc-02becfef8bc97bda4f9bb64e153f1b0671aec4ba",
      sha256 = "fa42eade3cad9190c2a6286a6213f07f1a83d26d9f082d56f526d014c6ea7444",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-09-08T11:29:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/3baa2660569a76898d0f520c73b299ea39b6374d.zip",
           "https://github.com/bazelbuild/rules_python/archive/3baa2660569a76898d0f520c73b299ea39b6374d.zip"
      ],
      strip_prefix = "rules_python-3baa2660569a76898d0f520c73b299ea39b6374d",
      sha256 = "7122bef3e3ac44d5dd697a1411e2861dd7437000bc435d4be35e42589ebb9f9f",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-09-12T00:29:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/6af91b35109cb35ae53cfe908e31a0c31c4a47f3.zip",
           "https://github.com/abseil/abseil-cpp/archive/6af91b35109cb35ae53cfe908e31a0c31c4a47f3.zip"
      ],
      strip_prefix = "abseil-cpp-6af91b35109cb35ae53cfe908e31a0c31c4a47f3",
      sha256 = "b0dd1156d66d492365aa8d876f2b2405440d3862e089c16c4f128d85b25fb7dc",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-10T23:09:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a4ab0abb93620ce26efad9de9296b73b16e88588.zip",
           "https://github.com/google/googletest/archive/a4ab0abb93620ce26efad9de9296b73b16e88588.zip"
      ],
      strip_prefix = "googletest-a4ab0abb93620ce26efad9de9296b73b16e88588",
      sha256 = "c5f7f9f62fa9b2893b2b59d33e943bd3487b71c6f7bd9cd143473b49a37b542d",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-09-11T09:55:18Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/73d4d5e8d6d449fc8663765a42aa8aeeee844489.zip",
           "https://github.com/google/benchmark/archive/73d4d5e8d6d449fc8663765a42aa8aeeee844489.zip"
      ],
      strip_prefix = "benchmark-73d4d5e8d6d449fc8663765a42aa8aeeee844489",
      sha256 = "df12777ce064836ceec9bd1664e546a216ce93e5f1486c122fccaf1d613045d7",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-11T21:26:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/3f483fbfe081995f7c8681eed9ffea56f6babd4b.zip",
           "https://github.com/google/tcmalloc/archive/3f483fbfe081995f7c8681eed9ffea56f6babd4b.zip"
      ],
      strip_prefix = "tcmalloc-3f483fbfe081995f7c8681eed9ffea56f6babd4b",
      sha256 = "a6aa5b9b285b5e84321d1aae4f7504b72326e96479be48cf23f05cf28aa5f6a8",
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
