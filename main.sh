while [ true ]; do
# Git reset for security
rm -rf .git
git init -q
git remote add origin "$REMOTE_URL"
git fetch -q
git reset -q origin/master --hard
sleep 3s;
# Main code
npx node .
done