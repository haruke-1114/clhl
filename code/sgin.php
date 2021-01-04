<!DOCTYPE html>
<html>

<head>
    <title>CLHL</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/01.css">
</head>

<body>
    <div class="header" align="center">
        <img src="/img/logo.png" width="150" height="100" title="logo" />
        <h2>新 增 註 冊</h2>
    </div>
    <hr />
    <form action="DB.php" method="post" align="center" name='sgin'>
        <table align="center">
            <tr>
                <th>ID：</th>
                <td><input type="text" name="id"></td>
            <tr>
            <tr>
                <th>帳號：</th>
                <td><input type="text" name="account"></td>
            <tr>
                <th>密碼：</th>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <th>名稱：</th>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <th>手機號碼：</th>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <th>生日：</th>
                <td><input type="date" style="font-size: 1.3rem" name="birthday"></td>
            </tr>
            <tr>
                <th>性別：</th>
                <td>
                    <input type="radio" name="sex" value="男生">男生
                    <input type="radio" name="sex" value="女生">女生
                </td>
            </tr>
            <tr>
                <th>電子信箱：</th>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <th>工作經驗：</th>
                <td><input type="text" name="work"></td>
            </tr>
            <tr>
                <th>最高學歷：</th>
                <td>
                    <select name="school" style="width: 177px;">
                        <option value="國小">國小</option>
                        <option value="國中">國中</option>
                        <option value="高中">高中</option>
                        <option value="大學">大學</option>
                        <option value="碩士">碩士</option>
                        <option value="博士">博士</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>居住地：</th>
                <td><input type="text" name="place"></td>
            </tr>


        </table>
        <input type="submit" value="新增"  onClick="check_data()">
</body>

<script>
    function check_data() {
        if (document.sgin.account.value.length == 0) {
            alert("「使用者帳號」欄位忘了填哦...");
            return false;
        }
        // if (document.sgin.account.value.length > 10) {
        //     alert("「使用者帳號」不可以超過 10 個字元哦...");
        //     return false;
        // }
        if (document.sgin.password.value.length == 0) {
            alert("「使用者密碼」一定要填寫哦...");
            return false;
        }
        // if (document.sgin.password.value.length > 10) {
        //     alert("「使用者密碼」不可以超過 10 個字元哦...");
        //     return false;
        // }
        // if (document.sgin.re_password.value.length == 0) {
        //     alert("「密碼確認」欄位忘了填哦...");
        //     return false;
        // }
        //   if (document.sgin.password.value != document.sgin.re_password.value) {
        //     alert("「密碼確認」欄位與「使用者密碼」欄位一定要相同...");
        //     return false;
        //   }
        if (document.sgin.name.value.length == 0) {
            alert("您忘了填「名稱」欄位了...！");
            return false;
        }
        if (document.sgin.year.value.length == 0) {
            alert("您忘了填「生日」欄位了...");
            return false;
            sgin.submit();
        }
    }
</script>


</html>