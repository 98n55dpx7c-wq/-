#!/bin/bash
# 골프 내기 계산기 실행 스크립트
DIR="$(cd "$(dirname "$0")" && pwd)"
PORT=8080
URL="http://localhost:$PORT/golf_betting.html"

echo "⛳ 골프 내기 계산기 시작 중..."
echo "   주소: $URL"
echo "   (종료: Ctrl+C)"
echo ""

# 브라우저 자동 열기
if command -v xdg-open &>/dev/null; then
  (sleep 1 && xdg-open "$URL") &
elif command -v open &>/dev/null; then
  (sleep 1 && open "$URL") &
fi

cd "$DIR"
python3 -m http.server $PORT
