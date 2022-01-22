
# $1 - src path
# $2 - dest path

date=$(date +'Reserve_%H:%M_%d.%m.%y')
backup=$2/${date}
mkdir $backup
cd $backup
rsync -arv $1/ $backup/ > /dev/null
