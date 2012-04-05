alias maven="command mvn"
color_maven() {
  maven $* | sed -e 's/Tests run: \([^,]*\), Failures: \([^,]*\), Errors: \([^,]*\), Skipped: \([^,]*\)/[1;32mTests run: \1[0m, Failures: [1;31m\2[0m, Errors: [1;33m\3[0m, Skipped: [1;34m\4[0m/g' \
    -e 's/\(\[WARN\].*\)/[1;33m\1[0m/g' \
    -e 's/\(\[INFO\].*\)/[1;34m\1[0m/g' \
    -e 's/\(\[ERROR\].*\)/[1;31m\1[0m/g'
}

alias mvn=color_maven

