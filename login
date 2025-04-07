<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>新規ユーザー登録</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="login-container">
    <h2>新規ユーザー登録</h2>
    
    <!-- エラーメッセージ表示 -->
    <p id="error-message" class="error-message"></p>

    <form action="#" method="post">
      <div class="input-group">
        <label for="username">ユーザー名</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="input-group">
        <label for="email">メールアドレス</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="input-group">
        <label for="password">パスワード</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="input-group">
        <label for="confirm-password">パスワード確認</label>
        <input type="password" id="confirm-password" name="confirm-password" required>
      </div>
      <button type="submit">登録</button>
    </form>

    <!-- ログイン画面へのリンク -->
    <div class="signup-link">
      <a href="index.html">ログイン画面に戻る</a>
    </div>
  </div>

  <!-- JavaScriptでパスワード一致確認 -->
  <script>
    const form = document.querySelector('form');
    const password = document.getElementById('password');
    const confirmPassword = document.getElementById('confirm-password');
    const errorMessage = document.getElementById('error-message');

    form.addEventListener('submit', function (e) {
      if (password.value !== confirmPassword.value) {
        e.preventDefault();
        errorMessage.textContent = 'パスワードが一致しません。';
        errorMessage.style.display = 'block';
      } else {
        errorMessage.style.display = 'none';
      }
    });
  </script>
</body>
</html>

