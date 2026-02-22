<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon.co.jp - 注文の確認</title>
    <style>
        body { font-family: "Amazon Ember", Arial, sans-serif; margin: 0; padding: 0; background-color: #fff; color: #0f1111; }
        
        /* ヘッダー */
        .header { background-color: #232f3e; padding: 10px 20px; color: white; display: flex; align-items: center; justify-content: space-between; }
        .logo { font-size: 24px; font-weight: bold; letter-spacing: -1px; }
        .logo span { color: #ff9900; }
        
        /* メインコンテナ */
        .container { max-width: 600px; margin: 20px auto; padding: 0 20px; }
        
        /* 警告メッセージ */
        .alert-box { border: 1px solid #e77600; background-color: #fffaf0; padding: 15px; margin-bottom: 20px; border-radius: 4px; }
        .alert-title { color: #c40000; font-weight: bold; font-size: 18px; margin-bottom: 8px; }
        
        h1 { font-size: 22px; margin-bottom: 10px; font-weight: 400; }
        .order-date { color: #565959; font-size: 14px; margin-bottom: 20px; }
        
        /* 注文詳細 */
        .order-details { border: 1px solid #d5d9d9; border-radius: 8px; padding: 20px; margin-bottom: 20px; }
        .total-price { font-size: 24px; font-weight: bold; color: #b12704; margin: 10px 0; border-bottom: 1px solid #e7e7e7; padding-bottom: 15px; }
        
        .info-row { display: flex; margin-bottom: 10px; font-size: 14px; }
        .info-label { width: 120px; color: #565959; font-weight: bold; }
        .info-value { font-weight: bold; }
        
        /* カウントダウン */
        .timer-box { text-align: center; background: #fff5f5; border: 2px dashed #c40000; padding: 15px; margin: 20px 0; border-radius: 4px; }
        .timer-text { font-size: 14px; color: #c40000; font-weight: bold; }
        #timer { font-size: 28px; font-family: monospace; letter-spacing: 2px; }
        
        /* ボタン */
        .btn-yellow { display: block; width: 100%; background-color: #ffd814; border: 1px solid #fcd200; border-radius: 8px; padding: 12px 0; text-align: center; font-size: 15px; cursor: pointer; text-decoration: none; color: #0f1111; font-weight: normal; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        .btn-yellow:hover { background-color: #f7ca00; }
        
        /* ロック画面 */
        #lock-screen { display: none; text-align: center; padding: 50px 20px; }
        .lock-icon { font-size: 50px; color: #c40000; margin-bottom: 20px; }
    </style>
</head>
<body>

    <div class="header" id="header-area">
        <div class="logo">amazon<span>.co.jp</span></div>
        <div style="font-size: 12px;">アカウント＆リスト</div>
    </div>

    <div class="container" id="main-content">
        <div class="alert-box">
            <div class="alert-title">⚠️ 不審なサインインと高額注文を検知しました</div>
            <div style="font-size: 13px; line-height: 1.5;">
                現在、あなたのアカウントから普段とは異なる環境での高額決済が承認されました。ご本人の操作でない場合は、直ちに注文をキャンセルしてください。
            </div>
        </div>

        <h1>注文の確認</h1>
        <div class="order-date" id="order-date-text">注文日: </div>

        <div class="order-details">
            <div style="font-weight: bold; font-size: 16px;">発送準備中</div>
            <div style="font-size: 14px; color: #007185; margin-top: 5px;">お届け予定日: 明日</div>
            
            <div class="total-price">
                注文合計: ￥314,800
            </div>

            <div class="info-row">
                <div class="info-label">商品:</div>
                <div class="info-value">Apple MacBook Pro 14インチ (M3 Maxチップ搭載)</div>
            </div>
            <div class="info-row">
                <div class="info-label">請求先名義:</div>
                <div class="info-value">藤川## 様</div>
            </div>
            <div class="info-row">
                <div class="info-label">お届け先:</div>
                <div class="info-value">福岡県 (詳細な住所は保護されています)</div>
            </div>
            <div class="info-row">
                <div class="info-label">生年月日認証:</div>
                <div class="info-value">10月10日 (認証済)</div>
            </div>
            <div class="info-row" style="margin-top: 15px; font-size: 12px; color: #565959;">
                <div class="info-label">支払い方法:</div>
                <div>登録済みのクレジットカード（一括払い）</div>
            </div>
        </div>

        <div class="timer-box">
            <div class="timer-text">自動出荷処理まで残り時間</div>
            <div id="timer">03:00</div>
            <div style="font-size: 12px; color: #565959; margin-top: 5px;">※ 期限を過ぎるとキャンセルできず、請求が確定します。</div>
        </div>

        <button class="btn-yellow" onclick="showLock()">注文をキャンセルしてアカウントを保護する</button>
    </div>

    <div class="container" id="lock-screen">
        <div class="lock-icon">✖</div>
        <h2 style="color: #c40000; margin-bottom: 10px;">キャンセルの受付に失敗しました</h2>
        <p style="font-weight: bold; font-size: 18px;">商品の出荷準備が完了しました。</p>
        
        <div style="background: #f3f3f3; border: 1px solid #ddd; padding: 20px; text-align: left; margin-top: 30px; border-radius: 4px; font-size: 14px; line-height: 1.6;">
            <p>お客様の操作はシステムによって拒否されました。</p>
            <p><strong>【今後の対応について】</strong></p>
            <ul style="padding-left: 20px; color: #565959;">
                <li>請求金額 ￥314,800 はご登録のカードより引き落とされます。</li>
                <li>商品は指定された 福岡県 の住所へ明日到着します。</li>
                <li>アカウントの不正利用が疑われるため、管轄の警察署へIPアドレスを含むアクセスログを自動通知しました。</li>
            </ul>
            <p style="margin-top: 20px; text-align: center; color: #c40000; font-weight: bold;">
                セキュリティ保護のため、この画面を閉じて警察からの連絡をお待ちください。
            </p>
        </div>
    </div>

    <script>
        // 今日の日付を「注文日」に設定
        const now = new Date();
        document.getElementById('order-date-text').innerText = `注文日: ${now.getFullYear()}年${now.getMonth()+1}月${now.getDate()}日`;

        // カウントダウン (3分)
        let time = 180; 
        const timerDisplay = document.getElementById('timer');

        const countdown = setInterval(() => {
            let minutes = Math.floor(time / 60);
            let seconds = time % 60;
            minutes = minutes < 10 ? '0' + minutes : minutes;
            seconds = seconds < 10 ? '0' + seconds : seconds;
            timerDisplay.innerText = `${minutes}:${seconds}`;

            if (time <= 0) {
                clearInterval(countdown);
                showLock();
            }
            time--;
        }, 1000);

        function showLock() {
            // 確認ダイアログを出してさらにリアルに
            if(confirm("この注文を本当にキャンセルしますか？\n(処理には数秒かかります)")) {
                // ボタンを押した後の絶望画面へ
                document.getElementById('main-content').style.display = 'none';
                document.getElementById('header-area').style.display = 'none';
                document.getElementById('lock-screen').style.display = 'block';
                document.body.style.backgroundColor = '#fefefe';
                clearInterval(countdown);
            }
        }
    </script>
</body>
</html>
