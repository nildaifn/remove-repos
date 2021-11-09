# ⛓项目永久链接：https://github.com/itzhangbao/remove-repos
# 将 DELETE_KOKEN 和 GithubName 都替换为自己的
DELETE_KOKEN= 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
GithubName="nildaifn"

for repName in $(cat repos.txt)
do
    echo "Delete "$repName
    curl -XDELETE -H "Authorization: token ${DELETE_KOKEN}" https://api.github.com/repos/${GithubName}/${repName}
done
