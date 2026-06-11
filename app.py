"""Minimal demo app for my-vuln-application.

Deliberately trivial — its only job is to be built into a container image and
scanned by Sysdig (and have build-time context collected by Bloodhound).
"""
import requests  # noqa: F401  (pulled in to give the image a Python dependency)


def main() -> None:
    print("my-vuln-application: hello")


if __name__ == "__main__":
    main()
