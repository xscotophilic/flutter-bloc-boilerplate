for dir in */ ; do
    cd "$dir"
    flutter pub get
    cd ..
done