# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# Copyright (C) 2010-2011 Kaz Kamimura <kamypus at yahoo.co.jp>
# Copyright (C) 2011/12/08 Kaoru Hayama TIS Inc.
# Copyright (C) 2014 Norihiro Tanaka NTT Data Intellilink Corp.
# Copyright (C) 2014 Toshihiro Takehara Cloud ASIA Co., Ltd.
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --
package Kernel::Language::ja;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%Y/%M/%D %T';
    $Self->{DateFormatLong}      = '%Y/%M/%D - %T';
    $Self->{DateFormatShort}     = '%Y/%M/%D';
    $Self->{DateInputFormat}     = '%Y/%M/%D';
    $Self->{DateInputFormatLong} = '%Y/%M/%D - %T';
    $Self->{Completeness}        = 0.728756601056169;

    # csv separator
    $Self->{Separator} = ';';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'はい',
        'No' => 'いいえ',
        'yes' => 'はい',
        'no' => 'いいえ',
        'Off' => 'オフ',
        'off' => 'オフ',
        'On' => 'オン',
        'on' => 'オン',
        'top' => '先頭',
        'end' => '最後',
        'Done' => '完了',
        'Cancel' => '取消',
        'Reset' => 'リセット',
        'more than ... ago' => '... 以前',
        'in more than ...' => '以後',
        'within the last ...' => '以内(前)',
        'within the next ...' => '以内(後)',
        'Created within the last' => '以内に作成された',
        'Created more than ... ago' => '以前に作成された',
        'Today' => '本日',
        'Tomorrow' => '翌日',
        'Next week' => '翌週',
        'day' => '日',
        'days' => '日',
        'day(s)' => '日',
        'd' => '日',
        'hour' => '時間',
        'hours' => '時間',
        'hour(s)' => '時間',
        'Hours' => '時間',
        'h' => '時間',
        'minute' => '分',
        'minutes' => '分',
        'minute(s)' => '分',
        'Minutes' => '分',
        'm' => '分',
        'month' => '月',
        'months' => '月',
        'month(s)' => '月',
        'week' => '週',
        'week(s)' => '週',
        'quarter' => '四半期',
        'quarter(s)' => '四半期',
        'half-year' => '半期',
        'half-year(s)' => '半期',
        'year' => '年',
        'years' => '年',
        'year(s)' => '年',
        'second(s)' => '秒',
        'seconds' => '秒',
        'second' => '秒',
        's' => '秒',
        'Time unit' => '時間の単位',
        'wrote' => 'wrote',
        'Message' => 'メッセージ',
        'Error' => 'エラー',
        'Bug Report' => 'バグ報告',
        'Attention' => '注意',
        'Warning' => '警告',
        'Module' => 'モジュール',
        'Modulefile' => 'モジュールファイル',
        'Subfunction' => 'サブファンクション',
        'Line' => '行',
        'Setting' => '設定',
        'Settings' => '設定',
        'Example' => '例',
        'Examples' => '例',
        'valid' => '有効',
        'Valid' => '有効',
        'invalid' => '無効',
        'Invalid' => '無効',
        '* invalid' => '* は無効です',
        'invalid-temporarily' => '無効-暫定',
        ' 2 minutes' => ' 2 分',
        ' 5 minutes' => ' 5 分',
        ' 7 minutes' => ' 7 分',
        '10 minutes' => '10 分',
        '15 minutes' => '15 分',
        'Mr.' => '様',
        'Mrs.' => '様',
        'Next' => '次へ',
        'Back' => '戻る',
        'Next...' => '次へ...',
        '...Back' => '...戻る',
        '-none-' => '-なし-',
        'none' => 'なし',
        'none!' => 'ありません。',
        'none - answered' => 'なし - 回答済',
        'please do not edit!' => '編集しないでください。',
        'Need Action' => '操作が必要',
        'AddLink' => '連結を追加',
        'Link' => '連結',
        'Unlink' => '連結解除',
        'Linked' => '連結済',
        'Link (Normal)' => '連結 (標準)',
        'Link (Parent)' => '連結 (親)',
        'Link (Child)' => '連結 (子)',
        'Normal' => '標準',
        'Parent' => '親',
        'Child' => '子',
        'Hit' => 'ヒット',
        'Hits' => '件',
        'Text' => '本文',
        'Standard' => 'スタンダード',
        'Lite' => 'ライト',
        'User' => 'ユーザー',
        'Username' => 'ユーザー名',
        'Language' => '言語',
        'Languages' => '言語',
        'Password' => 'パスワード',
        'Preferences' => '個人設定',
        'Salutation' => '挨拶文',
        'Salutations' => '挨拶文',
        'Signature' => '署名',
        'Signatures' => '署名',
        'Customer' => '顧客',
        'CustomerID' => '顧客ID',
        'CustomerIDs' => '顧客IDs',
        'customer' => '顧客',
        'agent' => '担当者',
        'system' => 'システム',
        'Customer Info' => '顧客情報',
        'Customer Information' => '顧客情報',
        'Customer Companies' => '顧客企業',
        'Company' => '企業',
        'go!' => '実行！',
        'go' => '実行',
        'All' => '全て',
        'all' => '全て',
        'Sorry' => '申し訳ありません',
        'update!' => '更新！',
        'update' => '更新',
        'Update' => '更新',
        'Updated!' => '更新しました。',
        'submit!' => '送信！',
        'submit' => '送信',
        'Submit' => '送信',
        'change!' => '変更！',
        'Change' => '変更',
        'change' => '変更',
        'click here' => 'ここをクリック',
        'Comment' => 'コメント',
        'Invalid Option!' => '無効なオプションです。',
        'Invalid time!' => '無効な時間です。',
        'Invalid date!' => '無効な日付です。',
        'Name' => '名前',
        'Group' => 'グループ',
        'Description' => '説明',
        'description' => '説明',
        'Theme' => 'テーマ',
        'Created' => '作成日時',
        'Created by' => '作成者',
        'Changed' => '変更日時',
        'Changed by' => '変更者',
        'Search' => '検索',
        'and' => '-',
        'between' => '期間中',
        'before/after' => '前／後',
        'Fulltext Search' => '全文検索',
        'Data' => 'データ',
        'Options' => 'オプション',
        'Title' => 'タイトル',
        'Item' => 'アイテム',
        'Delete' => '削除',
        'Edit' => '編集',
        'View' => '一覧',
        'Number' => '番号',
        'System' => 'システム',
        'Contact' => '連絡',
        'Contacts' => '連絡',
        'Export' => 'エクスポート',
        'Up' => '昇順',
        'Down' => '降順',
        'Add' => '追加',
        'Added!' => '追加しました。',
        'Category' => '区分',
        'Viewer' => '閲覧者',
        'Expand' => '展開',
        'Small' => '小',
        'Medium' => '中',
        'Large' => '大',
        'Date picker' => '日付抽出',
        'Show Tree Selection' => 'ツリーセレクターを表示する',
        'The field content is too long!' => 'その領域の内容が長すぎます。',
        'Maximum size is %s characters.' => '最大サイズは%s文字です。',
        'This field is required or' => 'この領域は必須です。または、',
        'New message' => '新規メッセージ',
        'New message!' => '新規メッセージ！',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            '通常のキュー画面に戻るにはこのチケットに回答してください。',
        'You have %s new message(s)!' => '%s件の新規メッセージがあります。',
        'You have %s reminder ticket(s)!' => '%s件の保留期限チケットがあります',
        'The recommended charset for your language is %s!' => '選択した言語の文字コードは %s を推奨します',
        'Change your password.' => 'パスワードを変更',
        'Please activate %s first!' => '最初に %s を有効にしてください。',
        'No suggestions' => '候補なし',
        'Word' => '単語',
        'Ignore' => '無視',
        'replace with' => '置換',
        'There is no account with that login name.' => 'ログイン名に一致するアカウントはありません',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'ログインできません。ユーザー名またはパスワードを確認してください。',
        'There is no acount with that user name.' => '該当ユーザー名のアカウントはありません。',
        'Please contact your administrator' => '管理者に連絡してください',
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            '承認に成功しましたが、顧客レコードが顧客バックエンドで見つかりませんでした。
管理者に連絡してください。',
        'This e-mail address already exists. Please log in or reset your password.' =>
            'このe-mailアドレスはすでに存在します。ログインまたはパスワードのリセットを行ってください。',
        'Logout' => 'ログアウト',
        'Logout successful. Thank you for using %s!' => 'ログアウトしました。%s をご利用いただきありがとうございました。',
        'Feature not active!' => '機能が有効になっていません。',
        'Agent updated!' => '担当者が更新されました。',
        'Database Selection' => 'データベース選択',
        'Create Database' => 'データベース作成',
        'System Settings' => 'システム設定',
        'Mail Configuration' => 'メール設定',
        'Finished' => '終了しました',
        'Install OTRS' => 'OTRSをインストール',
        'Intro' => 'イントロ',
        'License' => 'ライセンス',
        'Database' => 'データベース',
        'Configure Mail' => 'メール設定',
        'Database deleted.' => 'データベースを削除しました。',
        'Enter the password for the administrative database user.' => '管理権限を持つデータベースユーザーのパスワードを入力してください。',
        'Enter the password for the database user.' => 'データベースユーザーのパスワードを入力してください。',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            'データベースのrootパスワードを設定した場合、この領域を入力しなければなりません。そうでない場合は、この領域を空のままにしてください。',
        'Database already contains data - it should be empty!' => '既にデータベースにデータが含まれている場合、空にしなければなりません。',
        'Login is needed!' => 'ログインしてください。',
        'It is currently not possible to login due to a scheduled system maintenance.' =>
            '予定されていたメンテナンスのため、只今の時間はログインを行うことができません。',
        'Password is needed!' => 'パスワードを入力してください。',
        'Take this Customer' => 'この顧客を選択',
        'Take this User' => 'このユーザーを選択',
        'possible' => '可能',
        'reject' => '拒否',
        'reverse' => '反転',
        'Facility' => 'ファシリティ',
        'Time Zone' => 'タイムゾーン（時間帯）',
        'Pending till' => '保留時間',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'OTRSで作業するときにスーパーユーザを使用しないでください。代わりに新しい担当者を作成し、これらのアカウントで作業してください。',
        'Dispatching by email To: field.' => 'メールの宛先で振り分け',
        'Dispatching by selected Queue.' => '選択したキューで振り分け',
        'No entry found!' => '登録がありません。',
        'Session invalid. Please log in again.' => 'セッションが無効です。再ログインしてください。',
        'Session has timed out. Please log in again.' => 'セッションがタイムアウトしました。再ログインしてください。',
        'Session limit reached! Please try again later.' => 'セッション数が上限に達しました。後で再ログインを試みてください。',
        'No Permission!' => '権限がありません。',
        '(Click here to add)' => '(クリックして追加)',
        'Preview' => 'プレビュー',
        'Package not correctly deployed! Please reinstall the package.' =>
            'パッケージが正しくデプロイされません。再インストールしてください。',
        '%s is not writable!' => '%s は書き込めません。',
        'Cannot create %s!' => '%s を作成できません',
        'Check to activate this date' => 'この日付を活性化する場合はチェック',
        'You have Out of Office enabled, would you like to disable it?' =>
            '外出中が有効になっています。無効にしますか？',
        'News about OTRS releases!' => 'OTRSリリース情報!',
        'Customer %s added' => '顧客 %s を追加しました',
        'Role added!' => 'ロールを追加しました。',
        'Role updated!' => 'ロールを更新しました。',
        'Attachment added!' => '添付ファイルを追加しました。',
        'Attachment updated!' => '添付ファイルを更新しました。',
        'Response added!' => '応答を追加しました。',
        'Response updated!' => '応答を更新しました。',
        'Group updated!' => 'グループを更新しました。',
        'Queue added!' => 'キューを追加しました。',
        'Queue updated!' => 'キューを更新しました。',
        'State added!' => '状態を追加しました。',
        'State updated!' => '状態を更新しました。',
        'Type added!' => 'タイプを追加しました。',
        'Type updated!' => 'タイプを更新しました。',
        'Customer updated!' => '顧客を更新しました。',
        'Customer company added!' => '顧客企業を追加しました。',
        'Customer company updated!' => '顧客企業を更新しました。',
        'Note: Company is invalid!' => '注意: 企業が無効です。',
        'Mail account added!' => 'メールアカウントを追加しました。',
        'Mail account updated!' => 'メールアカウントを更新しました。',
        'System e-mail address added!' => 'システムメールアドレスを追加しました。',
        'System e-mail address updated!' => 'システムメールアドレスを更新しました。',
        'Contract' => '契約',
        'Online Customer: %s' => 'オンラインの顧客: %s',
        'Online Agent: %s' => 'オンラインの担当者: %s',
        'Calendar' => 'カレンダー',
        'File' => 'ファイル',
        'Filename' => 'ファイル名',
        'Type' => 'タイプ',
        'Size' => 'サイズ',
        'Upload' => 'アップロード',
        'Directory' => 'ディレクトリ',
        'Signed' => '署名済',
        'Sign' => '署名',
        'Crypted' => '暗号化済',
        'Crypt' => '暗号化',
        'PGP' => 'PGP',
        'PGP Key' => 'PGP鍵',
        'PGP Keys' => 'PGP鍵',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => 'S/MIME証明書',
        'S/MIME Certificates' => 'S/MIME証明書',
        'Office' => '事務所',
        'Phone' => '電話',
        'Fax' => 'Fax',
        'Mobile' => '携帯電話',
        'Zip' => '郵便番号',
        'City' => '住所',
        'Street' => '建物名',
        'Country' => '国',
        'Location' => 'ロケーション',
        'installed' => 'インストール済',
        'uninstalled' => '未インストール',
        'Security Note: You should activate %s because application is already running!' =>
            'セキュリティ上の注意: %sを有効にしてください。アプリケーションが既に実行中です。',
        'Unable to parse repository index document.' => 'リポジトリインデックスドキュメントを解析できません。',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            'このリポジトリ中でご利用のフレームワークのバージョンに対するパッケージが見つかりません。他のフレームワークのバージョンに対するパッケージのみ含まれます。',
        'No packages, or no new packages, found in selected repository.' =>
            '選択されたリポジトリ中で新しいパッケージが見つかりません。',
        'Edit the system configuration settings.' => 'システム設定の編集',
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            'データベースから取得したACLの情報はシステム設定と同期していません。全てのACLをデプロイしてください。',
        'printed at' => '印刷する',
        'Loading...' => '読み込み中...',
        'Dear Mr. %s,' => '%s 様',
        'Dear Mrs. %s,' => '%s 様',
        'Dear %s,' => '%s 様',
        'Hello %s,' => '%s さん',
        'This email address is not allowed to register. Please contact support staff.' =>
            'このemailアドレスの登録は認められていません。サポートにお問い合わせください。',
        'New account created. Sent login information to %s. Please check your email.' =>
            '新規アカウントを作成しました。ログイン情報を %s に送信しました。メールを確認してください。',
        'Please press Back and try again.' => '[戻る]ボタンを押してやり直してください。',
        'Sent password reset instructions. Please check your email.' => 'パスワードを初期化する手順を送信しました。メールを確認してください。',
        'Sent new password to %s. Please check your email.' => '新しいパスワードを %s に送信しました。メールを確認してください。',
        'Upcoming Events' => '直近のイベント',
        'Event' => 'イベント',
        'Events' => 'イベント',
        'Invalid Token!' => '無効なトークンです',
        'more' => '続き',
        'Collapse' => '崩壊',
        'Shown' => '表示',
        'Shown customer users' => '顧客ユーザーを表示',
        'News' => 'ニュース',
        'Product News' => '製品ニュース',
        'OTRS News' => 'OTRSニュース',
        '7 Day Stats' => '週間統計',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            'データベースから取得したプロセス管理情報はシステム設定と同期していません。全てのプロセスを同期させてください。',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            'パッケージはOTRSグループによって検証されていません。このパッケージの利用を推奨しません。',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            'このパッケージのインストールを継続すると、以下の問題が発生するかもしれません。<br><br>&nbsp;-セキュリティ上の問題<br>&nbsp;-安定性の問題<br>&nbsp;-パフォーマンス問題<br><br>このパッケージを動作させることによって引き起こされた問題はOTRSサービス契約の対象外ですのでご注意ください。<br><br>',
        'Mark' => 'マーク',
        'Unmark' => 'マーク解除',
        'Bold' => '太字',
        'Italic' => '斜体',
        'Underline' => '下線',
        'Font Color' => '文字色',
        'Background Color' => '背景色',
        'Remove Formatting' => '書式を削除',
        'Show/Hide Hidden Elements' => '要素を表示／非表示',
        'Align Left' => '左寄せ',
        'Align Center' => '中央揃え',
        'Align Right' => '右寄せ',
        'Justify' => '両端揃え',
        'Header' => 'ヘッダー',
        'Indent' => '字下げ',
        'Outdent' => '字下げ解除',
        'Create an Unordered List' => '番号なしリストの作成',
        'Create an Ordered List' => '番号付きリストの作成',
        'HTML Link' => 'HTMLリンク',
        'Insert Image' => '画像の挿入',
        'CTRL' => 'CTRL',
        'SHIFT' => 'SHIFT',
        'Undo' => '元に戻す',
        'Redo' => 'やり直し',
        'OTRS Daemon is not running.' => 'OTRSデーモンが起動していません。',
        'Can\'t contact registration server. Please try again later.' => '登録サーバに接続できません。しばらくしてから再試行してください。',
        'No content received from registration server. Please try again later.' =>
            '登録サーバから受信した内容がありません。しばらくしてから再試行してください。',
        'Problems processing server result. Please try again later.' => 'サーバから受信した内容を処理しているときに問題が発生しました。再試行してください。',
        'Username and password do not match. Please try again.' => 'ユーザー名とパスワードが一致しません。再試行してください。',
        'The selected process is invalid!' => '選択されたプロセスは正しくありません。',
        'Upgrade to %s now!' => '現在 アップグレード %s !',
        '%s Go to the upgrade center %s' => '%s upgrade centerへ %s',
        'The license for your %s is about to expire. Please make contact with %s to renew your contract!' =>
            'あなたの %s のライセンスはもうすぐ失効します。　 %s にお問い合わせいただき更新を行ってください。',
        'An update for your %s is available, but there is a conflict with your framework version! Please update your framework first!' =>
            ' %s のアップデートが利用可能です。しかしあなたのフレームワークのバージョンとコンフリクトしていますので、事前にフレームワークの更新を行ってください。',
        'Your system was successfully upgraded to %s.' => 'システムは正常に%sにアップグレードされました。',
        'There was a problem during the upgrade to %s.' => '%sにアップグレード中に問題が発生しました。',
        '%s was correctly reinstalled.' => '%s は現在再インストールされました',
        'There was a problem reinstalling %s.' => '%s をインストール中に問題が発生しました',
        'Your %s was successfully updated.' => '%sは正常に更新されました。',
        'There was a problem during the upgrade of %s.' => '%sのアップグレード中に問題が発生しました。',
        '%s was correctly uninstalled.' => '%sは正しくアンインストールされました。',
        'There was a problem uninstalling %s.' => '%sのアンインストール時に問題が発生しました。',

        # Template: AAACalendar
        'New Year\'s Day' => '元日',
        'International Workers\' Day' => '国際労働者の日',
        'Christmas Eve' => 'クリスマスイブ',
        'First Christmas Day' => 'ファースト・クリスマスデー',
        'Second Christmas Day' => 'セカンド・クリスマスデー',
        'New Year\'s Eve' => '大晦日',

        # Template: AAAGenericInterface
        'OTRS as requester' => 'リクエスターとしてのOTRS',
        'OTRS as provider' => 'プロバイダーとしてのOTRS',
        'Webservice "%s" created!' => 'Webサービス "%s" を作成しました。',
        'Webservice "%s" updated!' => 'Webサービス "%s" を更新しました。',

        # Template: AAAMonth
        'Jan' => '1月',
        'Feb' => '2月',
        'Mar' => '3月',
        'Apr' => '4月',
        'May' => '5月',
        'Jun' => '6月',
        'Jul' => '7月',
        'Aug' => '8月',
        'Sep' => '9月',
        'Oct' => '10月',
        'Nov' => '11月',
        'Dec' => '12月',
        'January' => '1月',
        'February' => '2月',
        'March' => '3月',
        'April' => '4月',
        'May_long' => '5月',
        'June' => '6月',
        'July' => '7月',
        'August' => '8月',
        'September' => '9月',
        'October' => '10月',
        'November' => '11月',
        'December' => '12月',

        # Template: AAAPreferences
        'Preferences updated successfully!' => '個人設定を更新しました',
        'User Profile' => 'ユーザーのプロファイル',
        'Email Settings' => 'メール設定',
        'Other Settings' => 'その他の設定',
        'Notification Settings' => '通知設定',
        'Change Password' => 'パスワード変更',
        'Current password' => '現在のパスワード',
        'New password' => '新しいパスワード',
        'Verify password' => '新しいパスワード(確認用)',
        'Spelling Dictionary' => 'スペルチェック辞書',
        'Default spelling dictionary' => '既定のスペルチェック辞書',
        'Max. shown Tickets a page in Overview.' => '一覧時のチケット表示最大数',
        'The current password is not correct. Please try again!' => 'パスワードが正しくありません。再入力してください。',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'パスワードを更新できません。新しいパスワードが一致しません。再入力してください。',
        'Can\'t update password, it contains invalid characters!' => 'パスワードを更新できません。無効な文字が含まれています。',
        'Can\'t update password, it must be at least %s characters long!' =>
            'パスワードを更新できません。%s文字以上必要です。',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            'パスワードを更新できません。英語の大文字小文字が2文字ずつ以上必要です。',
        'Can\'t update password, it must contain at least 1 digit!' => 'パスワードを更新できません。数字が1文字以上必要です。',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'パスワードを更新できません。アルファベットが2文字以上必要です。',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'パスワードを更新できません。このパスワードは既に使用されています。新しいものを入力してください。',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            'CSVファイル（統計と検索）で使用される区切り文字を選択します。ここで区切り文字を選択しない場合、あなたの言語のデフォルトの区切り文字が使用されます。',
        'CSV Separator' => 'CSV区切り文字',

        # Template: AAATicket
        'Status View' => 'ステータス一覧',
        'Service View' => 'サービス ビュー',
        'Bulk' => '一括',
        'Lock' => 'ロック',
        'Unlock' => 'ロック解除',
        'History' => '履歴',
        'Zoom' => 'ズーム',
        'Age' => '経過時間',
        'Bounce' => 'バウンス',
        'Forward' => '転送',
        'From' => '差出人',
        'To' => '宛先',
        'Cc' => 'Cc',
        'Bcc' => 'Bcc',
        'Subject' => '表題',
        'Move' => '移転',
        'Queue' => 'キュー',
        'Queues' => 'キュー',
        'Priority' => '優先度',
        'Priorities' => '優先度',
        'Priority Update' => '優先度更新',
        'Priority added!' => '優先度を追加しました。',
        'Priority updated!' => '優先度を更新しました。',
        'Signature added!' => '署名を追加しました。',
        'Signature updated!' => '署名を更新しました。',
        'SLA' => 'SLA',
        'Service Level Agreement' => 'サービスレベル契約（SLA）',
        'Service Level Agreements' => 'サービスレベル契約（SLA）',
        'Service' => 'サービス',
        'Services' => 'サービス',
        'State' => '状態',
        'States' => '状態',
        'Status' => 'ステータス',
        'Statuses' => 'ステータス',
        'Ticket Type' => 'チケットタイプ',
        'Ticket Types' => 'チケットタイプ',
        'Compose' => '作成',
        'Pending' => '保留',
        'Owner' => '所有者',
        'Owner Update' => '所有者更新',
        'Responsible' => '責任者',
        'Responsible Update' => '責任者更新',
        'Sender' => '送信者',
        'Article' => '記事',
        'Ticket' => 'チケット',
        'Createtime' => '作成日時',
        'plain' => '書式なし',
        'Email' => 'メール',
        'email' => 'メール',
        'Close' => '完了',
        'Action' => '操作',
        'Attachment' => '添付ファイル',
        'Attachments' => '添付ファイル',
        'This message was written in a character set other than your own.' =>
            'このメッセージは現在使用中の文字コードではないもので書かれています。',
        'If it is not displayed correctly,' => '正しく表示されない場合、',
        'This is a' => 'これは',
        'to open it in a new window.' => '新規ウィンドウを開く',
        'This is a HTML email. Click here to show it.' => 'これはHTMLメールです。クリックで見れます。',
        'Free Fields' => '自由領域',
        'Merge' => '結合',
        'merged' => '結合済',
        'closed successful' => '完了 (成功)',
        'closed unsuccessful' => '完了 (不成功)',
        'Locked Tickets Total' => 'ロック済チケット合計',
        'Locked Tickets Reminder Reached' => 'ロック済チケット時間切れ',
        'Locked Tickets New' => 'ロック済チケット新規',
        'Responsible Tickets Total' => '責任者チケット合計',
        'Responsible Tickets New' => '責任者チケット新規',
        'Responsible Tickets Reminder Reached' => '責任者チケット時間切れ',
        'Watched Tickets Total' => '監視チケット合計',
        'Watched Tickets New' => '監視チケット新規',
        'Watched Tickets Reminder Reached' => '監視チケット時間切れ',
        'All tickets' => '全てのチケット',
        'Available tickets' => '利用可能チケット',
        'Escalation' => 'エスカレーション',
        'last-search' => '最終検索',
        'QueueView' => 'キュー一覧',
        'Ticket Escalation View' => 'チケットエスカレーション一覧',
        'Message from' => 'Message from',
        'End message' => 'End message',
        'Forwarded message from' => 'Forwarded message from',
        'End forwarded message' => 'End forwarded message',
        'Bounce Article to a different mail address' => '異なるメールアドレスに記事をバウンス',
        'Reply to note' => 'メモに返信',
        'new' => '新規',
        'open' => '対応中',
        'Open' => '対応中',
        'Open tickets' => '対応中チケット',
        'closed' => '完了',
        'Closed' => '完了',
        'Closed tickets' => '完了チケット',
        'removed' => '削除',
        'pending reminder' => '保留 (期限付)',
        'pending auto' => '保留 (自動)',
        'pending auto close+' => '保留 (自動完了＋)',
        'pending auto close-' => '保留 (自動完了－)',
        'email-external' => 'メール-外部',
        'email-internal' => 'メール-内部',
        'note-external' => 'メモ-外部',
        'note-internal' => 'メモ-内部',
        'note-report' => 'メモ-報告',
        'phone' => '電話',
        'sms' => 'SMS',
        'webrequest' => 'WEB要求',
        'lock' => 'ロック',
        'unlock' => 'ロック解除',
        'very low' => '最低',
        'low' => '低',
        'normal' => '中',
        'high' => '高',
        'very high' => '最高',
        '1 very low' => '1 最低',
        '2 low' => '2 低',
        '3 normal' => '3 中',
        '4 high' => '4 高',
        '5 very high' => '5 最高',
        'auto follow up' => '自動フォローアップ',
        'auto reject' => '自動リジェクト',
        'auto remove' => '自動除去',
        'auto reply' => '自動返答',
        'auto reply/new ticket' => '自動返答/新規チケット',
        'Create' => '作成',
        'Answer' => '回答',
        'Phone call' => '電話応答',
        'Ticket "%s" created!' => 'チケット "%s" を作成しました。',
        'Ticket Number' => 'チケット番号',
        'Ticket Object' => 'チケット対象',
        'No such Ticket Number "%s"! Can\'t link it!' => 'チケット番号 "%s" がありません。連結できません。',
        'You don\'t have write access to this ticket.' => 'このチケットに対する書き込み権限がありません。',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'この操作を行うには担当者または責任者になる必要があります。',
        'Please change the owner first.' => '最初に担当者を変更してください。',
        'Ticket selected.' => 'チケットが選択されました。',
        'Ticket is locked by another agent.' => 'チケットは他の担当者によってロックされています。',
        'Ticket locked.' => 'チケットがロックされました。',
        'Don\'t show closed Tickets' => '完了チケットを非表示',
        'Show closed Tickets' => '完了チケットを表示',
        'New Article' => '新規項目',
        'Unread article(s) available' => '未読の記事があります',
        'Remove from list of watched tickets' => '監視チケットリストから削除',
        'Add to list of watched tickets' => '監視チケットリストに追加',
        'Email-Ticket' => 'メールチケット',
        'Create new Email Ticket' => '新規メールチケット作成',
        'Phone-Ticket' => '電話チケット',
        'Search Tickets' => 'チケット検索',
        'Customer Realname' => '顧客ユーザの氏名',
        'Customer History' => '顧客履歴',
        'Edit Customer Users' => '顧客ユーザー編集',
        'Edit Customer' => '顧客を編集',
        'Bulk Action' => '一括処理',
        'Bulk Actions on Tickets' => 'チケットへの一括処理',
        'Send Email and create a new Ticket' => 'メール送信と新規チケット作成',
        'Create new Email Ticket and send this out (Outbound)' => '新規メールチケットを作成し送信（外部）',
        'Create new Phone Ticket (Inbound)' => '新規電話チケット作成（受信）',
        'Address %s replaced with registered customer address.' => 'アドレス %s は登録された顧客のアドレスに置換されました。',
        'Customer user automatically added in Cc.' => '顧客ユーザーが自動的にCcに追加されました。',
        'Overview of all open Tickets' => '全対応中チケット一覧',
        'Locked Tickets' => 'ロック済チケット',
        'My Locked Tickets' => '担当のロック済チケット',
        'My Watched Tickets' => '担当の監視チケット',
        'My Responsible Tickets' => '担当の責任者チケット',
        'Watched Tickets' => '監視チケット',
        'Watched' => '監視中',
        'Watch' => '監視',
        'Unwatch' => '監視解除',
        'Lock it to work on it' => '作業するためチケットをロック',
        'Unlock to give it back to the queue' => 'キューに戻すためチケットをロック解除',
        'Show the ticket history' => 'チケットの履歴を表示',
        'Print this ticket' => 'このチケットを印刷',
        'Print this article' => 'この記事を印刷',
        'Split' => '分割',
        'Split this article' => 'この記事を分割',
        'Forward article via mail' => 'メール経由で記事を転送',
        'Change the ticket priority' => 'チケットの優先度を変更',
        'Change the ticket free fields!' => 'チケットの自由領域を変更！',
        'Link this ticket to other objects' => 'このチケットを他のオブジェクトへリンク',
        'Change the owner for this ticket' => 'このチケットの所有者を変更',
        'Change the  customer for this ticket' => 'このチケットの顧客を変更',
        'Add a note to this ticket' => 'このチケットにメモを追加',
        'Merge into a different ticket' => '別のチケットに結合',
        'Set this ticket to pending' => 'このチケットを保留に設定',
        'Close this ticket' => 'このチケットを完了',
        'Look into a ticket!' => 'チケットを閲覧する',
        'Delete this ticket' => 'このチケットを削除',
        'Mark as Spam!' => '迷惑メールにする',
        'My Queues' => '担当キュー',
        'Shown Tickets' => 'チケットを表示',
        'Shown Columns' => '列を表示',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'メールのチケット番号 "<OTRS_TICKET>" を "<OTRS_MERGE_TO_TICKET>" と結合しました。',
        'Ticket %s: first response time is over (%s)!' => 'チケット %s: 初回応答期限切れです(%s)。',
        'Ticket %s: first response time will be over in %s!' => 'チケット %s: 初回応答期限を超えそうです %s。',
        'Ticket %s: update time is over (%s)!' => 'チケット %s: 更新期限切れです (%s)。',
        'Ticket %s: update time will be over in %s!' => 'チケット %s: 更新期限を超えそうです %s。',
        'Ticket %s: solution time is over (%s)!' => 'チケット %s: 解決期限切れです (%s)。',
        'Ticket %s: solution time will be over in %s!' => 'チケット %s: 解決期限を超えそうです %s。',
        'There are more escalated tickets!' => '更にエスカレーションされたチケットがあります。',
        'Plain Format' => '書式なし',
        'Reply All' => '全員に返信',
        'Direction' => '方向',
        'New ticket notification' => '新規チケット通知',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            '新規チケットが担当キューに入ったら通知を送信',
        'Send new ticket notifications' => '新規チケット通知を送信',
        'Ticket follow up notification' => 'チケット・フォローアップ通知',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            '自分が所有者であるか、自分の担当キューに存在しロック解除されているチケットに対して顧客がフォローアップした場合に通知を送信',
        'Send ticket follow up notifications' => 'チケット・フォローアップ通知の送信',
        'Ticket lock timeout notification' => 'ロック期限切れチケット通知',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'チケットがシステムにロック解除されたら通知を送信',
        'Send ticket lock timeout notifications' => 'ロック期限切れ通知を送信',
        'Ticket move notification' => '移転チケット通知',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            '移転されたチケットが担当キューに入ったら通知を送信',
        'Send ticket move notifications' => '移転チケット通知を送信',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            'お気に入りのキューを選択。有効にした場合、これらのキューについてメールで通知を受信します',
        'Custom Queue' => 'カスタムキュー',
        'QueueView refresh time' => 'キュー一覧自動更新間隔',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            '有効にした場合、キュー一覧は自動で指定時間後に更新されます',
        'Refresh QueueView after' => 'この時間が経過後、キュー一覧を更新',
        'Screen after new ticket' => '新規チケット作成後の画面',
        'Show this screen after I created a new ticket' => '新規チケット作成後に表示する画面',
        'Closed Tickets' => '完了チケット',
        'Show closed tickets.' => '完了チケットを見る',
        'Max. shown Tickets a page in QueueView.' => 'キュー一覧での1ページ毎のチケット数',
        'Ticket Overview "Small" Limit' => 'チケット一覧(S)の表示数',
        'Ticket limit per page for Ticket Overview "Small"' => 'チケット一覧(S)での1ページ毎のチケット数',
        'Ticket Overview "Medium" Limit' => 'チケット一覧(M)の表示数',
        'Ticket limit per page for Ticket Overview "Medium"' => 'チケット一覧(M)の1ページ毎の表示数',
        'Ticket Overview "Preview" Limit' => 'チケット一覧(プレビュー)の表示数',
        'Ticket limit per page for Ticket Overview "Preview"' => 'チケット一覧(プレビュー)の1ページ毎の表示数',
        'Ticket watch notification' => '監視チケット通知',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            'チケット所有者が受け取る通知と同じものを監視チケットにも送信',
        'Send ticket watch notifications' => '監視チケット通知を送信',
        'Out Of Office Time' => '外出中',
        'New Ticket' => '新規チケット',
        'Create new Ticket' => '新規チケット作成',
        'Customer called' => '顧客が電話をかけてきた',
        'phone call' => '電話応答',
        'Phone Call Outbound' => '電話応答発信',
        'Phone Call Inbound' => '電話応答着信',
        'Reminder Reached' => '保留期限切れ',
        'Reminder Tickets' => '保留期限切れチケット',
        'Escalated Tickets' => 'エスカレーションチケット',
        'New Tickets' => '新規チケット',
        'Open Tickets / Need to be answered' => '対応中チケット／要対応',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            '全対応中チケット。着手済みだが応答が必要です',
        'All new tickets, these tickets have not been worked on yet' => '全新規チケット。まだ着手されていません',
        'All escalated tickets' => '全エスカレーションチケット',
        'All tickets with a reminder set where the reminder date has been reached' =>
            '全保留チケット中、期限切れのもの',
        'Archived tickets' => 'アーカイブされたチケット',
        'Unarchived tickets' => 'アーカイブされていないチケット',
        'Ticket Information' => 'チケット情報',
        'including subqueues' => 'サブキューを含む',
        'excluding subqueues' => 'サブキューを除く',

        # Template: AAAWeekDay
        'Sun' => '日',
        'Mon' => '月',
        'Tue' => '火',
        'Wed' => '水',
        'Thu' => '木',
        'Fri' => '金',
        'Sat' => '土',

        # Template: AdminACL
        'ACL Management' => 'ACL管理',
        'Filter for ACLs' => 'ACLでフィルタ',
        'Filter' => 'フィルタ',
        'ACL Name' => 'ACL名',
        'Actions' => '操作',
        'Create New ACL' => '新しいACLを作成',
        'Deploy ACLs' => 'ACLをデプロイ',
        'Export ACLs' => 'ACLをエクスポート',
        'Configuration import' => '設定のインポート',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            'ここにACLをインポートするための設定ファイルをアップロードできます。ファイルはACLエディタモジュールによってエクスポートされるような.ymlフォーマットである必要があります。',
        'This field is required.' => 'この領域は必須です。',
        'Overwrite existing ACLs?' => '既存のACLを上書きしますか？',
        'Upload ACL configuration' => 'ACL設定を更新',
        'Import ACL configuration(s)' => 'ACL設定をインポート',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            '新規のACLは、他のシステムからエクスポートしたACLをインポートするか、完全に新規で作成するかのいずれかの方法で作成できます。',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            '',
        'ACLs' => 'ACL',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            '',
        'ACL name' => 'ACL名',
        'Validity' => '有効/無効',
        'Copy' => 'コピー',
        'No data found.' => 'データがありません',

        # Template: AdminACLEdit
        'Edit ACL %s' => 'ACLの %s を編集',
        'Go to overview' => '一覧に戻る',
        'Delete ACL' => 'ACLを削除',
        'Delete Invalid ACL' => '無効なACLを削除',
        'Match settings' => '条件設定',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            '',
        'Change settings' => '変更設定',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            '',
        'Check the official' => '公式サイトをチェック',
        'documentation' => 'マニュアル',
        'Show or hide the content' => '内容の表示・非表示',
        'Edit ACL information' => 'ACLの情報を編集',
        'Stop after match' => '一致後に停止',
        'Edit ACL structure' => 'ACLの構造を編集',
        'Save' => '保存',
        'or' => 'または',
        'Save and finish' => '保存して終了',
        'Do you really want to delete this ACL?' => 'このACLを本当に削除しますか？',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?' =>
            'このアイテムは、配下にサブアイテムを保有しています。このアイテムをサブアイテムと共に削除してもよろしいですか？',
        'An item with this name is already present.' => 'この名前の項目は既に存在します。',
        'Add all' => '全てを追加',
        'There was an error reading the ACL data.' => 'ACLデータの読み込み時にエラーが発生しました。',

        # Template: AdminACLNew
        'Create a new ACL by submitting the form data. After creating the ACL, you will be able to add configuration items in edit mode.' =>
            '',

        # Template: AdminAttachment
        'Attachment Management' => '添付ファイル管理',
        'Add attachment' => '添付ファイルを追加',
        'List' => 'リスト',
        'Download file' => 'ダウンロードファイル',
        'Delete this attachment' => 'この添付ファイルを削除',
        'Add Attachment' => '添付ファイルを追加',
        'Edit Attachment' => '添付ファイルを編集',

        # Template: AdminAutoResponse
        'Auto Response Management' => '自動応答管理',
        'Add auto response' => '自動応答追加',
        'Add Auto Response' => '自動応答追加',
        'Edit Auto Response' => '自動応答編集',
        'Response' => '応答',
        'Auto response from' => '自動応答差出人',
        'Reference' => '用例',
        'You can use the following tags' => '次のタグを使用できます',
        'To get the first 20 character of the subject.' => '表題の最初の20文字を取得',
        'To get the first 5 lines of the email.' => 'メールの最初の5行を取得',
        'To get the realname of the sender (if given).' => '送信者の実名を取得(可能な場合)',
        'To get the article attribute' => '記事の属性を取得',
        ' e. g.' => '例',
        'Options of the current customer user data' => '現在の顧客ユーザーデータのオプション',
        'Ticket owner options' => 'チケット所有者オプション',
        'Ticket responsible options' => 'チケット責任者オプション',
        'Options of the current user who requested this action' => '操作を要求された現在のユーザーのオプション',
        'Options of the ticket data' => 'チケットデータのオプション',
        'Options of ticket dynamic fields internal key values' => 'チケットのダイナミック・フィールドの内部キー値のオプション',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            'チケットのダイナミック・フィールドの表示値のオプション。ドロップダウンまたは複数選択領域で利用可能',
        'Config options' => '設定オプション',
        'Example response' => '応答例',

        # Template: AdminCloudServiceSupportDataCollector
        'Cloud Service Management' => 'クラウドサービス管理',
        'Support Data Collector' => 'サポート情報コレクター',
        'Support data collector' => 'サポート情報コレクター',
        'Hint' => 'ヒント',
        'Currently support data is only shown in this system.' => '',
        'It is highly recommended to send this data to OTRS Group in order to get better support.' =>
            '',
        'Configuration' => '設定',
        'Send support data' => 'サポート情報の送信',
        'This will allow the system to send additional support data information to OTRS Group.' =>
            '',
        'System Registration' => 'システム登録',
        'To enable data sending, please register your system with OTRS Group or update your system registration information (make sure to activate the \'send support data\' option.)' =>
            '',
        'Register this System' => 'このシステムをサポート登録する',
        'System Registration is disabled for your system. Please check your configuration.' =>
            'システムのサポート登録機能が無効になっています。設定をご確認ください。',

        # Template: AdminCloudServices
        'System registration is a service of OTRS Group, which provides a lot of advantages!' =>
            'OTRSグループへのシステムのサポート登録により、多くのメリットが提供されます。',
        'Please note that the use of OTRS cloud services requires the system to be registered.' =>
            '',
        'Register this system' => 'このシステムをサポート登録する',
        'Here you can configure available cloud services that communicate securely with %s.' =>
            '',
        'Available Cloud Services' => '利用可能なクラウドサービス',
        'Upgrade to %s' => '%s にアップグレードする。',

        # Template: AdminCustomerCompany
        'Customer Management' => '顧客管理',
        'Wildcards like \'*\' are allowed.' => 'ワイルドカード（*）が使用できます。',
        'Add customer' => '顧客を追加',
        'Select' => '選択',
        'Please enter a search term to look for customers.' => '顧客を検索するための条件を入力してください',
        'Add Customer' => '顧客を追加',

        # Template: AdminCustomerUser
        'Customer User Management' => '顧客ユーザー管理',
        'Back to search results' => '検索結果に戻る',
        'Add customer user' => '顧客ユーザーを追加',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            '顧客ユーザーは顧客履歴の使用と顧客パネルからログインするために必要です。',
        'Last Login' => '最終ログイン',
        'Login as' => 'このアドレスとしてログイン',
        'Switch to customer' => '顧客に切り替え',
        'Add Customer User' => '顧客ユーザーを追加',
        'Edit Customer User' => '顧客ユーザーを編集',
        'This field is required and needs to be a valid email address.' =>
            'ここは必須領域で、有効なメールアドレスである必要があります。',
        'This email address is not allowed due to the system configuration.' =>
            'このメールアドレスはシステム設定により許可されていません。',
        'This email address failed MX check.' => 'このメールアドレスのMXレコード検査に失敗しました',
        'DNS problem, please check your configuration and the error log.' =>
            'DNS上の問題が発生しました。設定とエラーログを確認してください。',
        'The syntax of this email address is incorrect.' => 'このメールアドレスは正しい形式ではありません',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => '顧客-グループ関連性管理',
        'Notice' => '通知',
        'This feature is disabled!' => 'この機能は無効にされています。',
        'Just use this feature if you want to define group permissions for customers.' =>
            '顧客のグループ権限を設定する場合のみこの機能を使用できます。',
        'Enable it here!' => '有効にする',
        'Edit Customer Default Groups' => '顧客の規定グループの編集',
        'These groups are automatically assigned to all customers.' => 'このグループは自動的にすべての顧客に割り当てられます。',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            '',
        'Filter for Groups' => 'グループでフィルタ',
        'Just start typing to filter...' => 'フィルタリングするには入力してください...',
        'Select the customer:group permissions.' => '顧客：グループ権限を選択',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            '何も選択しない場合、このグループは権限がありません (チケットは顧客が使用できません)',
        'Search Results' => '検索結果',
        'Customers' => '顧客',
        'No matches found.' => '一致しませんでした。',
        'Groups' => 'グループ',
        'Change Group Relations for Customer' => '顧客に対するグループの関連性を変更',
        'Change Customer Relations for Group' => 'グループに対する顧客の関連性を変更',
        'Toggle %s Permission for all' => '%s の全権限を切り替え',
        'Toggle %s permission for %s' => '%s の %s 権限を切り替え',
        'Customer Default Groups:' => '顧客の規定グループ:',
        'No changes can be made to these groups.' => '変更はこれらのグループに行うことができます。',
        'ro' => '読取り',
        'Read only access to the ticket in this group/queue.' => 'このグループ／キューのチケットを読み取り専用にします。',
        'rw' => '読書き',
        'Full read and write access to the tickets in this group/queue.' =>
            'このグループ／キューのチケットに読み書きを含めた全権限を付与します。',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => '顧客-サービス関連性管理',
        'Edit default services' => '既定のサービス編集',
        'Filter for Services' => 'サービスでフィルタ',
        'Allocate Services to Customer' => 'サービスを顧客に割り当て',
        'Allocate Customers to Service' => '顧客をサービスに割り当て',
        'Toggle active state for all' => 'すべての有効な状態を切り替え',
        'Active' => '有効',
        'Toggle active state for %s' => '有効な状態 %s を切り替え',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'ダイナミック・フィールド管理',
        'Add new field for object' => 'オブジェクトに新規領域を追加',
        'To add a new field, select the field type from one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => 'ダイナミック・フィールド一覧',
        'Dynamic fields per page' => 'ページ毎のダイナミック・フィールド',
        'Label' => 'ラベル',
        'Order' => '順序',
        'Object' => '対象',
        'Delete this field' => 'この領域を削除',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            'この動的領域を本当に削除しますか？全てのデータが失われます。',
        'Delete field' => '動的領域',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => 'ダイナミック・フィールド',
        'Field' => '領域',
        'Go back to overview' => '一覧に戻る',
        'General' => 'ジェネラル',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            'この領域は必須であり、値はアルファベットと数値のみでなければなりません。',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            '一意でなければならず、アルファベットと数値のみ受け付けます。',
        'Changing this value will require manual changes in the system.' =>
            'この値の変更はシステム内で手動で行う必要があります。',
        'This is the name to be shown on the screens where the field is active.' =>
            'これは領域がアクティブである画面で表示される名前です。',
        'Field order' => '領域の順序',
        'This field is required and must be numeric.' => 'この領域は必須かつ数値でなければなりません。',
        'This is the order in which this field will be shown on the screens where is active.' =>
            'これはこの領域がアクティブである画面で表示される順序です。',
        'Field type' => '領域タイプ',
        'Object type' => 'オブジェクトタイプ',
        'Internal field' => '内部領域',
        'This field is protected and can\'t be deleted.' => 'この領域は保護されており、削除できません。',
        'Field Settings' => '領域設定',
        'Default value' => 'デフォルト値',
        'This is the default value for this field.' => 'これはこの領域に対するデフォルト値です。',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => 'デフォルトの日時差',
        'This field must be numeric.' => 'この領域は数値でなければなりません。',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '領域のデフォルト値を計算するための現時点との時間差  (秒単位)。  （例: 3600, -60）',
        'Define years period' => '年の期間を定義',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '',
        'Years in the past' => '過去の年数',
        'Years in the past to display (default: 5 years).' => '表示する過去の年数(デフォルト:5年)。',
        'Years in the future' => '未来の年数',
        'Years in the future to display (default: 5 years).' => '表示する未来の年数(デフォルト:5年)。',
        'Show link' => 'リンクを表示',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '',
        'Restrict entering of dates' => '日付入力の制限',
        'Here you can restrict the entering of dates of tickets.' => '本項目でチケットの日付入力の制限できます',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => '選択肢',
        'Key' => '鍵',
        'Value' => '値',
        'Remove value' => '値を削除',
        'Add value' => '値を追加',
        'Add Value' => '値を追加',
        'Add empty value' => '空の値の追加',
        'Activate this option to create an empty selectable value.' => '本項目を有効にすれば空の選択可能項目が作成できます。',
        'Tree View' => 'ツリー表示',
        'Activate this option to display values as a tree.' => '本項目を有効にすれば、値をツリー形式で表示できます。',
        'Translatable values' => '翻訳可能な値',
        'If you activate this option the values will be translated to the user defined language.' =>
            'このオプションを有効にすると、値がユーザーの定義した言語に翻訳されます。',
        'Note' => 'メモ',
        'You need to add the translations manually into the language translation files.' =>
            '翻訳を手動で言語翻訳ファイルに追加する必要があります。',

        # Template: AdminDynamicFieldText
        'Number of rows' => '行数',
        'Specify the height (in lines) for this field in the edit mode.' =>
            '編集画面におけるこの領域の高さ(列数)を指定します。',
        'Number of cols' => '列数',
        'Specify the width (in characters) for this field in the edit mode.' =>
            '編集画面におけるこの領域の幅(文字数)を指定します。',
        'Check RegEx' => '正規表現をチェック',
        'Here you can specify a regular expression to check the value. The regex will be executed with the modifiers xms.' =>
            '本項目で入力値に対する正規表現を設定可能です。　正規表現は モディファイXMSとともに実行されます。',
        'RegEx' => '正規表現',
        'Invalid RegEx' => '無効な正規表現',
        'Error Message' => 'エラーメッセージ',
        'Add RegEx' => '正規表現を追加',

        # Template: AdminEmail
        'Admin Notification' => '管理者通知',
        'With this module, administrators can send messages to agents, group or role members.' =>
            '本モジュールにて、管理者からエージェント、グループ、ロールメンバーへメッセージを送信することが可能です。',
        'Create Administrative Message' => '管理者メッセージを作成',
        'Your message was sent to' => '送信されたメッセージ',
        'Send message to users' => 'ユーザーにメッセージを送信',
        'Send message to group members' => 'グループのメンバーにメッセージを送信',
        'Group members need to have permission' => 'グループのメンバーは権限を持っている必要があります',
        'Send message to role members' => 'ロールのメンバーにメッセージを送信',
        'Also send to customers in groups' => 'さらにグループの顧客にも送信',
        'Body' => '本文',
        'Send' => '送信',

        # Template: AdminGenericAgent
        'Generic Agent' => '管理用ジョブ',
        'Add job' => 'ジョブ追加',
        'Last run' => '最終実行',
        'Run Now!' => '今すぐ実行！',
        'Delete this task' => 'このタスクを削除',
        'Run this task' => 'このタスクを実行',
        'Job Settings' => 'ジョブ設定',
        'Job name' => 'ジョブ名',
        'The name you entered already exists.' => '入力された名前は既に存在します。',
        'Toggle this widget' => 'このウィジェットを切り替え',
        'Automatic execution (multiple tickets)' => '自動実行(複数チケット)',
        'Execution Schedule' => '実行スケジュール',
        'Schedule minutes' => 'スケジュール 分',
        'Schedule hours' => 'スケジュール 時',
        'Schedule days' => 'スケジュール 日',
        'Currently this generic agent job will not run automatically.' =>
            '現在この一般担当者のジョブは自動実行されません。',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            '自動実行を有効にするには、分、時間、日から少なくとも1つの値を選択して下さい。',
        'Event based execution (single ticket)' => 'イベントベースでの実行 (単一チケット)',
        'Event Triggers' => 'イベントトリガー',
        'List of all configured events' => '設定された全てのイベントの一覧',
        'Delete this event' => 'このイベントを削除',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            '',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            '',
        'Do you really want to delete this event trigger?' => 'このイベントトリガーを本当に削除しますか？',
        'Add Event Trigger' => 'イベントトリガーを追加',
        'Add Event' => 'イベントを追加',
        'To add a new event select the event object and event name and click on the "+" button' =>
            '',
        'Duplicate event.' => 'イベントを複製',
        'This event is already attached to the job, Please use a different one.' =>
            '',
        'Delete this Event Trigger' => 'このイベントトリガーを削除',
        'Remove selection' => '選択項目を削除',
        'Select Tickets' => 'チケットを選択',
        '(e. g. 10*5155 or 105658*)' => '(例 10*5144 または 105658*)',
        '(e. g. 234321)' => '(例 234321)',
        'Customer login' => '顧客ログイン名',
        '(e. g. U5150)' => '(例 U5150)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '記事内全文検索 (例 "Mar*in" または "Baue*")',
        'Agent' => '担当者',
        'Ticket lock' => 'チケットロック',
        'Create times' => '作成時間',
        'No create time settings.' => '作成時間を指定しない',
        'Ticket created' => 'チケットを作成したのが',
        'Ticket created between' => 'チケットを作成したのがこの期間内',
        'Last changed times' => '最終変更時間',
        'No last changed time settings.' => '最終変更時間を指定しない',
        'Ticket last changed' => 'チケットが最終更新された',
        'Ticket last changed between' => 'チケットの最終更新がこの期間内',
        'Change times' => '変更時間',
        'No change time settings.' => '変更時間設定を指定しない',
        'Ticket changed' => 'チケットを変更しました',
        'Ticket changed between' => 'チケットの変更がこの期間の間',
        'Close times' => '完了時間',
        'No close time settings.' => '完了時間を指定しない',
        'Ticket closed' => 'チケットを完了したのが',
        'Ticket closed between' => 'チケットを完了したのがこの期間内',
        'Pending times' => '保留時間',
        'No pending time settings.' => '保留時間を指定しない',
        'Ticket pending time reached' => '保留期限切れが',
        'Ticket pending time reached between' => '保留期限切れがこの期間内',
        'Escalation times' => 'エスカレーション時間',
        'No escalation time settings.' => 'エスカレーション時間を指定しない',
        'Ticket escalation time reached' => 'エスカレーション時間到達が',
        'Ticket escalation time reached between' => 'エスカレーション時間がこの期間内',
        'Escalation - first response time' => 'エスカレーション - 初回応答期限',
        'Ticket first response time reached' => 'チケット初回応答期限が',
        'Ticket first response time reached between' => 'チケット初回応答期限がこの期間内',
        'Escalation - update time' => 'エスカレーション - 更新期限',
        'Ticket update time reached' => 'チケット更新期限が',
        'Ticket update time reached between' => 'チケット更新期限がこの期間内',
        'Escalation - solution time' => 'エスカレーション - 解決期限',
        'Ticket solution time reached' => 'チケット解決期限が',
        'Ticket solution time reached between' => 'チケット解決期限がこの期間内',
        'Archive search option' => '書庫検索オプション',
        'Update/Add Ticket Attributes' => 'チケット属性の更新/追加',
        'Set new service' => '新しいサービスを設定',
        'Set new Service Level Agreement' => '新しいサービスレベル契約（SLA）を設定',
        'Set new priority' => '新しい優先度を設定',
        'Set new queue' => '新しいキューを設定',
        'Set new state' => '新しい状態を設定',
        'Pending date' => '保留日時',
        'Set new agent' => '新しい担当者を設定',
        'new owner' => '新しい所有者',
        'new responsible' => '新しい責任者',
        'Set new ticket lock' => '新しいチケットロックを設定',
        'New customer' => '新しい顧客',
        'New customer ID' => '新しい顧客ID',
        'New title' => '新しいタイトル',
        'New type' => '新しいタイプ',
        'New Dynamic Field Values' => '動的領域の値を設定',
        'Archive selected tickets' => '書庫の選択済みチケット',
        'Add Note' => 'メモを追加',
        'Time units' => '時間の単位',
        'Execute Ticket Commands' => 'チケットコマンドを実行',
        'Send agent/customer notifications on changes' => '変更を担当者／顧客に通知する',
        'CMD' => 'コマンド',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'このコマンドが実行されます。チケット番号は ARG[0] 、チケットIDは ARG[1] です。',
        'Delete tickets' => 'チケット削除',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '警告: 影響を受ける全てのチケットがデータベースから削除されます。復元することはできません。',
        'Execute Custom Module' => 'カスタムモジュールを実行',
        'Param %s key' => 'パラメータキー %s',
        'Param %s value' => 'パラメータ値 %s',
        'Save Changes' => '変更を保存',
        'Results' => '検索結果',
        '%s Tickets affected! What do you want to do?' => '%s チケットは影響を受けます。どうしますか？',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '警告: 削除オプションを使用します。削除された全てのチケットは消失します。',
        'Warning: There are %s tickets affected but only %s may be modified during one job execution!' =>
            '',
        'Edit job' => 'ジョブ編集',
        'Run job' => 'ジョブ実行',
        'Affected Tickets' => '影響を受けるチケット',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => '',
        'You are here' => 'あなたの現在地',
        'Web Services' => 'Webサービス',
        'Debugger' => 'デバッガー',
        'Go back to web service' => 'Webサービスに戻る',
        'Clear' => 'クリア',
        'Do you really want to clear the debug log of this web service?' =>
            'このWEBサービスのデバッグログを本当にクリアしますか。',
        'Request List' => 'リクエストリスト',
        'Time' => '時間',
        'Remote IP' => 'リモートIP',
        'Loading' => '読み込み中...',
        'Select a single request to see its details.' => '詳細情報を表示するためには一つのリクエストを選択してください。',
        'Filter by type' => 'タイプでフィルタ',
        'Filter from' => '送信元でフィルタ',
        'Filter to' => '送信先でフィルタ',
        'Filter by remote IP' => 'リモートIPでフィルタ',
        'Limit' => '制限',
        'Refresh' => '自動更新',
        'Request Details' => '要求の詳細',
        'An error occurred during communication.' => 'コミュニケーション中にエラーが発生しました。',
        'Show or hide the content.' => 'コンテンツの表示・非表示',
        'Clear debug log' => 'デバッグログを削除',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '呼び出し元をWebサービス %s に追加',
        'Change Invoker %s of Web Service %s' => 'Webサービス %s の呼び出し元%sを変更する',
        'Add new invoker' => '新しい呼び出し元を追加',
        'Change invoker %s' => '呼び出し元%sを変更',
        'Do you really want to delete this invoker?' => 'この呼び出し元を本当に削除しますか。',
        'All configuration data will be lost.' => 'すべての設定情報は失われます',
        'Invoker Details' => '呼び出し元詳細',
        'The name is typically used to call up an operation of a remote web service.' =>
            '',
        'Please provide a unique name for this web service invoker.' => '',
        'Invoker backend' => 'バックエンド インボーカー',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '',
        'Mapping for outgoing request data' => '',
        'Configure' => '設定',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Mapping for incoming response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '',
        'Asynchronous' => '非同期',
        'This invoker will be triggered by the configured events.' => '',
        'Asynchronous event triggers are handled by the OTRS Scheduler Daemon in background (recommended).' =>
            '',
        'Synchronous event triggers would be processed directly during the web request.' =>
            '',
        'Save and continue' => '保存して継続',
        'Delete this Invoker' => 'この呼び出し元を削除',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => '',
        'Go back to' => 'に戻る',
        'Mapping Simple' => '',
        'Default rule for unmapped keys' => '',
        'This rule will apply for all keys with no mapping rule.' => '',
        'Default rule for unmapped values' => '',
        'This rule will apply for all values with no mapping rule.' => '',
        'New key map' => '新しいキー割り当て',
        'Add key mapping' => 'キー割り当ての追加',
        'Mapping for Key ' => 'キーの割り当て',
        'Remove key mapping' => 'キー割り当ての削除',
        'Key mapping' => 'キー割り当て',
        'Map key' => 'キーの割り当て',
        'matching the' => '一致',
        'to new key' => 'へ新しいキーを割り当てる',
        'Value mapping' => '値のマッピング',
        'Map value' => '値の割り当て',
        'to new value' => 'へ新しい値を割り当てる',
        'Remove value mapping' => '割り当てた値の削除',
        'New value map' => '新しい値の割り当て',
        'Add value mapping' => '値の割り当てを追加',
        'Do you really want to delete this key mapping?' => 'このキー割り当てを削除しますか？',
        'Delete this Key Mapping' => 'このキー割り当ての削除',

        # Template: AdminGenericInterfaceMappingXSLT
        'GenericInterface Mapping XSLT for Web Service %s' => '',
        'Mapping XML' => 'XMLのマッピング',
        'Template' => 'テンプレート',
        'The entered data is not a valid XSLT stylesheet.' => '入力されたXSLT形式スタイルシートは有効なデータ形式ではありません。',
        'Insert XSLT stylesheet.' => 'XSLT形式スタイルシートの挿入',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => '',
        'Change Operation %s of Web Service %s' => '',
        'Add new operation' => '新しいオペレーションを追加',
        'Change operation %s' => 'オペレーション%sを変更',
        'Do you really want to delete this operation?' => 'このオペレーションを本当に削除しますか？',
        'Operation Details' => 'オペレーションの詳細',
        'The name is typically used to call up this web service operation from a remote system.' =>
            '',
        'Please provide a unique name for this web service.' => '',
        'Mapping for incoming request data' => '',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '',
        'Operation backend' => '',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '',
        'Mapping for outgoing response data' => '',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '',
        'Delete this Operation' => 'このオペレーションを削除',

        # Template: AdminGenericInterfaceTransportHTTPREST
        'GenericInterface Transport HTTP::REST for Web Service %s' => '',
        'Network transport' => 'ネットワーク・トランスポート',
        'Properties' => '項目',
        'Route mapping for Operation' => '',
        'Define the route that should get mapped to this operation. Variables marked by a \':\' will get mapped to the entered name and passed along with the others to the mapping. (e.g. /Ticket/:TicketID).' =>
            '',
        'Valid request methods for Operation' => '',
        'Limit this Operation to specific request methods. If no method is selected all requests will be accepted.' =>
            '',
        'Maximum message length' => '',
        'This field should be an integer number.' => '',
        'Here you can specify the maximum size (in bytes) of REST messages that OTRS will process.' =>
            '',
        'Send Keep-Alive' => '',
        'This configuration defines if incoming connections should get closed or kept alive.' =>
            '',
        'Host' => 'ホスト',
        'Remote host URL for the REST requests.' => '',
        'e.g https://www.otrs.com:10745/api/v1.0 (without trailing backslash)' =>
            '例… https://www.otrs.com:10745/api/v1.0 (バックスラッシュを除く)',
        'Controller mapping for Invoker' => '',
        'The controller that the invoker should send requests to. Variables marked by a \':\' will get replaced by the data value and passed along with the request. (e.g. /Ticket/:TicketID?UserLogin=:UserLogin&Password=:Password).' =>
            '',
        'Valid request command for Invoker' => '',
        'A specific HTTP command to use for the requests with this Invoker (optional).' =>
            '',
        'Default command' => 'デフォルトコマンド',
        'The default HTTP command to use for the requests.' => '',
        'Authentication' => '認証',
        'The authentication mechanism to access the remote system.' => '',
        'A "-" value means no authentication.' => '"-"は認証なしを意味します。',
        'The user name to be used to access the remote system.' => '',
        'The password for the privileged user.' => '',
        'Use SSL Options' => '',
        'Show or hide SSL options to connect to the remote system.' => '',
        'Certificate File' => '証明書ファイル',
        'The full path and name of the SSL certificate file.' => '',
        'e.g. /opt/otrs/var/certificates/REST/ssl.crt' => '例… /opt/otrs/var/certificates/REST/ssl.crt',
        'Certificate Password File' => '',
        'The full path and name of the SSL key file.' => '',
        'e.g. /opt/otrs/var/certificates/REST/ssl.key' => '例… /opt/otrs/var/certificates/REST/ssl.key',
        'Certification Authority (CA) File' => '',
        'The full path and name of the certification authority certificate file that validates the SSL certificate.' =>
            '',
        'e.g. /opt/otrs/var/certificates/REST/CA/ca.file' => '例… /opt/otrs/var/certificates/REST/CA/ca.file',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => '',
        'Endpoint' => 'エンドポイント',
        'URI to indicate a specific location for accessing a service.' =>
            '',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '例… http://local.otrs.com:8000/Webservice/Example',
        'Namespace' => '名前空間',
        'URI to give SOAP methods a context, reducing ambiguities.' => '',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '例… urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions',
        'Request name scheme' => '',
        'Select how SOAP request function wrapper should be constructed.' =>
            '',
        '\'FunctionName\' is used as example for actual invoker/operation name.' =>
            '',
        '\'FreeText\' is used as example for actual configured value.' =>
            '',
        'Response name free text' => '',
        'Text to be used to as function wrapper name suffix or replacement.' =>
            '',
        'Please consider XML element naming restrictions (e.g. don\'t use \'<\' and \'&\').' =>
            '',
        'Response name scheme' => '',
        'Select how SOAP response function wrapper should be constructed.' =>
            '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '',
        'Encoding' => '',
        'The character encoding for the SOAP message contents.' => '',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '例… utf-8, latin1, iso-8859-1, cp1250, Etc.',
        'SOAPAction' => 'SOAPアクション',
        'Set to "Yes" to send a filled SOAPAction header.' => '',
        'Set to "No" to send an empty SOAPAction header.' => '',
        'SOAPAction separator' => '',
        'Character to use as separator between name space and SOAP method.' =>
            '',
        'Usually .Net web services uses a "/" as separator.' => '',
        'Proxy Server' => 'プロキシサーバ',
        'URI of a proxy server to be used (if needed).' => 'プロキシサーバのURI (任意)',
        'e.g. http://proxy_hostname:8080' => '例… http://proxy_hostname:8080',
        'Proxy User' => 'Proxy ユーザー',
        'The user name to be used to access the proxy server.' => '',
        'Proxy Password' => 'Proxy パスワード',
        'The password for the proxy user.' => '',
        'The full path and name of the SSL certificate file (must be in .p12 format).' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/certificate.p12' => '例… /opt/otrs/var/certificates/SOAP/certificate.p12',
        'The password to open the SSL certificate.' => '',
        'The full path and name of the certification authority certificate file that validates SSL certificate.' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/CA/ca.pem' => '例… /opt/otrs/var/certificates/SOAP/CA/ca.pem',
        'Certification Authority (CA) Directory' => '',
        'The full path of the certification authority directory where the CA certificates are stored in the file system.' =>
            '',
        'e.g. /opt/otrs/var/certificates/SOAP/CA' => '例… /opt/otrs/var/certificates/SOAP/CA',
        'Sort options' => '',
        'Add new first level element' => '',
        'Outbound sort order for xml fields (structure starting below function name wrapper) - see documentation for SOAP transport.' =>
            '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '',
        'Add web service' => 'ウェブサービスの追加',
        'Clone web service' => 'ウェブサービスの複製',
        'The name must be unique.' => '名前は一意である必要があります。',
        'Clone' => '複製',
        'Export web service' => 'ウェブサービスのエクスポート',
        'Import web service' => 'ウェブサービスのインポート',
        'Configuration File' => '',
        'The file must be a valid web service configuration YAML file.' =>
            '',
        'Import' => 'インポート',
        'Configuration history' => '',
        'Delete web service' => 'ウェブサービスの削除',
        'Do you really want to delete this web service?' => '本当にこのWebサービスを削除しますか？',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '',
        'Web Service List' => 'ウェブサービス一覧',
        'Remote system' => '',
        'Provider transport' => '',
        'Requester transport' => '',
        'Debug threshold' => '',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '',
        'Operations are individual system functions which remote systems can request.' =>
            '',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '',
        'Controller' => 'コントローラー',
        'Inbound mapping' => '',
        'Outbound mapping' => '',
        'Delete this action' => 'このアクションを削除',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '',
        'Delete webservice' => 'Webサービスを削除',
        'Delete operation' => 'オペレーションを削除',
        'Delete invoker' => '呼び出し元を削除',
        'Clone webservice' => 'Webサービスを複製',
        'Import webservice' => 'Webサービスをインポート',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => '',
        'Go back to Web Service' => 'Webサービスに戻る',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '',
        'Configuration History List' => '設定履歴一覧',
        'Version' => 'バージョン',
        'Create time' => '作成日時',
        'Select a single configuration version to see its details.' => '詳細を表示するには、1つのバージョンのみを選択します。',
        'Export web service configuration' => 'サービス設定のエクスポート',
        'Restore web service configuration' => 'サービス設定の復元',
        'Do you really want to restore this version of the web service configuration?' =>
            '',
        'Your current web service configuration will be overwritten.' => '現在のWebサービス設定は上書きされます。',
        'Restore' => '復元',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            '警告: あなたの名前を変更するグループの管理者はシステム設定の中で適切な変更を行う前にあなたの管理者パネルはロックアウトされます。この問題が発生した場合、管理するSQLステートメントごとにグループを元に戻してください',
        'Group Management' => 'グループ管理',
        'Add group' => 'グループ追加',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            '管理グループは管理エリアで取得します。統計グループは統計エリアを取得します',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '統計グループは統計エリアを取得します。異なるエージェントグループへのアクセス許可を操作するには、グループを新規作成してください。（例：購買部、サポート部、営業部等）',
        'It\'s useful for ASP solutions. ' => 'ASPソリューションが便利です',
        'Add Group' => 'グループ追加',
        'Edit Group' => 'グループ編集',

        # Template: AdminLog
        'System Log' => 'システムログ',
        'Here you will find log information about your system.' => 'ここではシステムに関するログ情報が表示されます。',
        'Hide this message' => 'このメッセージを隠す',
        'Recent Log Entries' => '最近のログ一覧',

        # Template: AdminMailAccount
        'Mail Account Management' => 'メールアカウント管理',
        'Add mail account' => 'メールアカウント追加',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'アカウントで受信された全てのメールが選択したキューに振り分けられます。',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            '信頼されたアカウントの場合、受信時には既存のX-OTRSヘッダ(優先度など)が使用されます。PostMasterフィルタは常に使用されます。',
        'Delete account' => 'アカウント削除',
        'Fetch mail' => 'メールを取得',
        'Add Mail Account' => 'メールアカウント追加',
        'Example: mail.example.com' => '例: mail.example.com',
        'IMAP Folder' => 'IMAPフォルダー',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '',
        'Trusted' => '信頼済',
        'Dispatching' => '振り分け処理',
        'Edit Mail Account' => 'メールアカウント編集',

        # Template: AdminNavigationBar
        'Admin' => '管理',
        'Agent Management' => '担当者管理',
        'Queue Settings' => 'キュー設定',
        'Ticket Settings' => 'チケット設定',
        'System Administration' => 'システム管理',
        'Online Admin Manual' => 'オンライン管理者マニュアル',

        # Template: AdminNotificationEvent
        'Ticket Notification Management' => 'チケット通知管理',
        'Add notification' => '通知の追加',
        'Export Notifications' => '通知をエクスポート',
        'Configuration Import' => '設定のインポート',
        'Here you can upload a configuration file to import Ticket Notifications to your system. The file needs to be in .yml format as exported by the Ticket Notification module.' =>
            '',
        'Overwrite existing notifications?' => '存在する通知を上書きしますか。',
        'Upload Notification configuration' => '',
        'Import Notification configuration' => '通知の設定をインポート',
        'Delete this notification' => 'この通知を削除',
        'Do you really want to delete this notification?' => '',
        'Add Notification' => '通知の追加',
        'Edit Notification' => '通知の編集',
        'Show in agent preferences' => '担当者のプリファレンスに表示',
        'Agent preferences tooltip' => '担当者プリファレンスツールチップ',
        'This message will be shown on the agent preferences screen as a tooltip for this notification.' =>
            'このメッセージはこの通知に対するツールチップとして担当者プリファレンス画面に表示されます。',
        'Here you can choose which events will trigger this notification. An additional ticket filter can be applied below to only send for ticket with certain criteria.' =>
            '',
        'Ticket Filter' => 'チケットフィルタ',
        'Article Filter' => '記事フィルタ',
        'Only for ArticleCreate and ArticleSend event' => 'ArticleCreateおよびArticleSendイベントに対してのみ',
        'Article type' => '記事タイプ',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            '',
        'Article sender type' => '記事送信者タイプ',
        'Subject match' => '表題が一致',
        'Body match' => '本文が一致',
        'Include attachments to notification' => '通知が添付ファイルを含む',
        'Recipients' => '受信者',
        'Send to' => '送信先',
        'Send to these agents' => 'これらの担当者に送信',
        'Send to all group members' => 'グループの全てのメンバーに送信',
        'Send to all role members' => 'ロールの全てのメンバーに送付',
        'Send on out of office' => '外出中の担当者に送信',
        'Also send if the user is currently out of office.' => '現在外出中のユーザーにも送付する。',
        'Once per day' => '一日に一度',
        'Notify user just once per day about a single ticket using a selected transport.' =>
            '選択された通知方法を使って1つのチケットにつき1度だけユーザーに通知する。',
        'Notification Methods' => '通知方法',
        'These are the possible methods that can be used to send this notification to each of the recipients. Please select at least one method below.' =>
            '',
        'Enable this notification method' => 'この通知方法を有効化',
        'Transport' => 'トランスポート',
        'At least one method is needed per notification.' => '',
        'Send by default' => 'デフォルトで送信',
        'Should the notification be sent to agents who have not yet made a choice in their preferences?' =>
            '',
        'This feature is currently not available.' => 'この機能は現在利用できません。',
        'No data found' => '',
        'No notification method found.' => '',
        'Notification Text' => '通知文書',
        'This language is not present or enabled on the system. This notification text could be deleted if it is not needed anymore.' =>
            '',
        'Remove Notification Language' => '',
        'Message body' => '',
        'Add new notification language' => '新規通知言語を追加',
        'Do you really want to delete this notification language?' => '',
        'Tag Reference' => 'タグリファレンス',
        'Notifications are sent to an agent or a customer.' => '通知は担当者、顧客に送信されます。',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            '表題の最初の20文字を取得 (最新の担当者記事)',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            '本文から最初の5行を取得 (最新の担当者記事)',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            '表題の最初の20文字を取得 (最新の顧客記事)',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            '本文から最初の5行を取得 (最新の顧客記事)',
        'Attributes of the current customer user data' => '',
        'Attributes of the current ticket owner user data' => '',
        'Attributes of the current ticket responsible user data' => '',
        'Attributes of the current agent user who requested this action' =>
            '',
        'Attributes of the recipient user for the notification' => '',
        'Attributes of the ticket data' => '',
        'Ticket dynamic fields internal key values' => '',
        'Ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '',
        'Example notification' => '',

        # Template: AdminNotificationEventTransportEmailSettings
        'Additional recipient email addresses' => '追加の受信者のメールアドレス',
        'Notification article type' => '記事タイプの通知',
        'An article will be created if the notification is sent to the customer or an additional email address.' =>
            '顧客または追加のメールアドレスに通知が送られる際に記事が作成されます。',
        'Email template' => 'メールテンプレート',
        'Use this template to generate the complete email (only for HTML emails).' =>
            '完全なメールを生成するためにこのテンプレートを使う。(HTMLメールに対してのみ)',

        # Template: AdminOTRSBusinessInstalled
        'Manage %s' => '%s を管理',
        'Downgrade to OTRS Free' => 'フリー版OTRSへのダウングレード',
        'Read documentation' => '',
        '%s makes contact regularly with cloud.otrs.com to check on available updates and the validity of the underlying contract.' =>
            '',
        'Unauthorized Usage Detected' => '',
        'This system uses the %s without a proper license! Please make contact with %s to renew or activate your contract!' =>
            '',
        '%s not Correctly Installed' => '',
        'Your %s is not correctly installed. Please reinstall it with the button below.' =>
            '%s は正しくインストールされていません。下のボタンを押して再インストールしてください。',
        'Reinstall %s' => '%s の再インストール',
        'Your %s is not correctly installed, and there is also an update available.' =>
            '',
        'You can either reinstall your current version or perform an update with the buttons below (update recommended).' =>
            '',
        'Update %s' => '%s のアップデート',
        '%s Not Yet Available' => '',
        '%s will be available soon.' => '',
        '%s Update Available' => '%s 利用できるアップデーターがあります',
        'An update for your %s is available! Please update at your earliest!' =>
            '',
        '%s Correctly Deployed' => '%s 正しくデプロイされました',
        'Congratulations, your %s is correctly installed and up to date!' =>
            '',

        # Template: AdminOTRSBusinessNotInstalled
        '%s will be available soon. Please check again in a few days.' =>
            '',
        'Please have a look at %s for more information.' => '',
        'Your OTRS Free is the base for all future actions. Please register first before you continue with the upgrade process of %s!' =>
            '',
        'Before you can benefit from %s, please contact %s to get your %s contract.' =>
            '',
        'Connection to cloud.otrs.com via HTTPS couldn\'t be established. Please make sure that your OTRS can connect to cloud.otrs.com via port 443.' =>
            'cloud.otrs.comへのHTTPSでの接続の確立ができませんでした。
OTRSが443ポートを用いてcloud.otrs.comに接続できることを確認して下さい。',
        'With your existing contract you can only use a small part of the %s.' =>
            '',
        'If you would like to take full advantage of the %s get your contract upgraded now! Contact %s.' =>
            '',

        # Template: AdminOTRSBusinessUninstall
        'Cancel downgrade and go back' => 'ダウングレードを中止して戻る',
        'Go to OTRS Package Manager' => 'OTRSパッケージマネージャーへ',
        'Sorry, but currently you can\'t downgrade due to the following packages which depend on %s:' =>
            '',
        'Vendor' => 'ベンダー',
        'Please uninstall the packages first using the package manager and try again.' =>
            '',
        'You are about to downgrade to OTRS Free and will lose the following features and all data related to these:' =>
            '',
        'Chat' => 'チャット',
        'Report Generator' => '',
        'Timeline view in ticket zoom' => '',
        'DynamicField ContactWithData' => 'DynamicField 日付でコンタクトする',
        'DynamicField Database' => '',
        'SLA Selection Dialog' => '',
        'Ticket Attachment View' => '',
        'The %s skin' => '%s スキン',

        # Template: AdminPGP
        'PGP Management' => 'PGP管理',
        'Use this feature if you want to work with PGP keys.' => 'PGP鍵を利用される際に本機能をご利用ください。',
        'Add PGP key' => 'PGP鍵追加',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'この方法で直接システム設定からキーリング設定を編集できます。',
        'Introduction to PGP' => 'PGPの導入',
        'Result' => '結果',
        'Identifier' => '識別子',
        'Bit' => 'ビット',
        'Fingerprint' => 'フィンガープリント',
        'Expires' => '期限切れ',
        'Delete this key' => 'この鍵を削除',
        'Add PGP Key' => 'PGP鍵を追加',
        'PGP key' => 'PGPキー',

        # Template: AdminPackageManager
        'Package Manager' => 'パッケージ管理',
        'Uninstall package' => 'パッケージをアンインストール',
        'Do you really want to uninstall this package?' => 'このパッケージを本当にアンインストールしますか？',
        'Reinstall package' => 'パッケージを再インストール',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            'このパッケージを本当に再インストールしますか？ 全ての手動変更点は失われます。',
        'Continue' => '続ける',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '',
        'Install' => 'インストール',
        'Install Package' => 'パッケージをインストール',
        'Update repository information' => 'リポジトリ情報を更新',
        'Online Repository' => 'オンラインリポジトリ',
        'Module documentation' => 'モジュールの書類',
        'Upgrade' => 'アップグレード',
        'Local Repository' => 'ローカルリポジトリ',
        'This package is verified by OTRSverify (tm)' => '',
        'Uninstall' => 'アンインストール',
        'Reinstall' => '再インストール',
        'Features for %s customers only' => '',
        'With %s, you can benefit from the following optional features. Please make contact with %s if you need more information.' =>
            '',
        'Download package' => 'パッケージをダウンロード',
        'Rebuild package' => 'パッケージを再構成',
        'Metadata' => 'メタデータ',
        'Change Log' => '変更履歴',
        'Date' => '日付',
        'List of Files' => '領域のリスト',
        'Permission' => '権限',
        'Download' => 'ダウンロード',
        'Download file from package!' => 'パッケージからファイルをダウンロードしてください。',
        'Required' => '必要項目',
        'PrimaryKey' => 'プライマリキー',
        'AutoIncrement' => '自動増加',
        'SQL' => 'SQL',
        'File differences for file %s' => '%s ファイルが違います',

        # Template: AdminPerformanceLog
        'Performance Log' => 'パフォーマンスログ',
        'This feature is enabled!' => 'この機能を有効にする。',
        'Just use this feature if you want to log each request.' => 'この機能は各要求をログに記録したい場合のみ利用してください。',
        'Activating this feature might affect your system performance!' =>
            'この機能を有効にするとシステムのパフォーマンスに影響が出る可能性があります。',
        'Disable it here!' => '無効にする。',
        'Logfile too large!' => 'ログファイルが大きすぎます',
        'The logfile is too large, you need to reset it' => 'ログファイルが大きすぎます。初期化してください。',
        'Overview' => '一覧',
        'Range' => '範囲',
        'last' => '以内',
        'Interface' => 'インターフェイス',
        'Requests' => '要求',
        'Min Response' => '最少応答',
        'Max Response' => '最大応答',
        'Average Response' => '平均応答',
        'Period' => '期間',
        'Min' => '最少',
        'Max' => '最大',
        'Average' => '平均',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'ポストマスター・フィルタ管理',
        'Add filter' => 'フィルタの追加',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '振り分けやメールヘッダを元に受信メールをフィルタします。正規表現を使用できます。',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'メールアドレスのみを一致させたい場合、EMAILADDRESS:info@example.comを差出人、宛先、Ccに使用してください。',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '正規表現を使う場合、設定で一致する値を[***]として使用できます。',
        'Delete this filter' => 'このフィルタを削除',
        'Add PostMaster Filter' => 'ポストマスター・フィルタを追加',
        'Edit PostMaster Filter' => 'PostMasterフィルタを削除',
        'The name is required.' => '名前は必須項目です。',
        'Filter Condition' => 'フィルタ条件',
        'AND Condition' => 'AND条件',
        'Check email header' => 'メールヘッダを確認',
        'Negate' => '否定条件',
        'Look for value' => '値を検索',
        'The field needs to be a valid regular expression or a literal word.' =>
            'このフィールドは有効な正規表現またはリテラル値で入力する必要があります。',
        'Set Email Headers' => 'メールヘッダを設定',
        'Set email header' => 'メールヘッダを設定',
        'Set value' => '値を設定',
        'The field needs to be a literal word.' => 'このフィールドはリテラル値で入力する必要があります。',

        # Template: AdminPriority
        'Priority Management' => '優先度管理',
        'Add priority' => '優先度を追加',
        'Add Priority' => '優先度を追加',
        'Edit Priority' => '優先度を編集',

        # Template: AdminProcessManagement
        'Process Management' => 'プロセス管理',
        'Filter for Processes' => 'プロセスでフィルタ',
        'Create New Process' => '新しいプロセスを追加',
        'Deploy All Processes' => '',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            '',
        'Overwrite existing entities' => '',
        'Upload process configuration' => 'プロセスの設定を更新',
        'Import process configuration' => 'プロセスの設定をインポート',
        'Example processes' => '',
        'Here you can activate best practice example processes that are part of %s. Please note that some additional configuration may be required.' =>
            '',
        'Import example process' => '',
        'Do you want to benefit from processes created by experts? Upgrade to %s to be able to import some sophisticated example processes.' =>
            '',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            '',
        'Changes to the Processes here only affect the behavior of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            '',
        'Processes' => 'プロセス',
        'Process name' => 'プロセス名',
        'Print' => '印刷',
        'Export Process Configuration' => 'プロセスの設定をエクスポート',
        'Copy Process' => 'プロセスをコピー',

        # Template: AdminProcessManagementActivity
        'Cancel & close' => '中止して閉じる',
        'Go Back' => '戻る',
        'Please note, that changing this activity will affect the following processes' =>
            '',
        'Activity' => 'アクティビティ',
        'Activity Name' => 'アクティビティ名',
        'Activity Dialogs' => 'アクティビティダイアログ',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            '',
        'Filter available Activity Dialogs' => '利用可能なアクティビティダイアログをフィルタ',
        'Available Activity Dialogs' => '利用可能なアクティビティダイアログ',
        'Create New Activity Dialog' => '新規アクティビティダイアログを作成',
        'Assigned Activity Dialogs' => '割り当てられたアクティビティダイアログ',
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?' =>
            '',

        # Template: AdminProcessManagementActivityDialog
        'Please note that changing this activity dialog will affect the following activities' =>
            '',
        'Please note that customer users will not be able to see or use the following fields: Owner, Responsible, Lock, PendingTime and CustomerID.' =>
            '',
        'The Queue field can only be used by customers when creating a new ticket.' =>
            '',
        'Activity Dialog' => 'アクティビティダイアログ',
        'Activity dialog Name' => 'アクティビティダイアログ名',
        'Available in' => '',
        'Description (short)' => '説明（概略）',
        'Description (long)' => '説明（詳細）',
        'The selected permission does not exist.' => '',
        'Required Lock' => '',
        'The selected required lock does not exist.' => '',
        'Submit Advice Text' => '',
        'Submit Button Text' => '',
        'Fields' => '領域',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available fields' => '利用可能な領域をフィルタ',
        'Available Fields' => '利用可能な領域',
        'Assigned Fields' => '割り当てられた領域',
        'ArticleType' => '記事タイプ',
        'Display' => '表示',
        'Edit Field Details' => '領域の詳細を編集',
        'Customer interface does not support internal article types.' => '',

        # Template: AdminProcessManagementPath
        'Path' => 'パス',
        'Edit this transition' => 'この遷移を編集',
        'Transition Actions' => '推移アクション',
        'You can assign Transition Actions to this Transition by dragging the elements with the mouse from the left list to the right list.' =>
            '',
        'Filter available Transition Actions' => '利用可能な遷移動作をフィルタ',
        'Available Transition Actions' => '利用可能な遷移動作',
        'Create New Transition Action' => '新規遷移動作を作成',
        'Assigned Transition Actions' => '割り当てられた遷移動作',

        # Template: AdminProcessManagementProcessAccordion
        'Activities' => 'アクティビティ',
        'Filter Activities...' => '',
        'Create New Activity' => '新しいアクティビティを作成',
        'Filter Activity Dialogs...' => '',
        'Transitions' => '遷移',
        'Filter Transitions...' => '',
        'Create New Transition' => '新しい遷移を作成',
        'Filter Transition Actions...' => '',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => 'プロセスを編集',
        'Print process information' => 'プロセス情報を印刷',
        'Delete Process' => 'プロセスを削除',
        'Delete Inactive Process' => '非アクティブなプロセスを削除',
        'Available Process Elements' => '',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            '',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            '',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            '',
        'You can start a connection between to Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            '',
        'Actions can be assigned to a Transition by dropping the Action Element onto the label of a Transition.' =>
            '',
        'Edit Process Information' => 'プロセスの情報を編集',
        'Process Name' => 'プロセス名',
        'The selected state does not exist.' => '選択された状態は存在しません。',
        'Add and Edit Activities, Activity Dialogs and Transitions' => 'アクティビティ、アクティビティダイアログ、遷移を追加、編集',
        'Show EntityIDs' => 'エンティティIDを表示',
        'Extend the width of the Canvas' => 'キャンバスの幅を広げる',
        'Extend the height of the Canvas' => 'キャンバスの高さを拡大する',
        'Remove the Activity from this Process' => 'このプロセスからアクティビティを削除',
        'Edit this Activity' => 'このアクティビティを編集',
        'Save settings' => '設定を保存',
        'Save Activities, Activity Dialogs and Transitions' => 'クティビティ、アクティビティダイアログ、遷移を保存',
        'Do you really want to delete this Process?' => 'このプロセスを本当に削除しますか？',
        'Do you really want to delete this Activity?' => 'このアクティビティを本当に削除しますか？',
        'Do you really want to delete this Activity Dialog?' => 'このアクティビティダイアログを本当に削除しますか？',
        'Do you really want to delete this Transition?' => 'この遷移を本当に削除しますか？',
        'Do you really want to delete this Transition Action?' => 'この遷移動作を本当に削除しますか？',
        'Do you really want to remove this activity from the canvas? This can only be undone by leaving this screen without saving.' =>
            '',
        'Do you really want to remove this transition from the canvas? This can only be undone by leaving this screen without saving.' =>
            '',
        'Hide EntityIDs' => 'エンティティIDを隠す',
        'Delete Entity' => 'エンティティを削除',
        'Remove Entity from canvas' => 'キャンバスからエンティティを削除',
        'This Activity is already used in the Process. You cannot add it twice!' =>
            'このアクティビティは既にプロセスで使用されています。2度追加できません。',
        'This Activity cannot be deleted because it is the Start Activity.' =>
            'このアクティビティは開始アクティビティであるため削除できません。',
        'This Transition is already used for this Activity. You cannot use it twice!' =>
            'この遷移は既にこのアクティビティに対して使用されています。2度使用できません。',
        'This TransitionAction is already used in this Path. You cannot use it twice!' =>
            'の遷移動作は既にこのパスで使用されています。2度使用できません。',
        'Remove the Transition from this Process' => 'このプロセスから遷移を削除',
        'No TransitionActions assigned.' => '',
        'The Start Event cannot loose the Start Transition!' => '',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.' =>
            '',
        'An unconnected transition is already placed on the canvas. Please connect this transition first before placing another transition.' =>
            '',

        # Template: AdminProcessManagementProcessNew
        'In this screen, you can create a new process. In order to make the new process available to users, please make sure to set its state to \'Active\' and synchronize after completing your work.' =>
            '',

        # Template: AdminProcessManagementProcessPrint
        'Start Activity' => 'アクティビティを開始',
        'Contains %s dialog(s)' => '',
        'Assigned dialogs' => '割り当てられたダイアログ',
        'Activities are not being used in this process.' => 'アクティビティはこのプロセスで使用されていません。',
        'Assigned fields' => '割り当てられた領域',
        'Activity dialogs are not being used in this process.' => 'アクティビティダイアログはこのプロセスで使用されていません。',
        'Condition linking' => '条件リンク',
        'Conditions' => '条件',
        'Condition' => '条件',
        'Transitions are not being used in this process.' => '遷移はこのプロセスで使用されていません。',
        'Module name' => 'モジュール名',
        'Transition actions are not being used in this process.' => '遷移アクションはこのプロセスで使用されていません。',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            '',
        'Transition' => '遷移',
        'Transition Name' => '遷移名',
        'Type of Linking between Conditions' => '条件間のリンクのタイプ',
        'Remove this Condition' => 'この条件を削除',
        'Type of Linking' => 'リンクのタイプ',
        'Add a new Field' => '新しい領域を追加',
        'Remove this Field' => 'この領域を削除',
        'And can\'t be repeated on the same condition.' => '',
        'Add New Condition' => '新しい条件を追加',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            '',
        'Transition Action' => '遷移動作',
        'Transition Action Name' => '遷移動作名',
        'Transition Action Module' => '遷移動作モジュール',
        'Config Parameters' => 'パラメータの設定',
        'Add a new Parameter' => '新規パラメータを追加',
        'Remove this Parameter' => 'このパラメータを削除',

        # Template: AdminQueue
        'Manage Queues' => 'キュー管理',
        'Add queue' => 'キューを追加',
        'Add Queue' => 'キューを追加',
        'Edit Queue' => 'キューを編集',
        'A queue with this name already exists!' => '',
        'Sub-queue of' => '親キュー',
        'Unlock timeout' => 'ロックの解除期限',
        '0 = no unlock' => '0 = ロック解除しない',
        'Only business hours are counted.' => '勤務時間のみ計算されます',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '担当者がチケットロック後、ロック期限切れ前に完了していない場合、ロックは解除され、他の担当者がチケットを担当できるようになります。',
        'Notify by' => '通知する時間',
        '0 = no escalation' => '0 = エスカレーションしない',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            'ここで定義された時間の前に、新規チケットに顧客連絡先が追加されていないか、メール送信、電話などの連絡を取っていない場合、チケットがエスカレーションされます。',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            'メールでのフォローアップやカスタマーポータルに追加された記事があれば、エスカレーション更新期限はリセットされます。ここで定義された時間内に顧客からの外部メールや電話の記録が追加されない場合、チケットがエスカレーションされます。',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            'ここで定義された時間の前にチケットが完了しない場合、チケットがエスカレーションされます。',
        'Follow up Option' => 'フォローアップ・オプション',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '完了したチケットにフォローアップしたい場合、チケットを再度対応中にするか、拒否して新規チケットにするかを指定します。',
        'Ticket lock after a follow up' => 'フォローアップ後にチケットをロック',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            'チケットが完了した後に顧客がチケットにフォローアップする場合、旧所有者にロックされます。',
        'System address' => 'システムアドレス',
        'Will be the sender address of this queue for email answers.' => 'このキューでのメール回答はこの送信者アドレスになります。',
        'Default sign key' => '既定のサインキー',
        'The salutation for email answers.' => 'メール回答の挨拶文',
        'The signature for email answers.' => 'メール回答の署名',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => 'キュー-自動応答の関連性の管理',
        'Filter for Queues' => 'キューでフィルタ',
        'Filter for Auto Responses' => '自動応答でフィルタ',
        'Auto Responses' => '自動応答',
        'Change Auto Response Relations for Queue' => 'キューに対する自動応答の関連性を変更',

        # Template: AdminQueueTemplates
        'Manage Template-Queue Relations' => 'テンプレート-キューの関連性の管理',
        'Filter for Templates' => 'テンプレートでフィルタ',
        'Templates' => 'テンプレート',
        'Change Queue Relations for Template' => 'テンプレートに対するキューの関連性を変更',
        'Change Template Relations for Queue' => 'キューに対するテンプレートの関連性を変更',

        # Template: AdminRegistration
        'System Registration Management' => '',
        'Edit details' => '詳細を編集',
        'Show transmitted data' => '',
        'Deregister system' => '',
        'Overview of registered systems' => '',
        'This system is registered with OTRS Group.' => '',
        'System type' => '',
        'Unique ID' => 'ユニークID',
        'Last communication with registration server' => '',
        'System registration not possible' => '',
        'Please note that you can\'t register your system if OTRS Daemon is not running correctly!' =>
            '注意：OTRSデーモンが起動していないと、システムの登録が正常に行えません。',
        'Instructions' => '',
        'System deregistration not possible' => '',
        'Please note that you can\'t deregister your system if you\'re using the %s or having a valid service contract.' =>
            '',
        'OTRS-ID Login' => 'OTRS-ID',
        'Read more' => '続きを読む',
        'You need to log in with your OTRS-ID to register your system.' =>
            '',
        'Your OTRS-ID is the email address you used to sign up on the OTRS.com webpage.' =>
            'OTRS-IDはOTRS.comのウェブページでサインアップに用いたE-Mailアドレスです。',
        'Data Protection' => '',
        'What are the advantages of system registration?' => '',
        'You will receive updates about relevant security releases.' => '',
        'With your system registration we can improve our services for you, because we have all relevant information available.' =>
            '',
        'This is only the beginning!' => '',
        'We will inform you about our new services and offerings soon.' =>
            '',
        'Can I use OTRS without being registered?' => '登録せずにOTRSを利用できますか？',
        'System registration is optional.' => 'システムへの登録は任意です。',
        'You can download and use OTRS without being registered.' => 'OTRSは、登録することなくダウンロード・利用することができます。',
        'Is it possible to deregister?' => '',
        'You can deregister at any time.' => '',
        'Which data is transfered when registering?' => '',
        'A registered system sends the following data to OTRS Group:' => '',
        'Fully Qualified Domain Name (FQDN), OTRS version, Database, Operating System and Perl version.' =>
            '',
        'Why do I have to provide a description for my system?' => '',
        'The description of the system is optional.' => '',
        'The description and system type you specify help you to identify and manage the details of your registered systems.' =>
            '',
        'How often does my OTRS system send updates?' => '',
        'Your system will send updates to the registration server at regular intervals.' =>
            '',
        'Typically this would be around once every three days.' => '',
        'In case you would have further questions we would be glad to answer them.' =>
            '',
        'Please visit our' => '',
        'portal' => 'ポータル',
        'and file a request.' => '',
        'If you deregister your system, you will lose these benefits:' =>
            '',
        'You need to log in with your OTRS-ID to deregister your system.' =>
            '',
        'OTRS-ID' => 'OTRS-ID',
        'You don\'t have an OTRS-ID yet?' => '',
        'Sign up now' => '新規登録する',
        'Forgot your password?' => '',
        'Retrieve a new one' => '',
        'This data will be frequently transferred to OTRS Group when you register this system.' =>
            '',
        'Attribute' => '',
        'FQDN' => 'FQDN',
        'OTRS Version' => 'OTRSバージョン',
        'Operating System' => 'オペレーションシステム',
        'Perl Version' => 'Perl バージョン',
        'Optional description of this system.' => '',
        'Register' => '登録',
        'Deregister System' => '',
        'Continuing with this step will deregister the system from OTRS Group.' =>
            '',
        'Deregister' => '',
        'You can modify registration settings here.' => '',
        'Overview of transmitted data' => '',
        'There is no data regularly sent from your system to %s.' => '',
        'The following data is sent at minimum every 3 days from your system to %s.' =>
            '',
        'The data will be transferred in JSON format via a secure https connection.' =>
            '',
        'System Registration Data' => '',
        'Support Data' => '',

        # Template: AdminRole
        'Role Management' => 'ロール管理',
        'Add role' => 'ロールを追加',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'ロールを作成してグループを追加後、ユーザーにロールを追加してください。',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '未定義のロールがあります。新しいロールを作成し、追加ボタンを押してください。',
        'Add Role' => 'ロールを追加',
        'Edit Role' => 'ロールを編集',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => 'ロール-グループの関連性管理',
        'Filter for Roles' => 'ロールでフィルタ',
        'Roles' => 'ロール',
        'Select the role:group permissions.' => 'ロール：グループ権限を選択。',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '何も選択しなかった場合は、そのグループへ付与される許可はありません（ロールに関してチケットは利用できません）',
        'Change Role Relations for Group' => 'グループに対するロールの関連性を変更',
        'Change Group Relations for Role' => 'ロールに対するグループの関連性を変更',
        'Toggle %s permission for all' => '全ての %s の権限を切り替え',
        'move_into' => '移動',
        'Permissions to move tickets into this group/queue.' => 'このグループ／キューにチケットの移転権限を付与',
        'create' => '作成',
        'Permissions to create tickets in this group/queue.' => 'このグループ／キューにチケットの作成権限を付与',
        'note' => 'メモ',
        'Permissions to add notes to tickets in this group/queue.' => 'このグループ／キューにチケットへメモ追加権限を付与',
        'owner' => '所有者',
        'Permissions to change the owner of tickets in this group/queue.' =>
            'このグループ／キューにチケットへ所有者変更権限を付与',
        'priority' => '優先度',
        'Permissions to change the ticket priority in this group/queue.' =>
            'このグループ／キューにチケットの優先度変更権限を付与',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => '担当者-ロールの関連性管理',
        'Add agent' => '担当者の追加',
        'Filter for Agents' => '担当者でフィルタ',
        'Agents' => '担当者',
        'Manage Role-Agent Relations' => 'ロール-担当者の関連性管理',
        'Change Role Relations for Agent' => '担当者に対するロールの関連性を変更',
        'Change Agent Relations for Role' => 'ロールに対する担当者の関連性を変更',

        # Template: AdminSLA
        'SLA Management' => 'SLA管理',
        'Add SLA' => 'SLAを追加',
        'Edit SLA' => 'SLAを編集',
        'Please write only numbers!' => '数値しか入力できません。',

        # Template: AdminSMIME
        'S/MIME Management' => 'S/MIME管理',
        'Add certificate' => '証明書の追加',
        'Add private key' => '秘密鍵の追加',
        'Filter for certificates' => '証明書でフィルタ',
        'Filter for S/MIME certs' => '',
        'To show certificate details click on a certificate icon.' => '',
        'To manage private certificate relations click on a private key icon.' =>
            '',
        'Here you can add relations to your private certificate, these will be embedded to the S/MIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => '参照',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'この方法で直接認証と秘密鍵を編集できます。',
        'Hash' => 'ハッシュ',
        'Handle related certificates' => '',
        'Read certificate' => '',
        'Delete this certificate' => 'この証明書を削除',
        'Add Certificate' => '証明書を追加',
        'Add Private Key' => '秘密鍵を追加',
        'Secret' => '秘密',
        'Related Certificates for' => '',
        'Delete this relation' => '',
        'Available Certificates' => '',
        'Relate this certificate' => '',

        # Template: AdminSMIMECertRead
        'Certificate details' => '',

        # Template: AdminSalutation
        'Salutation Management' => '挨拶文管理',
        'Add salutation' => '挨拶文を追加',
        'Add Salutation' => '挨拶文を追加',
        'Edit Salutation' => '挨拶文を編集',
        'e. g.' => '例',
        'Example salutation' => '挨拶文の例',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => 'セキュアモードを有効にしてください。',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            '初回インストール完了後、セキュアモード (通常) に設定されます',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            'セキュアモードが無効の場合、アプリケーションが既に実行されているため、SysConfigを介して有効にします。',

        # Template: AdminSelectBox
        'SQL Box' => 'SQLボックス',
        'Here you can enter SQL to send it directly to the application database. It is not possible to change the content of the tables, only select queries are allowed.' =>
            'ここではアプリケーションデータベースに直接送るSQLを入力することができます。表の定義を変更することはできません。選択問合せのみ可能です。',
        'Here you can enter SQL to send it directly to the application database.' =>
            'ここではアプリケーションデータベースに直接送るSQLを入力することができます。',
        'Only select queries are allowed.' => '',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            'SQLクエリの構文に誤りがあります。確認してください。',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '',
        'Result format' => '結果の書式',
        'Run Query' => 'クエリー実行',
        'Query is executed.' => 'クエリは実行されました。',

        # Template: AdminService
        'Service Management' => 'サービス管理',
        'Add service' => 'サービスの追加',
        'Add Service' => 'サービスの追加',
        'Edit Service' => 'サービスの編集',
        'Sub-service of' => '親サービス',

        # Template: AdminSession
        'Session Management' => 'セッション管理',
        'All sessions' => '全てのセッション',
        'Agent sessions' => '担当者のセッション',
        'Customer sessions' => '顧客のセッション',
        'Unique agents' => '一意の担当者',
        'Unique customers' => '一意の顧客',
        'Kill all sessions' => '全てのセッションを切断',
        'Kill this session' => '現在のセッションを切断',
        'Session' => 'セッション',
        'Kill' => '切断',
        'Detail View for SessionID' => 'セッションIDの詳細表示',

        # Template: AdminSignature
        'Signature Management' => '署名管理',
        'Add signature' => '署名を追加',
        'Add Signature' => '署名を追加',
        'Edit Signature' => '署名を編集',
        'Example signature' => '署名の例',

        # Template: AdminState
        'State Management' => '状態管理',
        'Add state' => '状態を追加',
        'Please also update the states in SysConfig where needed.' => '',
        'Add State' => '状態を追加',
        'Edit State' => '状態を編集',
        'State type' => '状態のタイプ',

        # Template: AdminSupportDataCollector
        'This data is sent to OTRS Group on a regular basis. To stop sending this data please update your system registration.' =>
            '',
        'You can manually trigger the Support Data sending by pressing this button:' =>
            '',
        'Send Update' => '',
        'Sending Update...' => '',
        'Support Data information was successfully sent.' => '',
        'Was not possible to send Support Data information.' => '',
        'Update Result' => '',
        'Currently this data is only shown in this system.' => '',
        'A support bundle (including: system registration information, support data, a list of installed packages and all locally modified source code files) can be generated by pressing this button:' =>
            '',
        'Generate Support Bundle' => '',
        'Generating...' => '作成中...',
        'It was not possible to generate the Support Bundle.' => '',
        'Generate Result' => '',
        'Support Bundle' => '',
        'The mail could not be sent' => '',
        'The support bundle has been generated.' => '',
        'Please choose one of the following options.' => '',
        'Send by Email' => 'Eメールで送信',
        'The support bundle is too large to send it by email, this option has been disabled.' =>
            '',
        'The email address for this user is invalid, this option has been disabled.' =>
            '',
        'Sending' => '送信者',
        'The support bundle will be sent to OTRS Group via email automatically.' =>
            '',
        'Download File' => 'ファイルのダウンロード',
        'A file containing the support bundle will be downloaded to the local system. Please save the file and send it to the OTRS Group, using an alternate method.' =>
            '',
        'Error: Support data could not be collected (%s).' => '',
        'Details' => '詳細',

        # Template: AdminSysConfig
        'SysConfig' => 'システム設定',
        'Navigate by searching in %s settings' => '検索した %s の設定へ移動',
        'Navigate by selecting config groups' => '選択した設定グループへ移動',
        'Download all system config changes' => '変更された全システム設定をダウンロード',
        'Export settings' => '設定のエクスポート',
        'Load SysConfig settings from file' => 'ファイルからシステム設定を読み込み',
        'Import settings' => '設定のインポート',
        'Import Settings' => '設定のインポート',
        'Please enter a search term to look for settings.' => '設定を検索するための条件を入力してください。',
        'Subgroup' => 'サブグループ',
        'Elements' => '要素',

        # Template: AdminSysConfigEdit
        'Edit Config Settings' => '設定を編集',
        'This setting is read only.' => '',
        'This config item is only available in a higher config level!' =>
            'この項目は高設定レベルで設定できます。',
        'Reset this setting' => 'この設定をリセット',
        'Error: this file could not be found.' => 'エラー: ファイルが見つかりませんでした。',
        'Error: this directory could not be found.' => 'エラー: ディレクトリが見つかりませんでした。',
        'Error: an invalid value was entered.' => 'エラー: 無効な値が入力されました。',
        'Content' => '内容',
        'Remove this entry' => '登録を削除',
        'Add entry' => '登録を追加',
        'Remove entry' => '登録を削除',
        'Add new entry' => '新しい登録を追加',
        'Delete this entry' => 'この登録を削除',
        'Create new entry' => '新しい登録を作成',
        'New group' => '新規グループ',
        'Group ro' => 'グループ ro',
        'Readonly group' => '読み取りグループ',
        'New group ro' => '新規グループ ro',
        'Loader' => 'ローダー',
        'File to load for this frontend module' => 'このファイルからフロントエンドモジュールを読み込みます',
        'New Loader File' => '新規読み込みファイル',
        'NavBarName' => 'ナビゲーションバー名',
        'NavBar' => 'ナビゲーションバー',
        'LinkOption' => '連結オプション',
        'Block' => 'ブロック',
        'AccessKey' => 'アクセスキー',
        'Add NavBar entry' => 'ナビゲーションバーに追加',
        'Year' => '年',
        'Month' => '月',
        'Day' => '日',
        'Invalid year' => '無効な年',
        'Invalid month' => '無効な月',
        'Invalid day' => '無効な日',
        'Show more' => 'もっと見る。',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'システムメールアドレスの管理',
        'Add system address' => 'システムアドレス追加',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '宛先かCcにこのアドレスを持つ全てのメールは選択されたキューに振り分けられます。',
        'Email address' => 'メールアドレス',
        'Display name' => '表示名',
        'Add System Email Address' => 'システムメールアドレスの追加',
        'Edit System Email Address' => 'システムメールアドレスの編集',
        'The display name and email address will be shown on mail you send.' =>
            '表示名、メールアドレスは送信メールに表示されます。',

        # Template: AdminSystemMaintenance
        'System Maintenance Management' => 'システムメンテナンス管理',
        'Schedule New System Maintenance' => '新しいシステムメンテナンスをスケジュール',
        'Schedule a system maintenance period for announcing the Agents and Customers the system is down for a time period.' =>
            'このシステムメンテナンスが開始する前に、ユーザはシステムメンテナンスが行われることについてアナウンスする各画面上で通知を受け取ります。',
        'Some time before this system maintenance starts the users will receive a notification on each screen announcing about this fact.' =>
            '',
        'Start date' => '開始日',
        'Stop date' => '終了日',
        'Delete System Maintenance' => 'システムメンテナンスを削除',
        'Do you really want to delete this scheduled system maintenance?' =>
            'このスケジュールされたシステムメンテナンスを本当に削除しますか？',

        # Template: AdminSystemMaintenanceEdit
        'Edit System Maintenance %s' => 'システムメンテナンス%sを編集',
        'Edit System Maintenance information' => 'システムメンテナンス情報を編集',
        'Date invalid!' => '日時が無効です。',
        'Login message' => 'ログインメッセージ',
        'Show login message' => 'ログインメッセージを表示',
        'Notify message' => '通知メッセージ',
        'Manage Sessions' => 'セッションの管理',
        'All Sessions' => '全てのセッション',
        'Agent Sessions' => '担当者のセッション',
        'Customer Sessions' => '顧客のセッション',
        'Kill all Sessions, except for your own' => '',

        # Template: AdminTemplate
        'Manage Templates' => 'テンプレート管理',
        'Add template' => 'テンプレートを追加',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            'テンプレートは担当者による高速なチケット作成、回答または転送を支援するデフォルトの本文です。',
        'Don\'t forget to add new templates to queues.' => '新しいテンプレートにキューを追加してください。',
        'Add Template' => 'テンプレートを追加',
        'Edit Template' => 'テンプレートを編集',
        'A standard template with this name already exists!' => '',
        'Create type templates only supports this smart tags' => '',
        'Example template' => 'テンプレート例',
        'The current ticket state is' => '現在のチケットの状態は',
        'Your email address is' => 'あなたのメールアドレスは',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => 'テンプレート <-> 添付ファイルの関連性管理',
        'Filter for Attachments' => '添付ファイルでフィルタ',
        'Change Template Relations for Attachment' => '添付ファイルに対するテンプレートの関連性を変更',
        'Change Attachment Relations for Template' => 'テンプレートに対する添付ファイルの関連性を変更',
        'Toggle active for all' => '全てを有効に切り替え',
        'Link %s to selected %s' => '%s を選択された %s へ連結',

        # Template: AdminType
        'Type Management' => 'タイプ管理',
        'Add ticket type' => 'チケットタイプの追加',
        'Add Type' => 'タイプの追加',
        'Edit Type' => 'タイプの編集',
        'A type with this name already exists!' => '',

        # Template: AdminUser
        'Agents will be needed to handle tickets.' => '担当者はチケットを処理するために必要です。',
        'Don\'t forget to add a new agent to groups and/or roles!' => '新規担当者をグループまたはロールに追加してください。',
        'Please enter a search term to look for agents.' => '担当者を検索するための条件を入力してください。',
        'Last login' => '最終ログイン',
        'Switch to agent' => '担当者を切り替え',
        'Add Agent' => '担当者の追加',
        'Edit Agent' => '担当者の編集',
        'Firstname' => '姓',
        'Lastname' => '名',
        'A user with this username already exists!' => '',
        'Will be auto-generated if left empty.' => '空白のままにした場合、自動的に生成されます。',
        'Start' => '開始',
        'End' => '終了',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => '担当者 - グループの関連性の管理',
        'Change Group Relations for Agent' => '担当者に対するグループの関連性を変更',
        'Change Agent Relations for Group' => 'グループに対する担当者の関連性を変更',

        # Template: AgentBook
        'Address Book' => 'アドレス帳',
        'Search for a customer' => '顧客を検索',
        'Add email address %s to the To field' => '宛先にメールアドレス %s を追加',
        'Add email address %s to the Cc field' => 'Ccにメールアドレス %s を追加',
        'Add email address %s to the Bcc field' => 'Bccにメールアドレス %s を追加',
        'Apply' => '適用',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => '顧客情報センター',

        # Template: AgentCustomerInformationCenterSearch
        'Customer User' => '顧客ユーザー',

        # Template: AgentCustomerSearch
        'Duplicated entry' => '重複した登録',
        'This address already exists on the address list.' => '',
        'It is going to be deleted from the field, please try again.' => '',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => '注意: 顧客が無効です。',

        # Template: AgentDaemonInfo
        'The OTRS Daemon is a daemon process that performs asynchronous tasks, e.g. ticket escalation triggering, email sending, etc.' =>
            '',
        'A running OTRS Daemon is mandatory for correct system operation.' =>
            '',
        'Starting the OTRS Daemon' => '',
        'Make sure that the file \'%s\' exists (without .dist extension). This cron job will check every 5 minutes if the OTRS Daemon is running and start it if needed.' =>
            '',
        'Execute \'%s start\' to make sure the cron jobs of the \'otrs\' user are active.' =>
            '',
        'After 5 minutes, check that the OTRS Daemon is running in the system (\'bin/otrs.Daemon.pl status\').' =>
            '',

        # Template: AgentDashboard
        'Dashboard' => 'ダッシュボード',

        # Template: AgentDashboardCalendarOverview
        'in' => '＞',

        # Template: AgentDashboardCommon
        'Available Columns' => '利用可能な列',
        'Visible Columns (order by drag & drop)' => '表示する列 (ドラッグ&ドロップで並び替えできます)',

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => 'エスカレーション済チケット',

        # Template: AgentDashboardCustomerUserList
        'Customer information' => '顧客情報',
        'Phone ticket' => '電話チケット',
        'Email ticket' => 'メールチケット',
        'Start Chat' => '',
        '%s open ticket(s) of %s' => '',
        '%s closed ticket(s) of %s' => '',
        'New phone ticket from %s' => '%sからの新規電話チケット',
        'New email ticket to %s' => '%s宛の新規メールチケット',
        'Start chat' => '',

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s が利用できます。',
        'Please update now.' => '更新してください',
        'Release Note' => 'リリースノート',
        'Level' => 'レベル',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '%s の前の投稿',

        # Template: AgentDashboardStats
        'The configuration for this statistic widget contains errors, please review your settings.' =>
            '',
        'Download as SVG file' => '',
        'Download as PNG file' => '',
        'Download as CSV file' => '',
        'Download as Excel file' => '',
        'Download as PDF file' => '',
        'Grouped' => '',
        'Stacked' => '',
        'Expanded' => '展開',
        'Stream' => '',
        'Please select a valid graph output format in the configuration of this widget.' =>
            '',
        'The content of this statistic is being prepared for you, please be patient.' =>
            '',
        'This statistic can currently not be used because its configuration needs to be corrected by the statistics administrator.' =>
            '',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => 'ロックチケット',
        'My watched tickets' => '監視チケット',
        'My responsibilities' => '責任チケット',
        'Tickets in My Queues' => '担当キュー内チケット',
        'Tickets in My Services' => '担当サービス内チケット',
        'Service Time' => 'サービス時間',
        'Remove active filters for this widget.' => 'このウィジットに対するアクティブ・フィルターを除去',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => '合計',

        # Template: AgentDashboardUserOnline
        'out of office' => '外出中',
        'Selected agent is not available for chat' => '',

        # Template: AgentDashboardUserOutOfOffice
        'until' => '',

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => 'チケットはロック済です',
        'Undo & close' => '',

        # Template: AgentInfo
        'Info' => '情報',
        'To accept some news, a license or some changes.' => 'ニュース、ライセンスなどの変更を受け付ける。',

        # Template: AgentLinkObject
        'Link Object: %s' => '連結対象: %s',
        'go to link delete screen' => '連結解除画面へ移動',
        'Select Target Object' => '対象を選択',
        'Link Object' => '連結対象',
        'with' => 'と',
        'Unlink Object: %s' => '連結解除対象: %s',
        'go to link add screen' => '連結画面へ移動',

        # Template: AgentPreferences
        'Edit your preferences' => '個人設定を編集',
        'Did you know? You can help translating OTRS at %s.' => 'ご存じですか? %sにてOTRSの翻訳にご協力ください。',

        # Template: AgentSpelling
        'Spell Checker' => 'スペルチェック',
        'spelling error(s)' => 'つづり間違い',
        'Apply these changes' => 'この変更を適用',

        # Template: AgentStatisticsAdd
        'Statistics » Add' => '',
        'Add New Statistic' => '',
        'Dynamic Matrix' => '',
        'Tabular reporting data where each cell contains a singular data point (e. g. the number of tickets).' =>
            '',
        'Dynamic List' => '',
        'Tabular reporting data where each row contains data of one entity (e. g. a ticket).' =>
            '',
        'Static' => '',
        'Complex statistics that cannot be configured and may return non-tabular data.' =>
            '',
        'General Specification' => '',
        'Create Statistic' => '',

        # Template: AgentStatisticsEdit
        'Statistics » Edit %s%s — %s' => '',
        'Run now' => '',
        'Statistics Preview' => '',
        'Save statistic' => '',

        # Template: AgentStatisticsImport
        'Statistics » Import' => '',
        'Import Statistic Configuration' => '',

        # Template: AgentStatisticsOverview
        'Statistics » Overview' => '',
        'Statistics' => '統計',
        'Run' => '',
        'Edit statistic "%s".' => '',
        'Export statistic "%s"' => '',
        'Export statistic %s' => '',
        'Delete statistic "%s"' => '',
        'Delete statistic %s' => '',
        'Do you really want to delete this statistic?' => '',

        # Template: AgentStatisticsView
        'Statistics » View %s%s — %s' => '',
        'Statistic Information' => '',
        'Sum rows' => '行の合計',
        'Sum columns' => '列の合計',
        'Show as dashboard widget' => '',
        'Cache' => 'キャッシュ',
        'This statistic contains configuration errors and can currently not be used.' =>
            '',

        # Template: AgentTicketActionCommon
        'Change Free Text of %s%s' => '',
        'Change Owner of %s%s' => '',
        'Close %s%s' => '',
        'Add Note to %s%s' => '',
        'Set Pending Time for %s%s' => '',
        'Change Priority of %s%s' => '',
        'Change Responsible of %s%s' => '',
        'All fields marked with an asterisk (*) are mandatory.' => 'アスタリスク（*）が付いている全ての領域は必須入力です。',
        'Service invalid.' => '無効なサービスです',
        'New Owner' => '新規所有者',
        'Please set a new owner!' => '新規所有者を設定してください。',
        'New Responsible' => '新規 責任者',
        'Next state' => '次の状態',
        'For all pending* states.' => '全ての保留状態に対して有効',
        'Add Article' => '記事を追加',
        'Create an Article' => '',
        'Inform agents' => '',
        'Inform involved agents' => '',
        'Here you can select additional agents which should receive a notification regarding the new article.' =>
            '',
        'Text will also be received by:' => '',
        'Spell check' => 'スペルチェック',
        'Text Template' => '本文テンプレート',
        'Setting a template will overwrite any text or attachment.' => 'テンプレートを設定すると作成中の本文または添付ファイルは上書きされます。',
        'Note type' => 'メモタイプ',

        # Template: AgentTicketBounce
        'Bounce %s%s' => '',
        'Bounce to' => 'バウンスto',
        'You need a email address.' => 'メールアドレスが必要です',
        'Need a valid email address or don\'t use a local email address.' =>
            '有効なメールアドレスを使用するか、ローカルなメールアドレスを使用しないでください。',
        'Next ticket state' => 'チケットの次の状態',
        'Inform sender' => '送信者に知らせる',
        'Send mail' => 'メール送信！',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'チケット一括処理',
        'Send Email' => 'Eメールの送信',
        'Merge to' => 'これと結合',
        'Invalid ticket identifier!' => '無効なチケット識別子です。',
        'Merge to oldest' => '古いものへ結合',
        'Link together' => '一緒に連結',
        'Link to parent' => '親へ連結',
        'Unlock tickets' => 'チケットのロック解除',

        # Template: AgentTicketCompose
        'Compose Answer for %s%s' => '',
        'This address is registered as system address and cannot be used: %s' =>
            '',
        'Please include at least one recipient' => '',
        'Remove Ticket Customer' => '',
        'Please remove this entry and enter a new one with the correct value.' =>
            'このエントリーを削除し、正しい値で新しいエントリーを追加してください。',
        'Remove Cc' => 'Ccを削除',
        'Remove Bcc' => 'Bccを削除',
        'Address book' => 'アドレス帳',
        'Date Invalid!' => '日時が無効です。',

        # Template: AgentTicketCustomer
        'Change Customer of %s%s' => '',
        'Customer user' => '顧客ユーザー',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => '新規メールチケットの作成',
        'Example Template' => '',
        'From queue' => 'キューから',
        'To customer user' => '宛先顧客ユーザー',
        'Please include at least one customer user for the ticket.' => '',
        'Select this customer as the main customer.' => '',
        'Remove Ticket Customer User' => '',
        'Get all' => '全てを取得',

        # Template: AgentTicketEmailOutbound
        'Outbound Email for %s%s' => '',

        # Template: AgentTicketEscalation
        'Ticket %s: first response time is over (%s/%s)!' => '',
        'Ticket %s: first response time will be over in %s/%s!' => '',
        'Ticket %s: update time will be over in %s/%s!' => '',
        'Ticket %s: solution time is over (%s/%s)!' => '',
        'Ticket %s: solution time will be over in %s/%s!' => '',

        # Template: AgentTicketForward
        'Forward %s%s' => '',

        # Template: AgentTicketHistory
        'History of %s%s' => '',
        'History Content' => '履歴内容',
        'Zoom view' => 'ズームビュー',

        # Template: AgentTicketMerge
        'Merge %s%s' => '',
        'Merge Settings' => '',
        'You need to use a ticket number!' => '使用するチケット番号が必要です。',
        'A valid ticket number is required.' => '有効なチケット番号が必要です。',
        'Need a valid email address.' => '有効なメールアドレスが必要です。',

        # Template: AgentTicketMove
        'Move %s%s' => '',
        'New Queue' => '新規キュー',

        # Template: AgentTicketOverviewMedium
        'Select all' => '全選択',
        'No ticket data found.' => 'チケットデータがありません',
        'Open / Close ticket action menu' => '',
        'Select this ticket' => '',
        'First Response Time' => '初回応答期限',
        'Update Time' => '更新期限',
        'Solution Time' => '解決期限',
        'Move ticket to a different queue' => '別のキューへチケットを移転',
        'Change queue' => 'キュー変更',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => '検索オプション変更',
        'Remove active filters for this screen.' => '',
        'Tickets per page' => 'ページ毎のチケット数',

        # Template: AgentTicketOverviewSmall
        'Reset overview' => '',
        'Column Filters Form' => '',

        # Template: AgentTicketPhone
        'Split Into New Phone Ticket' => '新規電話チケットに分割',
        'Save Chat Into New Phone Ticket' => '',
        'Create New Phone Ticket' => '新規電話チケットの作成',
        'Please include at least one customer for the ticket.' => '',
        'To queue' => 'キューへ',
        'Chat protocol' => '',
        'The chat will be appended as a separate article.' => '',

        # Template: AgentTicketPhoneCommon
        'Phone Call for %s%s' => '',

        # Template: AgentTicketPlain
        'View Email Plain Text for %s%s' => '',
        'Plain' => '書式なし',
        'Download this email' => 'このメールをダウンロード',

        # Template: AgentTicketProcess
        'Create New Process Ticket' => '新しいプロセスチケットを作成',
        'Process' => 'プロセス',

        # Template: AgentTicketProcessSmall
        'Enroll Ticket into a Process' => '',

        # Template: AgentTicketSearch
        'Search template' => '検索テンプレート',
        'Create Template' => 'テンプレート作成',
        'Create New' => '新規作成',
        'Profile link' => '編集せずに検索',
        'Save changes in template' => '変更したテンプレートを保存',
        'Filters in use' => '使用中のフィルタ',
        'Additional filters' => '追加のフィルタ',
        'Add another attribute' => '属性を追加',
        'Output' => '出力',
        'Fulltext' => '全文',
        'Remove' => '削除',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            '',
        'Customer User Login' => '顧客ユーザーログイン',
        'Attachment Name' => '',
        '(e. g. m*file or myfi*)' => '',
        'Created in Queue' => 'キューで作成された',
        'Lock state' => 'ロックの状態',
        'Watcher' => '監視者',
        'Article Create Time (before/after)' => '記事作成時間 (前／後)',
        'Article Create Time (between)' => '記事作成時間 (期間中)',
        'Ticket Create Time (before/after)' => 'チケット作成時間 (前／後)',
        'Ticket Create Time (between)' => 'チケット作成時間 (期間中)',
        'Ticket Change Time (before/after)' => 'チケット変更時間 (前／後)',
        'Ticket Change Time (between)' => 'チケット変更時間 (期間中)',
        'Ticket Last Change Time (before/after)' => 'チケット最終変更時間 (前／後)',
        'Ticket Last Change Time (between)' => 'チケット最終変更時間 (期間中)',
        'Ticket Close Time (before/after)' => 'チケット完了時間 (前／後)',
        'Ticket Close Time (between)' => 'チケット完了時間 (期間中)',
        'Ticket Escalation Time (before/after)' => 'チケットエスカレーション時間 (前／後)',
        'Ticket Escalation Time (between)' => 'チケットエスカレーション時間 (期間中)',
        'Archive Search' => '書庫検索',
        'Run search' => '検索を実行',

        # Template: AgentTicketZoom
        'Article filter' => '記事フィルタ',
        'Article Type' => '記事タイプ',
        'Sender Type' => '送信者タイプ',
        'Save filter settings as default' => '既定のフィルタ設定を保存',
        'Event Type Filter' => '',
        'Event Type' => 'イベントタイプ',
        'Save as default' => '',
        'Archive' => 'アーカイブ',
        'This ticket is archived.' => 'このチケットはアーカイブされています。',
        'Locked' => 'ロック状態',
        'Accounted time' => '作業時間',
        'Linked Objects' => '連結済対象',
        'Change Queue' => 'キュー変更',
        'There are no dialogs available at this point in the process.' =>
            '',
        'This item has no articles yet.' => 'このチケットにはまだ記事がありません。',
        'Ticket Timeline View' => '',
        'Article Overview' => '記事一覧',
        'Article(s)' => '記事',
        'Page' => 'ページ',
        'Add Filter' => 'フィルタ追加',
        'Set' => '設定',
        'Reset Filter' => 'フィルタをリセット',
        'Show one article' => '一つの記事を閲覧',
        'Show all articles' => '全ての記事を閲覧',
        'Show Ticket Timeline View' => '',
        'Unread articles' => '未読記事',
        'No.' => '番号',
        'Important' => '重要',
        'Unread Article!' => '未読記事があります。',
        'Incoming message' => '受信メッセージ',
        'Outgoing message' => '送信メッセージ',
        'Internal message' => '内部メッセージ',
        'Resize' => 'リサイズ',
        'Mark this article as read' => '',
        'Show Full Text' => '',
        'Full Article Text' => '',
        'No more events found. Please try changing the filter settings.' =>
            '',
        'by' => 'by',
        'To open links in the following article, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).' =>
            '',
        'Close this message' => 'このメッセージを閉じる',
        'Article could not be opened! Perhaps it is on another article page?' =>
            '',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => '',
        'Load blocked content.' => 'ブロックされた内容を読み込み。',

        # Template: ChatStartForm
        'First message' => '',

        # Template: CustomerError
        'Traceback' => 'トレースバック',

        # Template: CustomerFooter
        'Powered by' => 'Powered by',

        # Template: CustomerFooterJS
        'One or more errors occurred!' => '一つ以上のエラーが発生しました。',
        'Close this dialog' => 'このダイアログを閉じる',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'ポップアップウィンドウを開けませんでした。アプリケーションのポップアップブロッカーを無効にしてください。',
        'If you now leave this page, all open popup windows will be closed, too!' =>
            'このページから移動します。全てのポップアップウィンドウを閉じてもよろしいですか？',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            '既にポップアップウィンドウを開いています。開いているウィンドウを閉じて新しく開きますか？',
        'There are currently no elements available to select from.' => '現在選択可能な要素はありません。',
        'Please turn off Compatibility Mode in Internet Explorer!' => 'Internet Explorerの互換モードを無効にして下さい。',
        'The browser you are using is too old.' => 'ご利用のブラウザは古すぎます。',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'OTRSは次のいずれかのブラウザで実行してください。ブラウザ内で巨大なリストを使用します。',
        'Please see the documentation or ask your admin for further information.' =>
            '詳細はマニュアルを参照するか、管理者にお問い合わせください。',
        'Switch to mobile mode' => 'モバイルモードへ',
        'Switch to desktop mode' => 'デスクトップモードへ',
        'Not available' => '',
        'Clear all' => 'すべてクリア',
        'Clear search' => '検索条件をクリア',
        '%s selection(s)...' => '',
        'and %s more...' => '他%sつ',
        'Filters' => '',
        'Confirm' => '確認',

        # Template: CustomerLogin
        'JavaScript Not Available' => 'JavaScriptが有効になっていません。',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'OTRSを利用するにはお使いのブラウザでJavaScriptを有効にする必要があります。',
        'Browser Warning' => 'ブラウザの警告',
        'One moment please, you are being redirected...' => '',
        'Login' => 'ログイン',
        'User name' => 'ユーザー名',
        'Your user name' => 'ユーザー名',
        'Your password' => 'パスワード',
        'Forgot password?' => 'パスワードを忘れましたか？',
        '2 Factor Token' => '',
        'Your 2 Factor Token' => '',
        'Log In' => 'ログイン',
        'Not yet registered?' => '未登録ですか？',
        'Request new password' => '新規パスワードを申請',
        'Your User Name' => 'ユーザー名',
        'A new password will be sent to your email address.' => '登録されたメールアドレスに新しいパスワードを送信しました。',
        'Create Account' => 'アカウント作成',
        'Please fill out this form to receive login credentials.' => '下記のフォームにログイン時に必要となる事項を入力してください。',
        'How we should address you' => '',
        'Your First Name' => 'あなたの姓',
        'Your Last Name' => 'あなたの名字',
        'Your email address (this will become your username)' => 'あなたの電子メールアドレス (ユーザー名になります)',

        # Template: CustomerNavigationBar
        'Incoming Chat Requests' => '',
        'You have unanswered chat requests' => '',
        'Edit personal preferences' => '個人設定の編集',
        'Logout %s %s' => 'ログアウト %s %s',

        # Template: CustomerRichTextEditor
        'Split Quote' => '',

        # Template: CustomerTicketMessage
        'Service level agreement' => 'サービスレベル契約 (SLA)',

        # Template: CustomerTicketOverview
        'Welcome!' => 'ようこそ！',
        'Please click the button below to create your first ticket.' => 'チケットを作成するために下のボタンをクリックしてください。',
        'Create your first ticket' => 'チケット作成',

        # Template: CustomerTicketSearch
        'Profile' => 'プロファイル',
        'e. g. 10*5155 or 105658*' => '例: 10*5155 または 105658*',
        'Customer ID' => '顧客ID',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'チケット内全文検索 (例 "Max*" または "Muster*")',
        'Recipient' => '宛先',
        'Carbon Copy' => 'Cc',
        'e. g. m*file or myfi*' => '例… m*file、myfi*',
        'Types' => 'タイプ',
        'Time restrictions' => '時間制限',
        'No time settings' => '',
        'Only tickets created' => '作成されたチケットのみ',
        'Only tickets created between' => 'この期間に作成されたチケットのみ',
        'Ticket archive system' => '',
        'Save search as template?' => '検索条件をテンプレートとして保存する',
        'Save as Template?' => 'テンプレートを保存しますか？',
        'Save as Template' => 'テンプレートとして保存',
        'Template Name' => 'テンプレート名',
        'Pick a profile name' => 'テンプレート名',
        'Output to' => '出力: ',

        # Template: CustomerTicketSearchResultShort
        'of' => '/',
        'Search Results for' => '検索結果: ',
        'Remove this Search Term.' => '',

        # Template: CustomerTicketZoom
        'Start a chat from this ticket' => '',
        'Expand article' => '記事を展開',
        'Information' => '情報',
        'Next Steps' => '次のステップ',
        'Reply' => '返信',
        'Chat Protocol' => '',

        # Template: DashboardEventsTicketCalendar
        'All-day' => '終日',
        'Sunday' => '日曜日',
        'Monday' => '月曜日',
        'Tuesday' => '火曜日',
        'Wednesday' => '水曜日',
        'Thursday' => '木曜日',
        'Friday' => '金曜日',
        'Saturday' => '土曜日',
        'Su' => '日',
        'Mo' => '月',
        'Tu' => '火',
        'We' => '水',
        'Th' => '木',
        'Fr' => '金',
        'Sa' => '土',
        'Event Information' => '',
        'Ticket fields' => 'チケット・フィールド',
        'Dynamic fields' => 'ダイナミック・フィールド',

        # Template: Datepicker
        'Invalid date (need a future date)!' => '無効な日付です。 (未来の日付が必要)',
        'Invalid date (need a past date)!' => '',
        'Previous' => '過去',
        'Open date selection' => '対応開始日を選択',

        # Template: Error
        'Oops! An Error occurred.' => 'エラーが発生しました。',
        'You can' => '次のことができます: ',
        'Send a bugreport' => 'バグ報告を送信',
        'go back to the previous page' => '直前のページに戻る',
        'Error Details' => 'エラーの詳細',

        # Template: FooterJS
        'Please enter at least one search value or * to find anything.' =>
            '',
        'Please remove the following words from your search as they cannot be searched for:' =>
            '',
        'Please check the fields marked as red for valid inputs.' => '',
        'Please perform a spell check on the the text first.' => '',
        'Slide the navigation bar' => '',
        'Unavailable for chat' => '',
        'Available for internal chats only' => '',
        'Available for chats' => '',
        'Please visit the chat manager' => '',
        'New personal chat request' => '',
        'New customer chat request' => '',
        'New public chat request' => '',
        'New activity' => '',
        'New activity on one of your monitored chats.' => '',
        'Do you really want to continue?' => '',
        'Information about the OTRS Daemon' => '',
        'This feature is part of the %s.  Please contact us at %s for an upgrade.' =>
            'この機能は %s の一部です。%s の更新についてサポートまでお問い合わせください。',
        'Find out more about the %s' => '',

        # Template: Header
        'You are logged in as' => 'ログイン中: ',

        # Template: Installer
        'JavaScript not available' => 'JavaScriptが利用できません。',
        'Step %s' => 'ステップ %s',
        'Database Settings' => 'データベース設定',
        'General Specifications and Mail Settings' => '共通仕様とメール設定',
        'Finish' => '完了',
        'Welcome to %s' => '',
        'Web site' => 'Webサイト',
        'Mail check successful.' => 'メールチェックに成功しました。',
        'Error in the mail settings. Please correct and try again.' => 'メール設定中にエラーが発生しました。再設定してください。',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => '送信メール設定',
        'Outbound mail type' => '送信メールタイプ',
        'Select outbound mail type.' => '送信メールタイプを選択',
        'Outbound mail port' => '送信メールポート',
        'Select outbound mail port.' => '送信メールポートを選択',
        'SMTP host' => 'SMTPホスト',
        'SMTP host.' => 'SMTPホスト名',
        'SMTP authentication' => 'SMTP認証',
        'Does your SMTP host need authentication?' => 'SMTP認証の必要はありますか？',
        'SMTP auth user' => 'SMTP認証ユーザー',
        'Username for SMTP auth.' => 'SMTP認証で使用するユーザー名',
        'SMTP auth password' => 'SMTP認証パスワード',
        'Password for SMTP auth.' => 'SMTP認証で使用するパスワード',
        'Configure Inbound Mail' => '受信メール設定',
        'Inbound mail type' => '受信メールタイプ',
        'Select inbound mail type.' => '受信メールタイプを選択',
        'Inbound mail host' => '受信メールホスト',
        'Inbound mail host.' => '受信メールホスト名',
        'Inbound mail user' => '受信メールユーザー',
        'User for inbound mail.' => 'メールを受信するユーザー',
        'Inbound mail password' => '受信メールパスワード',
        'Password for inbound mail.' => 'メールを受信するパスワード',
        'Result of mail configuration check' => 'メール設定チェックの結果',
        'Check mail configuration' => 'メール設定チェック',
        'Skip this step' => 'この手順を飛ばす',

        # Template: InstallerDBResult
        'Database setup successful!' => 'データベース　設定成功',

        # Template: InstallerDBStart
        'Install Type' => 'インストールタイプ',
        'Create a new database for OTRS' => '新規にOTRSデータベースを作成する',
        'Use an existing database for OTRS' => '既存のOTRSデータベースを使用する',

        # Template: InstallerDBmssql
        'Database name' => 'データベース名',
        'Check database settings' => 'データベース設定をチェック',
        'Result of database check' => 'データベースチェックの結果',
        'Database check successful.' => 'データベースチェックに成功しました。',
        'Database User' => 'データベース・ユーザー',
        'New' => '新規',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            'このOTRSシステム用に限られた権限の新規データベースユーザーが作成されます。',
        'Repeat Password' => 'パスワードを再度入力',
        'Generated password' => 'パスワードを生成しました。',

        # Template: InstallerDBmysql
        'Passwords do not match' => 'パスワードが一致しません',

        # Template: InstallerDBoracle
        'SID' => 'SID',
        'Port' => 'Port',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'OTRSを使用するには、rootでコマンドライン上 (ターミナル／シェル) から次の行を入力する必要があります。',
        'Restart your webserver' => 'Webサーバを再起動してください。',
        'After doing so your OTRS is up and running.' => 'その後、OTRSの起動を実行してください。',
        'Start page' => 'スタートページ',
        'Your OTRS Team' => 'Your OTRS Team',

        # Template: InstallerLicense
        'Don\'t accept license' => 'ライセンスに同意しない',
        'Accept license and continue' => '',

        # Template: InstallerSystem
        'SystemID' => 'システムID',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            'システムの識別子。各チケット番号とHTTPセッションIDはこの番号が含まれます。',
        'System FQDN' => 'システムのFQDN',
        'Fully qualified domain name of your system.' => 'システムのFQDN',
        'AdminEmail' => '管理者メール',
        'Email address of the system administrator.' => 'システム管理者のメールアドレス',
        'Organization' => '組織',
        'Log' => 'ログ',
        'LogModule' => 'ログモジュール',
        'Log backend to use.' => 'ログバックエンドを使用するには',
        'LogFile' => 'ログファイル',
        'Webfrontend' => 'Webフロントエンド',
        'Default language' => '既定の言語',
        'Default language.' => '既定の言語。',
        'CheckMXRecord' => 'MXレコードのチェック',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '入力されたメールアドレスがDNSのMXレコードと照合されます。利用しているDNSが遅い場合、または公開アドレスが解決できない場合はこのオプションを使用しないでください。',

        # Template: LinkObject
        'Object#' => '対象の番号',
        'Add links' => '連結を追加',
        'Delete links' => '連結を削除',

        # Template: Login
        'Lost your password?' => 'パスワードを忘れた方',
        'Request New Password' => '新規パスワードを申請',
        'Back to login' => 'ログイン画面に戻る',

        # Template: MobileNotAvailableWidget
        'Feature not available' => '',
        'Sorry, but this feature of OTRS is currently not available for mobile devices. If you\'d like to use it, you can either switch to desktop mode or use your regular desktop device.' =>
            '',

        # Template: Motd
        'Message of the Day' => '今日のメッセージ',

        # Template: NoPermission
        'Insufficient Rights' => '権限がありません',
        'Back to the previous page' => '前のページに戻る。',

        # Template: Pagination
        'Show first page' => '最初のページを表示',
        'Show previous pages' => '前のページを表示',
        'Show page %s' => '%s ページを表示',
        'Show next pages' => '次のページを表示',
        'Show last page' => '最後のページを表示',

        # Template: PictureUpload
        'Need FormID!' => '',
        'No file found!' => 'ファイルがありません！',
        'The file is not an image that can be shown inline!' => '',

        # Template: PreferencesNotificationEvent
        'Notification' => '通知',
        'No user configurable notifications found.' => '',
        'Receive messages for notification \'%s\' by transport method \'%s\'.' =>
            '',
        'Please note that you can\'t completely disable notifications marked as mandatory.' =>
            '',
        'Sorry, but you can\'t disable all methods for notifications marked as mandatory.' =>
            '',
        'Sorry, but you can\'t disable all methods for this notification.' =>
            '',

        # Template: ActivityDialogHeader
        'Process Information' => 'プロセス情報',
        'Dialog' => '',

        # Template: Article
        'Inform Agent' => '担当者に知らせる',

        # Template: PublicDefault
        'Welcome' => 'ようこそ',

        # Template: GeneralSpecificationsWidget
        'Permissions' => '権限',
        'You can select one or more groups to define access for different agents.' =>
            'エージェントごとに、複数のグループを同時選択することもできます。',
        'Result formats' => '',
        'The selected time periods in the statistic are time zone neutral.' =>
            '',
        'Create summation row' => '',
        'Generate an additional row containing sums for all data columns.' =>
            '',
        'Create summation column' => '',
        'Generate an additional column containing sums for all data rows.' =>
            '',
        'Cache results' => '',
        'Stores statistics result data in a cache to be used in subsequent views with the same configuration.' =>
            '',
        'Provide the statistic as a widget that agents can activate in their dashboard.' =>
            '',
        'Please note that enabling the dashboard widget will activate caching for this statistic in the dashboard.' =>
            '',
        'If set to invalid end users can not generate the stat.' => '無効なエンドユーザーに設定されている場合、統計を生成できません。',

        # Template: PreviewWidget
        'There are problems in the configuration of this statistic:' => '',
        'You may now configure the X-axis of your statistic.' => '',
        'This statistic does not provide preview data.' => '',
        'Preview format:' => '',
        'Please note that the preview uses random data and does not consider data filters.' =>
            '',
        'Configure X-Axis' => 'X軸の設定',
        'X-axis' => 'X軸',
        'Configure Y-Axis' => 'Y軸の設定',
        'Y-axis' => 'Y軸',
        'Configure Filter' => 'フィルタの設定',

        # Template: RestrictionsWidget
        'Please select only one element or turn off the button \'Fixed\'.' =>
            '',
        'Absolute period' => '',
        'Between' => 'この間',
        'Relative period' => '',
        'The past complete %s and the current+upcoming complete %s %s' =>
            '',
        'Do not allow changes to this element when the statistic is generated.' =>
            '',

        # Template: StatsParamsWidget
        'Format' => '書式',
        'Exchange Axis' => '縦横軸の交換',
        'Configurable params of static stat' => '静的統計情報の設定可能パラメータ',
        'No element selected.' => '要素が選択されていません。',
        'Scale' => '目盛',

        # Template: D3
        'Download SVG' => 'SVG画像のダウンロード',
        'Download PNG' => 'PNG画像のダウンロード',

        # Template: XAxisWidget
        'The selected time period defines the default time frame for this statistic to collect data from.' =>
            '',
        'Defines the time unit that will be used to split the selected time period into reporting data points.' =>
            '',

        # Template: YAxisWidget
        'Please remember that the scale for the Y-axis has to be larger than the scale for the X-axis (e.g. X-axis => Month, Y-Axis => Year).' =>
            '',

        # Template: Test
        'OTRS Test Page' => 'OTRS テストページ',
        'Welcome %s %s' => 'ようこそ %s %s',
        'Counter' => 'カウンター',

        # Template: Warning
        'Go back to the previous page' => '前のページへ戻る',

        # Perl Module: Kernel/Modules/AdminCustomerUser.pm
        'New phone ticket' => '新規電話チケットの作成',
        'New email ticket' => '新規メールチケットの作成',

        # Perl Module: Kernel/Modules/AdminDynamicFieldCheckbox.pm
        'Currently' => '',

        # Perl Module: Kernel/Modules/AdminGenericAgent.pm
        'Please remove the following words because they cannot be used for the ticket selection:' =>
            '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceWebservice.pm
        'Web service "%s" updated!' => 'Webサービス "%s" を更新しました。',
        'Web service "%s" created!' => 'Webサービス "%s" を作成しました。',
        'Web service "%s" deleted!' => 'Webサービス "%s" を削除しました。',

        # Perl Module: Kernel/Modules/AdminNotificationEvent.pm
        'Agent who owns the ticket' => '',
        'Agent who is responsible for the ticket' => '',
        'All agents watching the ticket' => '',
        'All agents with write permission for the ticket' => '',
        'All agents subscribed to the ticket\'s queue' => '',
        'All agents subscribed to the ticket\'s service' => '',
        'All agents subscribed to both the ticket\'s queue and service' =>
            '',
        'Customer of the ticket' => '',
        'Yes, but require at least one active notification method' => '',

        # Perl Module: Kernel/Modules/AdminPackageManager.pm
        'Package not verified due a communication issue with verification server!' =>
            '',

        # Perl Module: Kernel/Modules/AgentDashboardCommon.pm
        'Statistic' => '統計',

        # Perl Module: Kernel/Modules/AgentLinkObject.pm
        'Can not delete link with %s!' => '',
        'Can not create link with %s!' => '',
        'Object already linked as %s.' => '',

        # Perl Module: Kernel/Modules/AgentStatistics.pm
        'Statistic could not be imported.' => '',
        'Please upload a valid statistic file.' => '',

        # Perl Module: Kernel/Modules/AgentTicketActionCommon.pm
        'No subject' => '',
        'Previous Owner' => '以前の所有者',

        # Perl Module: Kernel/Modules/AgentTicketBulk.pm
        'Ticket is locked by another agent and will be ignored!' => '',

        # Perl Module: Kernel/Modules/AgentTicketPhone.pm
        '%s has left the chat.' => '',
        'This chat has been closed and will be removed in %s hours.' => '',

        # Perl Module: Kernel/Modules/AgentTicketPrint.pm
        'printed by' => 'printed by',
        'Ticket Dynamic Fields' => 'チケット・ダイナミック・フィールド',

        # Perl Module: Kernel/Modules/AgentTicketProcess.pm
        'Pending Date' => '保留期間',
        'for pending* states' => '状態:保留にする',

        # Perl Module: Kernel/Modules/AgentTicketSearch.pm
        'Invalid Users' => '',

        # Perl Module: Kernel/Modules/AgentTicketZoom.pm
        'We are sorry, you do not have permissions anymore to access this ticket in its current state. ' =>
            '',
        'Fields with no group' => '',

        # Perl Module: Kernel/Modules/CustomerTicketSearch.pm
        'Please remove the following words because they cannot be used for the search:' =>
            '',

        # Perl Module: Kernel/Modules/Installer.pm
        'Error: Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '',
        'Error: Please set the value for innodb_log_file_size on your database to at least %s MB (current: %s MB, recommended: %s MB). For more information, please have a look at %s.' =>
            '',

        # Perl Module: Kernel/Output/HTML/Dashboard/TicketGeneric.pm
        'This ticket has no title or subject' => '',

        # Perl Module: Kernel/Output/HTML/Dashboard/UserOnline.pm
        'This user is currently offline' => '',
        'This user is currently active' => '',
        'This user is currently away' => '',
        'This user is currently unavailable' => '',

        # Perl Module: Kernel/Output/HTML/Layout.pm
        'We are sorry, you do not have permissions anymore to access this ticket in its current state.' =>
            '',
        ' You can take one of the next actions:' => '',

        # Perl Module: Kernel/Output/HTML/Layout/LinkObject.pm
        'Linked as' => '',

        # Perl Module: Kernel/Output/HTML/Notification/AgentOTRSBusiness.pm
        '%s Upgrade to %s now! %s' => '',

        # Perl Module: Kernel/Output/HTML/Notification/CustomerSystemMaintenanceCheck.pm
        'A system maintenance period will start at: ' => '',

        # Perl Module: Kernel/Output/HTML/Notification/DaemonCheck.pm
        'Please contact your administrator!' => '',

        # Perl Module: Kernel/Output/HTML/Preferences/Language.pm
        '(in process)' => '',

        # Perl Module: Kernel/Output/HTML/Preferences/NotificationEvent.pm
        'Please make sure you\'ve chosen at least one transport method for mandatory notifications.' =>
            '',

        # Perl Module: Kernel/Output/HTML/Preferences/OutOfOffice.pm
        'Please specify an end date that is after the start date.' => '',

        # Perl Module: Kernel/Output/HTML/Preferences/Password.pm
        'Please supply your new password!' => '',

        # Perl Module: Kernel/Output/HTML/Statistics/View.pm
        'No past complete or the current+upcoming complete relative time value selected.' =>
            '',
        'The selected time period is larger than the allowed time period.' =>
            '',
        'No time scale value available for the current selected time scale value on the X axis.' =>
            '',
        'The selected date is not valid.' => '',
        'The selected end time is before the start time.' => '',
        'There is something wrong with your time selection.' => '',
        'Please select only one element or allow modification at stat generation time.' =>
            '',
        'Please select at least one value of this field or allow modification at stat generation time.' =>
            '',
        'Please select one element for the X-axis.' => 'X軸の要素を1つ選択してください。',
        'You can only use one time element for the Y axis.' => '',
        'You can only use one or two elements for the Y axis.' => '',
        'Please select at least one value of this field.' => '',
        'Please provide a value or allow modification at stat generation time.' =>
            '',
        'Please select a time scale.' => '',
        'Your reporting time interval is too small, please use a larger time scale.' =>
            '',
        'Please remove the following words because they cannot be used for the ticket restrictions: %s.' =>
            '',

        # Perl Module: Kernel/Output/HTML/TicketOverviewMenu/Sort.pm
        'Order by' => '順序',

        # Perl Module: Kernel/System/Console/Command/Dev/Tools/Config2Docbook.pm
        'Configuration Options Reference' => '',
        'This setting can not be changed.' => '',
        'This setting is not active by default.' => '',
        'This setting can not be deactivated.' => '',

        # Perl Module: Kernel/System/Stats/Dynamic/Ticket.pm
        'State Type' => '',
        'Created Priority' => '作成時の優先度',
        'Created State' => '作成時の状態',
        'CustomerUserLogin' => '顧客ユーザーログイン',
        'Create Time' => '作成日時',
        'Close Time' => '完了時間',
        'Escalation - First Response Time' => 'エスカレーション - 第1の応答時間',
        'Escalation - Update Time' => 'エスカレーション - 更新時間',
        'Escalation - Solution Time' => 'エスカレーション - 解決時間',
        'Agent/Owner' => '担当者／所有者',
        'Created by Agent/Owner' => '作成した担当者／所有者',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketAccountedTime.pm
        'Evaluation by' => '評価',
        'Ticket/Article Accounted Time' => 'チケット／記事の作業時間',
        'Ticket Create Time' => 'チケット作成時間',
        'Ticket Close Time' => 'チケット完了時間',
        'Accounted time by Agent' => '担当者の作業時間',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketList.pm
        'Attributes to be printed' => '印刷する属性',
        'Sort sequence' => '並べ替え順序',
        'State Historic' => '',
        'State Type Historic' => '',
        'Historic Time Range' => '',

        # Perl Module: Kernel/System/Stats/Static/StateAction.pm
        'Days' => '日',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/TablePresence.pm
        'Table Presence' => 'テーブル プレゼンス',
        'Internal Error: Could not open file.' => 'インターナルエラー: ファイルを開けることができません',
        'Table Check' => 'テーブルチェック',
        'Internal Error: Could not read file.' => 'インターナルエラー: ファイルが読み込めませんでした',
        'Tables found which are not present in the database.' => 'データベースに存在しないテーブルが見つかりました',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Size.pm
        'Database Size' => 'データーベースサイズ',
        'Could not determine database size.' => 'データーベースサイズが特定できませんでした',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Version.pm
        'Database Version' => 'データベースのバージョン',
        'Could not determine database version.' => 'データベースのバージョンが特定できませんでした',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Charset.pm
        'Client Connection Charset' => 'クライアントコネクションのキャラクターセット',
        'Setting character_set_client needs to be utf8.' => 'character_set_client は utf8 に設定する必要があります',
        'Server Database Charset' => 'データーベースサーバーのキャラクターセット',
        'Setting character_set_database needs to be UNICODE or UTF8.' => 'character_set_database設定は UNICODE または UTF8 である必要があります',
        'Table Charset' => 'Table キャラクターセット',
        'There were tables found which do not have utf8 as charset.' => 'utf8 に設定されていない tableが見つかりました',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/InnoDBLogFileSize.pm
        'InnoDB Log File Size' => 'InnoDBログのファイルサイズ',
        'The setting innodb_log_file_size must be at least 256 MB.' => 'innodb_log_file_size 設定は最低でも256MBにする必要があります。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/MaxAllowedPacket.pm
        'Maximum Query Size' => '最大クエリサイズ',
        'The setting \'max_allowed_packet\' must be higher than 20 MB.' =>
            'max_allowed_packet 設定が20MB以上にする必要があります',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Performance.pm
        'Query Cache Size' => 'クエリキャッシュサイズ',
        'The setting \'query_cache_size\' should be used (higher than 10 MB but not more than 512 MB).' =>
            'query_cache_size の設定を行ってください (設定値は10MB以上512MB以下に設定する必要があります)',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/StorageEngine.pm
        'Default Storage Engine' => 'デフォルトのストレージエンジン',
        'Table Storage Engine' => '',
        'Tables with a different storage engine than the default engine were found.' =>
            'デフォルトのストレージエンジンと違うストレージエンジン設定の Table が見つかりました',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Version.pm
        'MySQL 5.x or higher is required.' => '動作要件は MySQL 5.x 以上になっています ',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/oracle/NLS.pm
        'NLS_LANG Setting' => 'NLS_LANG 設定',
        'NLS_LANG must be set to al32utf8 (e.g. GERMAN_GERMANY.AL32UTF8).' =>
            '',
        'NLS_DATE_FORMAT Setting' => 'NLS_DATE_FORMAT 設定',
        'NLS_DATE_FORMAT must be set to \'YYYY-MM-DD HH24:MI:SS\'.' => 'NLS_DATE_FORMAT は YYYY-MM-DD HH24:MI:SS に設定されている必要があります',
        'NLS_DATE_FORMAT Setting SQL Check' => 'NLS_DATE_FORMAT 設定 SQL チェック',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Charset.pm
        'Setting client_encoding needs to be UNICODE or UTF8.' => ' client_encodingはユニコードまたはUTF8 に設定する必要があります',
        'Setting server_encoding needs to be UNICODE or UTF8.' => 'server_encodingはユニコードまたはUTF8 に設定する必要があります',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/DateStyle.pm
        'Date Format' => 'データーフォーマット',
        'Setting DateStyle needs to be ISO.' => '日付の設定はISOフォーマットに従ってください',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Version.pm
        'PostgreSQL 8.x or higher is required.' => 'PostgreSQL 8.x 以上が要件になります',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskPartitionOTRS.pm
        'OTRS Disk Partition' => 'OTRS ディスクパーティション',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpace.pm
        'Disk Usage' => 'ディスク利用率',
        'The partition where OTRS is located is almost full.' => 'OTRS がインストールされているディスクパーティションがもうすぐいっぱいになります',
        'The partition where OTRS is located has no disk space problems.' =>
            'OTRS がインストールされているディスクパーティションはディスクスペースの問題は起こっていません',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpacePartitions.pm
        'Operating System/Disk Partitions Usage' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Distribution.pm
        'Distribution' => 'ディストリビューション',
        'Could not determine distribution.' => 'ディストリビューションを特定できませんでした',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/KernelVersion.pm
        'Kernel Version' => 'カーネルバージョン',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Load.pm
        'System Load' => 'システムロード',
        'The system load should be at maximum the number of CPUs the system has (e.g. a load of 8 or less on a system with 8 CPUs is OK).' =>
            'CPUの最大値はシステムの最大値を超えて読み込むことはできません(例. 8または8以下のCPUを　8 CPUのシステムで読み込むことは可能です).',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/PerlModules.pm
        'Perl Modules' => 'Perl モジュール',
        'Not all required Perl modules are correctly installed.' => '必要な Perl モジュールが一部インストールされていません ',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Swap.pm
        'Free Swap Space (%)' => '未使用の Swap 領域 (%)',
        'No swap enabled.' => '',
        'Used Swap Space (MB)' => '利用 Swap 領域 (MB) ',
        'There should be more than 60% free swap space.' => '未利用のSwap領域が少なくとも 60 % 必要です',
        'There should be no more than 200 MB swap space used.' => '200MB 以上のSwap 領域が存在してはいけない',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ConfigSettings.pm
        'OTRS/Config Settings' => '',
        'Could not determine value.' => 'value を特定できませんでした',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DaemonRunning.pm
        'OTRS' => 'OTRS',
        'Daemon' => '',
        'Daemon is not running.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DatabaseRecords.pm
        'OTRS/Database Records' => '',
        'Tickets' => 'チケット',
        'Ticket History Entries' => 'チケット履歴エントリ',
        'Articles' => '記事',
        'Attachments (DB, Without HTML)' => '添付(DB, HTML以外)',
        'Customers With At Least One Ticket' => '一つ以上のチケットがある顧客',
        'Dynamic Field Values' => 'ダイナミックフィールドの値',
        'Invalid Dynamic Fields' => '不正なダイナミック・フィールドです',
        'Invalid Dynamic Field Values' => 'Dynamic Fieldの値は不正です',
        'GenericInterface Webservices' => '汎用インタフェースWebサービス',
        'Months Between First And Last Ticket' => '最初と最後のチケットとの間には月間',
        'Tickets Per Month (avg)' => '月毎のチケット数(平均)',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultSOAPUser.pm
        'Default SOAP Username And Password' => '',
        'Security risk: you use the default setting for SOAP::User and SOAP::Password. Please change it.' =>
            'セキュリティーリスク: SOAP::User 及び SOAP::Password のデフォルト設定を利用しています、変更を行ってください。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultUser.pm
        'Default Admin Password' => '管理者のデフォルトパスワード',
        'Security risk: the agent account root@localhost still has the default password. Please change it or invalidate the account.' =>
            'セキュリティーリスク: エージェントアカウント root@localhost はいまだにデフォルトパスワードを利用しています、変更を行ってください。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ErrorLog.pm
        'Error Log' => 'エラーログ',
        'There are error reports in your system log.' => 'システムログにエラーが出力されています。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FQDN.pm
        'FQDN (domain name)' => 'FQDN (ドメインネーム)',
        'Please configure your FQDN setting.' => '',
        'Domain Name' => 'ドメインネーム',
        'Your FQDN setting is invalid.' => 'FQDNの設定が不正です',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FileSystemWritable.pm
        'File System Writable' => '書き込み可能なファイルシステム',
        'The file system on your OTRS partition is not writable.' => 'OTRSパーティション上のファイルシステムは書き込み可能ではありません。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageDeployment.pm
        'Package Installation Status' => '',
        'Some packages are not correctly installed.' => '正しくインストールされていないパッケージが存在します',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageList.pm
        'OTRS/Package List' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/SystemID.pm
        'Your SystemID setting is invalid, it should only contain digits.' =>
            'あなたのSystemID設定は不正です。数字以外は利用できません。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/IndexModule.pm
        'Ticket Index Module' => 'チケットインデクスモジュール',
        'You have more than 60,000 tickets and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            'システムにチケットが60,000以上あるため、バックエンドにはStaticDBを利用するべきです。詳細は管理者マニュアル(パフォーマンスチューニング)を参照してください。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/OpenTickets.pm
        'Open Tickets' => 'オープンチケット',
        'You should not have more than 8,000 open tickets in your system.' =>
            'システム内にチケットが 8,000以上オープンにしないでください',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/SearchIndexModule.pm
        'Ticket Search Index Module' => '',
        'You have more than 50,000 articles and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            'システムに記事が50,000以上あるため、バックエンドにはStaticDBを利用するべきです。詳細は管理者マニュアル(パフォーマンスチューニング)を参照してください。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/StaticDBOrphanedRecords.pm
        'Orphaned Records In ticket_lock_index Table' => 'ticket_lock_indexテーブルに孤立したレコード',
        'Table ticket_lock_index contains orphaned records. Please run bin/otrs.Console.pl "Maint::Ticket::QueueIndexCleanup" to clean the StaticDB index.' =>
            '',
        'Orphaned Records In ticket_index Table' => 'ticket_indexテーブルに孤立したレコード',
        'Table ticket_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            ' ticket_index テーブルに孤立したレコードがあるため、otrs/bin/otrs.CleanTicketIndex.pl を実行してクリーンなStaticDBインデックスを作成してください。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/TimeSettings.pm
        'OTRS/Time Settings' => '',
        'Server time zone' => '',
        'Computed server time offset' => '',
        'OTRS TimeZone setting (global time offset)' => '',
        'TimeZone may only be activated for systems running in UTC.' => '',
        'OTRS TimeZoneUser setting (per-user time zone support)' => '',
        'TimeZoneUser may only be activated for systems running in UTC that don\'t have an OTRS TimeZone set.' =>
            '',
        'OTRS TimeZone setting for calendar ' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/LoadedModules.pm
        'Webserver/Loaded Apache Modules' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/MPMModel.pm
        'Webserver' => 'Webサーバー',
        'MPM model' => 'MPMモデル',
        'OTRS requires apache to be run with the \'prefork\' MPM model.' =>
            'OTRSはapacheがMPMモデルがpreforkで実行されている必要があります。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/Performance.pm
        'CGI Accelerator Usage' => 'CGIアクセラレータの有無',
        'You should use FastCGI or mod_perl to increase your performance.' =>
            'パフォーマンス向上のためFastCGIまたはmod_perlの使用を推奨します。',
        'mod_deflate Usage' => 'mod_deflateの有無',
        'Please install mod_deflate to improve GUI speed.' => 'GUIのパフォーマンス向上のためmod_deflateをインストールしてください。',
        'mod_filter Usage' => 'mod_filter の有無',
        'Please install mod_filter if mod_deflate is used.' => 'moddeflateを利用する場合は、mod_filterをインストールしてください。',
        'mod_headers Usage' => 'mod_headersの有無',
        'Please install mod_headers to improve GUI speed.' => 'GUIのパフォーマンス向上のためmod_headersをインストールしてください。',
        'Apache::Reload Usage' => 'Apache::Reloadモジュール使用',
        'Apache::Reload or Apache2::Reload should be used as PerlModule and PerlInitHandler to prevent web server restarts when installing and upgrading modules.' =>
            ' PerlModuleとしてApache::Reload あるいは Apache2::Reload が利用され、インストールあるいはモジュールのアップグレード中のWebサーバー再起動を防ぐために、PerlInitHandlerが利用されるべきです',
        'Apache2::DBI Usage' => '',
        'Apache2::DBI should be used to get a better performance  with pre-established database connections.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/EnvironmentVariables.pm
        'Webserver/Environment Variables' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/IIS/Performance.pm
        'You should use PerlEx to increase your performance.' => 'パフォーマンス向上のため、Perl正規表現を使うべきです。',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Version.pm
        'Webserver Version' => 'Webサイトバージョン',
        'Could not determine webserver version.' => 'WEBサーバのバージョンを決定できません。',

        # Perl Module: Kernel/System/SupportDataCollector/PluginBase.pm
        'Unknown' => 'アンノウン',
        'OK' => 'OK',
        'Problem' => '問題',

        # Perl Module: Kernel/System/Web/InterfaceCustomer.pm
        'Reset password unsuccessful. Please contact your administrator' =>
            '',
        'Panic! Invalid Session!!!' => '',

        # Database XML Definition: scripts/database/otrs-initial_insert.xml
        'Group for default access.' => '',
        'Group of all administrators.' => '',
        'Group for statistics access.' => '',
        'All new state types (default: viewable).' => '',
        'All open state types (default: viewable).' => '',
        'All closed state types (default: not viewable).' => '',
        'All \'pending reminder\' state types (default: viewable).' => '',
        'All \'pending auto *\' state types (default: viewable).' => '',
        'All \'removed\' state types (default: not viewable).' => '',
        'State type for merged tickets (default: not viewable).' => '',
        'New ticket created by customer.' => '',
        'Ticket is closed successful.' => '',
        'Ticket is closed unsuccessful.' => '',
        'Open tickets.' => '対応中チケット',
        'Customer removed ticket.' => '',
        'Ticket is pending for agent reminder.' => '',
        'Ticket is pending for automatic close.' => '',
        'State for merged tickets.' => '',
        'system standard salutation (en)' => '',
        'Standard Salutation.' => '',
        'system standard signature (en)' => '',
        'Standard Signature.' => '',
        'Standard Address.' => '',
        'Follow-ups for closed tickets are possible. Ticket will be reopened.' =>
            '',
        'Follow-ups for closed tickets are not possible. No new ticket will be created.' =>
            '',
        'new ticket' => '新規チケット',
        'Follow-ups for closed tickets are not possible. A new ticket will be created..' =>
            '',
        'Postmaster queue.' => '',
        'All default incoming tickets.' => '',
        'All junk tickets.' => '',
        'All misc tickets.' => '',
        'Automatic reply which will be sent out after a new ticket has been created.' =>
            '',
        'Automatic reject which will be sent out after a follow-up has been rejected (in case queue follow-up option is "reject").' =>
            '',
        'Automatic confirmation which is sent out after a follow-up has been received for a ticket (in case queue follow-up option is "possible").' =>
            '',
        'Automatic response which will be sent out after a follow-up has been rejected and a new ticket has been created (in case queue follow-up option is "new ticket").' =>
            '',
        'Auto remove will be sent out after a customer removed the request.' =>
            '',
        'default reply (after new ticket has been created)' => '',
        'default reject (after follow-up and rejected of a closed ticket)' =>
            '',
        'default follow-up (after a ticket follow-up has been added)' => '',
        'default reject/new ticket created (after closed follow-up with new ticket creation)' =>
            '',
        'Unclassified' => '未分類',
        'tmp_lock' => '',
        'email-notification-ext' => '',
        'email-notification-int' => '',
        'fax' => 'fax',
        'Ticket create notification' => '',
        'Ticket follow-up notification (unlocked)' => '',
        'Ticket follow-up notification (locked)' => '',
        'Ticket owner update notification' => '',
        'Ticket responsible update notification' => '',
        'Ticket new note notification' => '',
        'Ticket queue update notification' => '',
        'Ticket pending reminder notification (locked)' => '',
        'Ticket pending reminder notification (unlocked)' => '',
        'Ticket escalation notification' => '',
        'Ticket escalation warning notification' => '',
        'Ticket service update notification' => '',

        # SysConfig
        '
Dear Customer,

Unfortunately we could not detect a valid ticket number
in your subject, so this email can\'t be processed.

Please create a new ticket via the customer panel.

Thanks for your help!

 Your Helpdesk Team
' => '
お客様

表題に記載ののチケット番号は有効ではございません。
大変申し訳ありませんが、このメールの処理は行われません。

カスタマーパネルより新たなチケットを作成願います。

ヘルプデスク担当
',
        ' (work units)' => '(工数)',
        '"%s" notification was sent to "%s" by "%s".' => '',
        '%s' => '%s',
        '%s time unit(s) accounted. Now total %s time unit(s).' => '%s time unit(s) accounted. Now total %s time unit(s).',
        '(UserLogin) Firstname Lastname' => '(ユーザー名) 姓 名 ',
        '(UserLogin) Lastname, Firstname' => '(ユーザー名) 名, 姓',
        'A Website' => '',
        'A list of dynamic fields that are merged into the main ticket during a merge operation. Only dynamic fields that are empty in the main ticket will be set.' =>
            '',
        'A picture' => '',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '親チケットについて、その全ての子チケットがすでにクローズされている場合にのみ、クローズすることを許可するACLモジュールです（“State”は、全ての子チケットがクローズされるまで、親チケットにどの状態が適用不可であるかを示しています）。',
        'Access Control Lists (ACL)' => 'アクセス制御リスト (ACL)',
        'AccountedTime' => '作業時間',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '最も古いチケットを含むキューの、点滅メカニズムを有効にします。',
        'Activates lost password feature for agents, in the agent interface.' =>
            '担当者インタフェースにおいて、パスワード忘れ機能を有効にします。',
        'Activates lost password feature for customers.' => '顧客に関する、パスワード忘れ機能を有効にします。',
        'Activates support for customer groups.' => '顧客グループのためのサポートを有効にします。',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            'ズームビューで、どの項目を表示するか特定するために項目フィルタを有効にします。',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            'システムで利用可能なテーマをアクティベートします。値1がアクティブ、0が非アクティブを意味します。',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            'チケット・アーカイブ・システムを有効にすることで、チケットの一部をデイリーの範囲から外し、システムのスピードを速くします。これらのチケットを検索する際には、チケット検索においてアーカイブ・フラッグを有効にする必要があります。',
        'Activates time accounting.' => 'タイム・アカウンティングを有効にします。',
        'ActivityID' => '',
        'Add an inbound phone call to this ticket' => '',
        'Add an outbound phone call to this ticket' => '',
        'Added email. %s' => 'Added email. %s',
        'Added link to ticket "%s".' => 'Added link to ticket "%s".',
        'Added note (%s)' => 'Added note (%s)',
        'Added subscription for user "%s".' => 'Added subscription for user "%s".',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            'OTRSログ・ファイルに対して、実際の年と月による接尾辞を追加します。毎月のログファイルが作成されます。',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface. The customers email address won\'t be added if the article type is email-internal.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '一度だけの休日を追加します。数字は1～9までの単純な数字のパターンを使用してください（01～09ではない）。',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '定常的な休日を追加します。数字は1～9までの単純な数字のパターンを使用してください（01～09ではない）。',
        'After' => '',
        'Agent called customer.' => 'Agent called customer.',
        'Agent interface article notification module to check PGP.' => 'PGPをチェックするための、担当者インタフェースの項目通知のモジュールです。',
        'Agent interface article notification module to check S/MIME.' =>
            'S/MIME-Keyが利用可能かつtrueである場合、Ticket-Zoom-Viewで受信Eメールをチェックする、担当者インタフェースのモジュールです。',
        'Agent interface module to access CIC search via nav bar.' => '',
        'Agent interface module to access fulltext search via nav bar.' =>
            'nav barを通じてフル・テキスト検索にアクセスするための、担当者インタフェースのモジュールです。',
        'Agent interface module to access search profiles via nav bar.' =>
            'nav barを通じて検索プロファイルにアクセスするための、担当者インタフェースのモジュールです。',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            'S/MIME-Keyが利用可能かつtrueである場合、Ticket-Zoom-Viewで受信Eメールをチェックする、担当者インタフェースのモジュールです。',
        'Agent interface notification module to see the number of locked tickets.' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for.' =>
            '1人の担当者が責任を有するチケットの数を見るための、担当者インタフェース通知モジュールです。',
        'Agent interface notification module to see the number of tickets in My Services.' =>
            '',
        'Agent interface notification module to see the number of watched tickets.' =>
            '監視されているチケットの数を見るための、担当者インタフェース通知モジュールです。',
        'Agents <-> Groups' => '担当者 <-> グループ',
        'Agents <-> Roles' => '担当者 <-> ロール',
        'All customer users of a CustomerID' => '',
        'Allows adding notes in the close ticket screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '担当者が、個別に関連する（individual-related）統計を生成できるようにします。',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            'チケットの添付をブラウザに表示するか（インライン）、単にダウンロードできるようにするか（アタッチメント）、選択できるようにします。',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '顧客インタフェースで、顧客チケットに関する次の構成（compose）状態を選択することを許可します。',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '顧客が顧客インタフェースでチケット優先度を設定することを、許可します。',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '顧客が顧客インタフェースでチケットSLAを設定することを、許可します。',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '顧客が顧客インタフェースでチケット優先度を設定することを、許可します。',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '顧客が顧客インタフェースでチケット・キューを設定することを、許可します。‘No’に設定した場合、QueueDefaultを設定する必要があります。',
        'Allows customers to set the ticket service in the customer interface.' =>
            '顧客が顧客インタフェースでチケット・サービスを設定することを、許可します。',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            'チケットに関して新規タイプを定義することを許可します（チケット責任者機能が有効となっている場合）。',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            'チケットに関するサービスおよびSLA（例：email, desktop, network, ...)、およびSLAのエスカレーション属性を定義することを、許可します（チケット・サービス/SLA機能が有効となっている場合）。',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search e. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search w. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '顧客インタフェースのチケット検索で、検索条件の拡張を許可します。この機能により、利用者はw. g.を次のような条件で検索できます"(key1&&key2)" または "(key1||key2)"。',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '中程度のフォーマットでのチケット一覧の表示を許可します（CustomerInfo => 1 - 顧客情報も表示します)。',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '小さいフォーマットでのチケット一覧の表示を許可します（CustomerInfo => 1 - 顧客情報も表示します)。',
        'Allows invalid agents to generate individual-related stats.' => '',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            '管理者は、顧客ユーザ管理パネルを経由して、他の顧客としてログインすることができます。',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '管理者が、ユーザ管理パネルを通じて、別のユーザとしてログインすることを許可します。',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '担当者インタフェースの移動チケット画面で、新しいチケット状態を設定することを許可します。',
        'Arabic (Saudi Arabia)' => '',
        'Archive state changed: "%s"' => '',
        'ArticleTree' => '',
        'Attachments <-> Templates' => '添付ファイル <-> テンプレート',
        'Auto Responses <-> Queues' => '自動応答 <-> キュー',
        'AutoFollowUp sent to "%s".' => 'AutoFollowUp sent to "%s".',
        'AutoReject sent to "%s".' => 'AutoReject sent to "%s".',
        'AutoReply sent to "%s".' => 'AutoReply sent to "%s".',
        'Automated line break in text messages after x number of chars.' =>
            'X個の文字型の後の、テキスト・メッセージにおける自動化されたライン・ブレイク。',
        'Automatically lock and set owner to current Agent after opening the move ticket screen of the agent interface.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            'バルク・アクションのために選択した後に、所有者をロックし現在のAgentに設定します。',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled).' =>
            'チケット所有者を、自動的にそのチケットの責任者として設定します（チケット責任者機能が有効となっている場合）。',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '1人目の所有者のアップデートの後、自動的にチケットの責任者を設定します（もし、また設定されていなければ）。',
        'Balanced white skin by Felix Niklas (slim version).' => '',
        'Balanced white skin by Felix Niklas.' => 'Felix Niklasによるバランスト・ホワイト・スキンです。',
        'Basic fulltext index settings. Execute "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild" in order to generate a new index.' =>
            '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '件名に有効なチケット番号を持たない全ての受信メールを、From: @example.com addressを用いてブロックします。',
        'Bounced to "%s".' => 'Bounced to "%s".',
        'Builds an article index right after the article\'s creation.' =>
            '項目作成の直後に、項目インデックスをビルドします。',
        'Bulgarian' => '',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            'CMD例のセットアップです。外部CMDがSTDOUTにおいてアウトプットを戻してくる場合にEメールを無視します（Eメールは、STDIN of some.binへとパイプされます）。',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the DB ACL backend.' => '',
        'Cache time in seconds for the DB process backend.' => '',
        'Cache time in seconds for the SSL certificate attributes.' => '',
        'Cache time in seconds for the ticket process navigation bar output module.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Catalan' => '',
        'Change password' => 'パスワード変更',
        'Change queue!' => 'キュー変更！',
        'Change the customer for this ticket' => 'このチケットの顧客を変更',
        'Change the free fields for this ticket' => 'このチケットの自由領域を変更',
        'Change the priority for this ticket' => 'このチケットの優先度を変更',
        'Change the responsible for this ticket' => '',
        'Changed priority from "%s" (%s) to "%s" (%s).' => 'Changed priority from "%s" (%s) to "%s" (%s).',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '全員に対して、チケット所有者の変更を行います（ASPにおいて便利です）。通常は、チケットのキューにおいてrw許可を持つ担当者のみが、表示されます。',
        'Checkbox' => 'チェックボックス',
        'Checks if an E-Mail is a followup to an existing ticket by searching the subject for a valid ticket number.' =>
            '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            'チケット番号ディテクションの中のシステムIDを、フォローアップのために確認します (もし、システムIDがシステム利用後に変更されていた場合は“No”を使用してください)。',
        'Checks the availability of OTRS Business Solution™ for this system.' =>
            '',
        'Checks the entitlement status of OTRS Business Solution™.' => '',
        'Chinese (Simplified)' => '',
        'Chinese (Traditional)' => '',
        'Choose for which kind of ticket changes you want to receive notifications.' =>
            '通知を受け取りたいチケットの変更の種類を選択してください。',
        'Closed tickets (customer user)' => '完了チケット(顧客ユーザー)',
        'Closed tickets (customer)' => '完了チケット(顧客)',
        'Cloud Services' => 'クラウドサービス',
        'Cloud service admin module registration for the transport layer.' =>
            '',
        'Collect support data for asynchronous plug-in modules.' => '',
        'Column ticket filters for Ticket Overviews type "Small".' => '',
        'Columns that can be filtered in the escalation view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the locked view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the queue view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the responsible view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the service view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the status view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the ticket search result view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the watch view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Comment for new history entries in the customer interface.' => '顧客インタフェースの新規履歴エントリーのためのコメントです。',
        'Comment2' => '',
        'Communication' => 'コミュニケーション',
        'Company Status' => '企業ステータス',
        'Company Tickets' => '企業チケット',
        'Company name which will be included in outgoing emails as an X-Header.' =>
            '',
        'Configure Processes.' => 'プロセスの構成',
        'Configure and manage ACLs.' => 'ACLの設定と管理',
        'Configure any additional readonly mirror databases that you want to use.' =>
            '',
        'Configure sending of support data to OTRS Group for improved support.' =>
            '',
        'Configure which screen should be shown after a new ticket has been created.' =>
            '新規チケットが作成された後に表示する画面を選択してください。',
        'Configure your own log text for PGP.' => 'PGPのための利用者独自のログテキストを設定します。',
        'Configures a default TicketDynamicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://otrs.github.io/doc/), chapter "Ticket Event Module".' =>
            '',
        'Controls how to display the ticket history entries as readable values.' =>
            '',
        'Controls if customers have the ability to sort their tickets.' =>
            '顧客が自らのチケットをソートする機能を持つかどうかを、コントロールします。',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            '',
        'Controls if the admin is allowed to import a saved system configuration in SysConfig.' =>
            '',
        'Controls if the admin is allowed to make changes to the database via AdminSelectBox.' =>
            '',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            '',
        'Converts HTML mails into text messages.' => 'HTMLメールをテキストメッセージに変換',
        'Create New process ticket' => '',
        'Create and manage Service Level Agreements (SLAs).' => 'サービスレベル契約 (SLA) の作成と管理',
        'Create and manage agents.' => '担当者の作成と管理',
        'Create and manage attachments.' => '添付ファイルの作成と管理',
        'Create and manage customer users.' => '顧客ユーザーの作成と管理',
        'Create and manage customers.' => '顧客の作成と管理',
        'Create and manage dynamic fields.' => 'ダイナミック・フィールドの作成と管理',
        'Create and manage groups.' => 'グループの作成と管理',
        'Create and manage queues.' => 'キューの作成と管理',
        'Create and manage responses that are automatically sent.' => '自動送信する応答の作成と管理',
        'Create and manage roles.' => 'ロールの作成と管理',
        'Create and manage salutations.' => '挨拶文の作成と管理',
        'Create and manage services.' => 'サービスの作成と管理',
        'Create and manage signatures.' => '署名の作成と管理',
        'Create and manage templates.' => 'テンプレートの作成と管理',
        'Create and manage ticket notifications.' => 'チケット通知の作成と管理',
        'Create and manage ticket priorities.' => 'チケット優先度の作成と管理',
        'Create and manage ticket states.' => 'チケット状態の作成と管理',
        'Create and manage ticket types.' => 'チケットタイプの作成と管理',
        'Create and manage web services.' => 'Webサービスの作成と管理',
        'Create new email ticket and send this out (outbound)' => '新規メールチケットと外部送信の作成',
        'Create new phone ticket (inbound)' => '新規受信電話チケットの作成',
        'Create new process ticket' => '新規プロセスチケットの作成',
        'Croatian' => '',
        'Custom RSS Feed' => '',
        'Custom text for the page shown to customers that have no tickets yet (if you need those text translated add them to a custom translation module).' =>
            '',
        'Customer Administration' => '顧客管理',
        'Customer User <-> Groups' => '顧客ユーザー <-> グループ',
        'Customer User <-> Services' => '顧客ユーザー <-> サービス',
        'Customer User Administration' => '顧客ユーザー管理',
        'Customer Users' => '顧客ユーザー',
        'Customer called us.' => 'Customer called us.',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer request via web.' => 'Customer request via web.',
        'Customer user search' => '',
        'CustomerID search' => '',
        'CustomerName' => '顧客名',
        'Customers <-> Groups' => '顧客 <-> グループ',
        'Customizable stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Czech' => '',
        'Danish' => '',
        'Data used to export the search result in CSV format.' => '検索結果をCSVフォーマットでエクスポートするために使用されるデータです。',
        'Date / Time' => '日時',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '翻訳セットのデバッグです。“Yes”にセットした場合、翻訳の無い全ての文字列（テキスト）がSTDERRに書かれます。これは、新しく翻訳ファイルを作成している場合に役立ちます。そうでなければ“No”のままにしてください。',
        'Default ACL values for ticket actions.' => 'チケット・アクションに関するデフォルトのACLの値です。',
        'Default ProcessManagement entity prefixes for entity IDs that are automatically generated.' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default display type for recipient (To,Cc) names in AgentTicketZoom and CustomerTicketZoom.' =>
            '',
        'Default display type for sender (From) names in AgentTicketZoom and CustomerTicketZoom.' =>
            '',
        'Default loop protection module.' => 'デフォルトのループ・プロテクション・モジュールです。',
        'Default queue ID used by the system in the agent interface.' => '担当者インタフェースにおいて、システムによって使用されるデフォルトのキューIDです。',
        'Default skin for the agent interface (slim version).' => '担当者インターフェースのデフォルトスキン (スリムバージョン)',
        'Default skin for the agent interface.' => '担当者インターフェースのデフォルトスキン',
        'Default skin for the customer interface.' => '',
        'Default ticket ID used by the system in the agent interface.' =>
            '担当者インタフェースにおいて、システムによって使用されるデフォルトのチケットIDです。',
        'Default ticket ID used by the system in the customer interface.' =>
            '顧客インタフェースで、システムによって使用されるデフォルトのチケットIDです。',
        'Default value for NameX' => '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '定義された文字列（string）の後ろにリンクを追加するhtmlアウトプットのための、フィルタを定義します。エレメント・イメージは、2種類のインプットを許可します。すぐに、イメージの名前です（つまりfaq.png）。この場合、OTRSイメージ・パスが使用されます。2つめの可能性は、イメージにリンクを挿入することです。',
        'Define a mapping between variables of the customer user data (keys) and dynamic fields of a ticket (values). The purpose is to store customer user data in ticket dynamic fields. The dynamic fields must be present in the system and should be enabled for AgentTicketFreeText, so that they can be set/updated manually by the agent. They mustn\'t be enabled for AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer. If they were, they would have precedence over the automatically set values. To use this mapping, you have to also activate the next setting below.' =>
            '',
        'Define dynamic field name for end time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define dynamic field name for start time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define the max depth of queues.' => '',
        'Define the queue comment 2.' => '',
        'Define the service comment 2.' => '',
        'Define the sla comment 2.' => '',
        'Define the start day of the week for the date picker for the indicated calendar.' =>
            '',
        'Define the start day of the week for the date picker.' => '日付ピッカーにおける週の開始曜日を設定します。',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '顧客情報ブロックの最後において、LinkedInアイコンを作成するための顧客アイテムを定義します。',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '顧客情報ブロックの最後において、XINGアイコンを作成するための顧客アイテムを定義します。',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '顧客情報ブロックの最後において、Googleマップのアイコンを作成するための顧客アイテムを定義します。',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '顧客情報ブロックの最後において、Googleマップのアイコンを作成するための顧客アイテムを定義します。',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            'スペル・チェッカーから無視される、デフォルトのワード・リストを定義します。',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            'CVEナンバーの後ろにリンクを追加するhtmlアウトプットのための、フィルタを定義します。エレメント・イメージは、2種類のインプットを許可します。すぐに、イメージの名前です（つまりfaq.png）。この場合、OTRSイメージ・パスが使用されます。2つめの可能性は、イメージにリンクを挿入することです。',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            'MSBulletinナンバーの後ろにリンクを追加するhtmlアウトプットのための、フィルタを定義します。エレメント・イメージは、2種類のインプットを許可します。すぐに、イメージの名前です（つまりfaq.png）。この場合、OTRSイメージ・パスが使用されます。2つめの可能性は、イメージにリンクを挿入することです。',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '定義された文字列（string）の後ろにリンクを追加するhtmlアウトプットのための、フィルタを定義します。エレメント・イメージは、2種類のインプットを許可します。すぐに、イメージの名前です（つまりfaq.png）。この場合、OTRSイメージ・パスが使用されます。2つめの可能性は、イメージにリンクを挿入することです。',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            'バグトラック・ナンバーの後ろにリンクを追加するhtmlアウトプットのための、フィルタを定義します。エレメント・イメージは、2種類のインプットを許可します。すぐに、イメージの名前です（つまりfaq.png）。この場合、OTRSイメージ・パスが使用されます。2つめの可能性は、イメージにリンクを挿入することです。',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '事前定義されたキーワードをハイライトするため、項目の中のテキストを処理するフィルタを定義します。',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '一部のアドレスをシンタクスのチェックから除外する、通常の表現を定義します（"CheckEmailAddresses"が“Yes”に設定されている場合）。このフィールドに、構文的には有効でないがシステムには必要であるEメールアドレス（例："root@localhost"）に関するregrexを入力してください。',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            'アプリケーションで使用されるべきではない全Eメール・アドレスをフィルタするための、一般表現を定義します。',
        'Defines a sleep time in microseconds between tickets while they are been processed by a job.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '特定のユーザ・オプションをロードしたり、ニュースを表示したりするための、役に立つモジュールを定義します。',
        'Defines all the X-headers that should be scanned.' => 'スキャンされるべき全てのX－ヘッダーを定義します。',
        'Defines all the languages that are available to the application. Specify only English names of languages here.' =>
            '',
        'Defines all the languages that are available to the application. Specify only native names of languages here.' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '顧客インタフェースの顧客プレファレンスにおいて、RefreshTimeオブジェクトのための全パラメータを定義します。',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '顧客インタフェースの顧客プレファレンスにおいて、ShownTicketsオブジェクトのための全パラメータを定義します。',
        'Defines all the parameters for this item in the customer preferences.' =>
            '顧客プレファレンスにおいて、本アイテムの全パラメータを定義してください。',
        'Defines all the parameters for this notification transport.' => '',
        'Defines all the possible stats output formats.' => '全ての可能な統計アウトプットのフォーマットを定義します。',
        'Defines an alternate URL, where the login link refers to.' => 'ログイン・リンクが参照する、代替URLを定義します。',
        'Defines an alternate URL, where the logout link refers to.' => 'ログアウト・リンクが参照する、代替URLを定義します。',
        'Defines an alternate login URL for the customer panel..' => '顧客パネルのための代替ログインURLを定義します。',
        'Defines an alternate logout URL for the customer panel.' => '顧客パネルのための代替ログアウトURLを定義します。',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=[% Data.CustomerID %]\' or \'\').' =>
            '',
        'Defines from which ticket attributes the agent can select the result order.' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            'EメールのFromフィールドについて（回答およびEメールチケットからの目標）が、どのように見えるべきかを定義します。',
        'Defines if a pre-sorting by priority should be done in the queue view.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the service view.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのクローズ・チケット画面で、チケット・ロックが必要とされるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者に設定されます）。',
        'Defines if a ticket lock is required in the email outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースで、チケット・バウンス画面でチケットのロックが要求されるかどうかを定義します（まだチケットがロックされていなければ、チケットはロックされ現在の担当者が自動的に所有者に設定されます）。',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのチケット構成画面で、チケット・ロックが要求されるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのチケット転送画面で、チケット・ロックが必要とされるかどうかを定義します。（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのチケット・フリー・テキスト画面で、チケット・ロックが必要であるかどうかを設定します。（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのチケット・メモ画面で、チケット・ロックが必要とされるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、チケット・ロックが必要とされるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、チケット・ロックが必要とされるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、チケット・ロックが必要かどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、チケット・ロックが必要とされるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースのチケット責任者画面で、チケット・ロックが必要とされるかどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '担当者インタフェースで、チケットの顧客を変更するためにチケットのロックが必要かどうかを定義します（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Defines if agents should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '担当者インタフェースにおいて、構成されたメッセージが必ずスペル・チェックされるかどうかを定義します。',
        'Defines if customers should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if the enhanced mode should be used (enables use of table, replace, subscript, superscript, paste from word, etc.).' =>
            '',
        'Defines if the list for filters should be retrieve just from current tickets in system. Just for clarification, Customers list will always came from system\'s tickets.' =>
            '',
        'Defines if the previously valid token should be accepted for authentication. This is slightly less secure but gives users 30 seconds more time to enter their one-time password.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface. If activated, a note must be entered for all ticket actions (no matter if the note itself is configured as active or is originally mandatory for the individual ticket action screen).' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            'タイム・アカウンティングがバルク・アクションにおける全てのチケットに対して、必ず設定されるかどうかを定義します。',
        'Defines queues that\'s tickets are used for displaying as calendar events.' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            'ローカル・レポジトリにアクセスするための、IPの正規表現を定義します。ローカル・レポジトリにアクセスするために、これを有効にする必要があり、またpackage::RepositoryListはリモート・ホストにおいて必要とされます。',
        'Defines the URL CSS path.' => 'URL・CSパスを定義します。',
        'Defines the URL base path of icons, CSS and Java Script.' => 'アイコン、CSS、Java ScriptのURLベースのパスを定義します。',
        'Defines the URL image path of icons for navigation.' => 'ナビゲーションのためのアイコンのURLイメージ・パスを定義します。',
        'Defines the URL java script path.' => 'URL Java Scriptパスを定義します。',
        'Defines the URL rich text editor path.' => 'URLリッチテキスト・エディター・パスを定義します。',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '必要な場合には"CheckMXRecord"検索のための、専用DNSサーバのアドレスを定義します。',
        'Defines the agent preferences key where the shared secret key is stored.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '新しいパスワードに関して、担当者に送信される通知メールの本文テキストを定義します（本リンクを使用した後に、新しいパスワードが送信されます）。',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '新規にリクエストされたパスワードに関するトークンと共に、担当者に送信される通知メールの本文テキストを定義します（本リンクを使用した後に、新しいパスワードが送信されます）。',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '新アカウントについて、顧客に送信される通知メールの本文テキストを定義します。',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '新パスワードについて、顧客に送信される通知メールの本文テキストを定義します（本リンクが使用された後に、新しいパスワードが送信されます）。',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '新しくリクエストされたパスワードに関するトークンと共に、顧客に送信される通知メールの本文テキストとを定義します（本リンクが使用された後に、新しいパスワードが送信されます）。',
        'Defines the body text for rejected emails.' => 'リジェクトされたEメールの本文を定義します。',
        'Defines the calendar width in percent. Default is 95%.' => 'カレンダの幅をパーセントで定義します。デフォルトは95%です。',
        'Defines the cluster node identifier. This is only used in cluster configurations where there is more than one OTRS frontend system. Note: only values from 1 to 99 are allowed.' =>
            '',
        'Defines the column to store the keys for the preferences table.' =>
            'プレファレンス・テーブルのためのキーを格納するコラムを定義してください。',
        'Defines the config options for the autocompletion feature.' => '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '本アイテムのコンフィグ・パラメータを、プレファレンス・ビューで表示されるように定義します。',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '本アイテムのコンフィグ・パラメータを、プレファレンス・ビューで表示されるように定義します。データ・セクションにおいては、システムにインストールされたディクショナリを保持するよう注意してください。',
        'Defines the connections for http/ftp, via a proxy.' => 'プロキシ経由で、http/ftpのための接続を定義します。',
        'Defines the customer preferences key where the shared secret key is stored.' =>
            '',
        'Defines the date input format used in forms (option or input fields).' =>
            'フォームで使用されるデータ・インプット・フォーマットを定義します（オプションまたはインプット・フィールド）。',
        'Defines the default CSS used in rich text editors.' => 'リッチテキスト・エディターで使用されるデフォルトCSSを定義します。',
        'Defines the default auto response type of the article for this operation.' =>
            '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、メモのデフォルトの本文を定義します。',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at http://otrs.github.io/doc/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            'デフォルトのフロント・エンドの言語を設定します。全ての可能性ある値は、システムの利用可能な言語ファイルによって定義されます（次の設定を参照ください)。.',
        'Defines the default history type in the customer interface.' => '顧客インタフェースのデフォルトの履歴タイプを定義します。',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            'タイム・スケールに関するX軸属性の、デフォルト最大数を定義します。',
        'Defines the default maximum number of statistics per page on the overview screen.' =>
            '',
        'Defines the default next state for a ticket after customer follow-up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、チケットのメモを追加した後の、デフォルトの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、チケットのメモを追加した後の、デフォルトの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、メモを追加した後の、デフォルトのチケットの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、メモを追加した後の、デフォルトのチケットの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、メモを追加した後の、デフォルトのチケットの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、メモを追加した後の、デフォルトのチケットの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、メモを追加した後の、デフォルトのチケットの次の状態を定義します。',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、メモを追加した後の、デフォルトのチケットの次の状態を定義します。',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '担当者インタフェースのチケット・バウンス画面で、チケットがバウンスされた後の、デフォルトの次の状態を定義します。',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '担当者インタフェースのチケット転送画面で、チケットの転送された後の、デフォルトの次の状態を定義します。',
        'Defines the default next state of a ticket after the message has been sent, in the email outbound screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '担当者インタフェースのチケット構成画面で、チケットが構成（compose）/回答（answer）された後の、デフォルトの次の状態を定義します。',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、電話チケットのためのデフォルトのメモ本文テキストを定義します。',
        'Defines the default priority of follow-up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '顧客インタフェースで、新規顧客チケットのデフォルトの優先度を定義します。',
        'Defines the default priority of new tickets.' => '新規チケットのデフォルトの優先度を定義します。',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '顧客インタフェースで、新規顧客チケットのためのデフォルトのキューを定義します。',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '動的オブジェクトに関するドロップダウン・メニューにおいて、デフォルトの選択を定義します(Form: Common Specification)。',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '許可（permission）に関するドロップダウン・メニューにおいて、デフォルトの選択を定義します(Form: Common Specification)。',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '統計フォーマットに関するドロップダウン・メニューにおいて、デフォルトの選択を定義します(Form: Common Specification)。フォーマット・キーを挿入してください（Stats::Formatを確認ください）。',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、電話チケットに関するデフォルトの送信者タイプを設定します。',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '顧客インタフェースのチケット・ズーム画面の、チケットに関するデフォルトの送信者タイプを定義します。',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            'チケット検索画面で、デフォルトの表示されるチケット検索属性を定義します。',
        'Defines the default shown ticket search attribute for ticket search screen. Example: "Key" must have the name of the Dynamic Field in this case \'X\', "Content" must have the value of the Dynamic Field depending on the Dynamic Field type,  Text: \'a text\', Dropdown: \'1\', Date/Time: \'Search_DynamicField_XTimeSlotStartYear=1974; Search_DynamicField_XTimeSlotStartMonth=01; Search_DynamicField_XTimeSlotStartDay=26; Search_DynamicField_XTimeSlotStartHour=00; Search_DynamicField_XTimeSlotStartMinute=00; Search_DynamicField_XTimeSlotStartSecond=00; Search_DynamicField_XTimeSlotStopYear=2013; Search_DynamicField_XTimeSlotStopMonth=01; Search_DynamicField_XTimeSlotStopDay=26; Search_DynamicField_XTimeSlotStopHour=23; Search_DynamicField_XTimeSlotStopMinute=59; Search_DynamicField_XTimeSlotStopSecond=59;\' and or \'Search_DynamicField_XTimePointFormat=week; Search_DynamicField_XTimePointStart=Before; Search_DynamicField_XTimePointValue=7\';.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view.' =>
            '',
        'Defines the default sort criteria for all services displayed in the service view.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            'キュー・ビューの全てのキューに関して、優先度ソートの後の、デフォルトのソート順番を定義します。',
        'Defines the default sort order for all services in the service view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => 'デフォルトのスペル・チェッカー辞書を定義します。',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '顧客インタフェースで、新規顧客チケットのデフォルトの状態を定義します。',
        'Defines the default state of new tickets.' => '新規チケットのデフォルトの状態を定義します。',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、電話チケットのためのデフォルトの件名を定義します。',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、メモのデフォルトの件名を定義します。',
        'Defines the default the number of seconds (from current time) to re-schedule a generic interface failed task.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '顧客インタフェースのチケット検索で、チケット・ソートのためのデフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '担当者インタフェースのエスカレーション・ビューで、チケット・ソートのためのデフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '担当者インタフェースのロック済チケット・ビューで、チケット・ソートのためのデフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '担当者インタフェースの責任ビューで、チケット・ソートのためのデフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '担当者インタフェースのステータスビューで、チケット・ソートのためのデフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '担当者インタフェースの監視（watch）ビューで、チケット・ソートのためのデフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '担当者インタフェースのチケット検索結果のチケット・ソートについて、デフォルトのチケット属性を定義します。',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of this operation.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '担当者インタフェースのチケット・バウンス画面で、顧客/送信者に対するデフォルトのチケット・バウンス通知を定義します。',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、電話メモを追加した後のチケットのデフォルトの次の状態を定義してください。',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '担当者インタフェースのエスカレーション・ビューで、デフォルトのチケット順番（優先度ソート後）を定義します。Up:一番古いものをトップに. Down:最新のものをトップに。',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '担当者インタフェースのステータスビューで、デフォルトのチケット順番（優先度によるソートの後）を定義します。Up: 最も古いものがトップ. Down: 最新のものがトップ。',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            ' 担当者インタフェースの責任ビューで、デフォルトのチケットの順番を定義します。Up: 一番古いものがトップ. Down: 最新のものがトップ。',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '担当者インタフェースのロック済チケット・ビューで、デフォルトのチケットの順番を定義します。Up: 一番古いものがトップ. Down: 最新のものがトップ。',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '担当者インタフェースのチケット検索結果で、デフォルトのチケット順番を定義します。Up: 最も古いものがトップ. Down: 最新のものがトップ。',
        'Defines the default ticket order in the ticket search result of the this operation. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '担当者インタフェースの監視（watch）ビューで、デフォルトのチケットの順番を定義します。Up: 一番古いものがトップ. Down: 最新のものがトップ。',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '顧客インタフェースのチケット検索結果で、デフォルトのチケット順番を定義します。Up: 最も古いものがトップ. Down: 最新のものがトップ。',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、チケットのデフォルトの優先度を定義します。',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、デフォルトのチケット優先度を定義します。',
        'Defines the default ticket type for new customer tickets in the customer interface.' =>
            '',
        'Defines the default type for article in the customer interface.' =>
            '顧客インタフェースで、項目のデフォルトのタイプを定義します。',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '担当者インタフェースのチケット転送画面で、転送されたメッセージのデフォルトのタイプを定義します。',
        'Defines the default type of the article for this operation.' => '',
        'Defines the default type of the message in the email outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、メモのデフォルトのタイプを定義します。',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、デフォルトのメモのタイプを定義します。',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、メモのデフォルトのタイプを定義します。',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、メモのデフォルトのタイプを決定します。',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、デフォルトのメモのタイプを定義します。',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、デフォルトのメモのタイプを定義します。',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、デフォルトのメモのタイプを定義します。',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、デフォルトのメモのタイプを定義します。',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、デフォルトのメモのタイプを定義します。',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '顧客インタフェースのチケット・ズーム画面の、デフォルトのメモのタイプを定義します。',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '担当者インタフェースにおいてURLにActionパラメータが与えられない場合、デフォルトで使用されるFrontend-Moduleを定義します。',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '顧客インタフェースのURLに対してActionパラメータが何も与えられない場合の、デフォルトで使用されるFrontend-Moduleを定義します。',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            'チケットについて視認できる、デフォルトの送信者タイプを定義します（デフォルト：customer）。',
        'Defines the dynamic fields that are used for displaying on calendar events.' =>
            '',
        'Defines the fall-back path to open fetchmail binary. Note: The name of the binary needs to be \'fetchmail\', if it is different please use a symbolic link.' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            'URLをハイライトするため、項目の中のテキストを処理するフィルタを定義します。',
        'Defines the format of responses in the ticket compose screen of the agent interface ([% Data.OrigFrom | html %] is From 1:1, [% Data.OrigFromName | html %] is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            'フルに認定されたシステムのドメイン名を定義します。この設定は変数OTRS_CONFIG_FQDNとして使用され、アプリケーションによって使用されるメッセージングの全てのフォームに存在し、ご利用のシステム内のチケットへのリンクを作成することとなります。',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '全顧客が所属するグループを定義します（CustomerGroupSupportが有効であり、全ユーザをこれらのグループで管理したくない場合）。',
        'Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、クローズ・チケット画面アクションの履歴コメントを定義します。',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、Eメール・チケット画面アクションの履歴コメントを定義します。',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースのチケット履歴で使用される、電話チケット画面アクションに関する履歴コメントを定義します。',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            'チケット履歴で使用される、チケット・フリー・テキスト画面のアクションに関する履歴コメントを定義します。',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースのチケット履歴で使用される、チケット・メモ画面アクションに関する履歴コメントを定義します。',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のためにしようされる、チケット所有者画面のアクションのための履歴コメントを定義します。',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット保留画面のアクションのための履歴コメントを定義します。',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースのチケット履歴で使用される、チケット電話アウトバウンド画面アクションに関する履歴コメントを定義します。',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット優先度画面のアクションのための履歴コメントを定義します。',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット責任者画面のアクションのための履歴コメントを定義します。',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '顧客インタフェースでチケット履歴のために使用される、チケット・ズーム・アクションのため履歴コメントを定義します。',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、クローズ・チケット画面アクションの履歴タイプを定義します。',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、Eメール・チケット画面アクションの履歴タイプを定義します。',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースのチケット履歴で使用される、電話チケット画面アクションについて、履歴タイプを定義します。',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            'チケット履歴で使用される。、チケット・フリー・テキスト画面のアクションに関して履歴タイプを定義します。',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースのチケット履歴で使用される、チケット・メモ画面アクションについて、履歴タイプを定義します。',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット所有者画面のアクションのための履歴タイプを定義します。',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット保留画面のアクションのための履歴タイプを定義します。',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースのチケット履歴で使用される、チケット電話アウトバウンド画面アクションについて、履歴タイプを定義します。',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット優先度画面のアクションのための履歴タイプを定義します。',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '担当者インタフェースでチケット履歴のために使用される、チケット責任者画面のアクションのための履歴タイプを定義します。',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '顧客インタフェースでチケット履歴のために使用される、チケット・ズーム・アクションのための履歴タイプを定義します。',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '業務時間とカウントする時間と週の平日数を定義します。',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            'Kernel::Modules::AgentInfoモジュールによってチェックされるキーを定義します。もし、このユーザ・プレファレンス・キーがtrueである場合、メッセージはシステムにより受諾されます。',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            'CustomerAcceptを用いてキーを定義します。もし、このユーザ・プレファレンスがtrueである場合、メッセージがシステムによって受諾されます。',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            'リンク・タイプ"ノーマル"の定義です。もしソース名およびターゲット名が同じ値を含んでいる場合、結果のリンクは非直接リンクになり、そうでない結果は直接リンクになります。',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            'リンク・タイプ\'ParentChild\'の定義です。もしソース名およびターゲット名が同じ値を含んでいる場合、結果のリンクは非直接リンクになり、そうでない結果は直接リンクになります。',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            'リンク・タイプのグループの定義です。同じグループのリンク・タイプは、お互いにキャンセルするように働きます。もしチケットAがチケットBと共に"ノーマル"にリンクされている場合、これらのチケットは\'ParentChild\'関係のリンクとともに追加的にリンクされることはできません。',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the list of possible next actions on an error screen.' =>
            '',
        'Defines the list of types for templates.' => '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '追加的パッケージに関して、オンラインのレポジトリー・リストにアクセスするためのロケーションを定義します。1つめの利用可能な結果が使用されます。',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            'システムのログ・モジュールを定義します。"ファイル"は、与えられたログファイルの全メッセージをライトし、"SysLog"はそのシステムのsyslog daemon、つまりsyslogdを使用します。',
        'Defines the maximal size (in bytes) for file uploads via the browser. Warning: Setting this option to a value which is too low could cause many masks in your OTRS instance to stop working (probably any mask which takes input from the user).' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            'セッションIDのための最大有効時間（秒）を定義します。',
        'Defines the maximum number of affected tickets per job.' => '',
        'Defines the maximum number of pages per PDF file.' => 'PDFファイルごとの最大ページ数を定義します。',
        'Defines the maximum number of quoted lines to be added to responses.' =>
            '',
        'Defines the maximum number of tasks to be executed as the same time.' =>
            '',
        'Defines the maximum size (in MB) of the log file.' => 'ログ・ファイルの最大サイズ（MB）を定義します。',
        'Defines the maximum size in KiloByte of GenericInterface responses that get logged to the gi_debugger_entry_content table.' =>
            '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            '担当者インタフェースにおいて、現在ログインしている全顧客を表示させるモジュールを定義します。',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '担当者インタフェースにおいて、現在ログインしている全ユーザを表示させるモジュールを定義します。',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            '顧客インタフェースにおいて、最近ログインした担当者を表示するモジュールを定義してください。',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            '顧客インタフェースにおいて、最近ログインした顧客を表示するモジュールを定義してください。',
        'Defines the module to authenticate customers.' => '顧客を認証するモジュールを定義します。',
        'Defines the module to display a notification in different interfaces on different occasions for OTRS Business Solution™.' =>
            '',
        'Defines the module to display a notification in the agent interface if the OTRS Daemon is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having system maintenance active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            'もし、システムがアドミン・ユーザによって使用されている場合、担当者インタフェースにおいて通知を表示させるモジュールを定義します（通常はアドミンとして行動する必要はありません）。',
        'Defines the module to generate code for periodic page reloads.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            'メールを送信するためのモジュールを定義します。"Sendmail"は、ご利用のオペレーティング・システムのsendmailバイナリを直接使用します。"SMTP"メカニズムのいずれもが、特定された（外部）メール・サーバを使用します。"DoNotSendEmail"は、Eメールを送らないもので、システム・テストの際に役立ちます。',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            'セッション・データを格納するために使用されるモジュールを定義します。"DB"により、フロント・エンドのサーバをdbサーバから分離させることができます。"FS"はより速いものです。',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            'ウェブ・インタフェース、ウェブ・ブラウザのタブおよびタイトル・バーに表示されるアプリケーション名を定義します。',
        'Defines the name of the column to store the data in the preferences table.' =>
            'プレファレンス・テーブルにおいてデータを格納するコラムの名前を定義します。',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            'プレファレンス・テーブルにおいてユーザ識別子を格納するためのコラムの名前を定義します。',
        'Defines the name of the indicated calendar.' => 'インシデントカレンダーの名称を設定してください。',
        'Defines the name of the key for customer sessions.' => '顧客セッションのためのキーの名前を定義します。',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            'セッション・キーの名前を定義します。つまり、Session、SessionID、OTRSです。',
        'Defines the name of the table, where the customer preferences are stored.' =>
            '顧客のプレファレンスが格納される、テーブル名を定義してください。',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '担当者インタフェースのチケット構成画面で、チケットを構成/回答した後の、可能性ある次の状態を定義します。',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '担当者インタフェースのチケット転送画面で、チケットを作成した後の、可能性ある次の状態を規定します。',
        'Defines the next possible states after sending a message in the email outbound screen of the agent interface.' =>
            'エージェント画面のメール送信画面後に設定できる状態をを設定してください。',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '顧客インタフェースで顧客チケットに関する、次の可能性ある状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、チケットのメモを追加した後の次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、チケットのメモを追加した後の次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、メモを追加した後のチケットの次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、メモを追加した後のチケットの次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、メモを追加した後のチケットの次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、メモを追加した後のチケットの次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、メモを追加した後のチケットの次の状態を定義します。',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、メモを追加した後のチケットの次の状態を定義します。',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '担当者インタフェースのチケット・バウンス画面で、チケットのバウンスされた後の次の状態を定義します。',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '担当者インタフェースの移動チケット画面で、チケットが他のキューへ移動させられた後の次の状態を定義します。',
        'Defines the number of character per line used in case an HTML article preview replacement on TemplateGenerator for EventNotifications.' =>
            '',
        'Defines the number of days to keep the daemon log files.' => '',
        'Defines the number of header fields in frontend modules for add and update postmaster filters. It can be up to 99 fields.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '顧客プレファレンス・テーブルのためのパラメータを定義してください。',
        'Defines the parameters for the dashboard backend. "Cmd" is used to specify command with parameters. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            'ダッシュボード・バックエンドに関するパラメータを定義します。“Group”は、プラグインへのアクセスを制限するために使用されます（Group: admin;group1;group2;)。“Default”は、プラグインがデフォルトで有効になっているか、またはそれをユーザが手動で有効にする必要があるか、を示しています。“CacheTTLLocal”は、プラグインに関してキャッシュが時間切れとなる時間を分で定義します。',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            'ダッシュボード・バックエンドに関するパラメータを定義します。“Group”は、プラグインへのアクセスを制限するために使用されます（Group: admin;group1;group2;)。“Default”は、プラグインがデフォルトで有効になっているか、またはそれをユーザが手動で有効にする必要があるか、を示しています。“CacheTTLLocal”は、プラグインに関してキャッシュが時間切れとなる時間を分で定義します。',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            'ダッシュボード・バックエンドに関するパラメータを定義します。“Limit”は、デフォルトで表示されるエントリー数を定義します。“Group”は、プラグインへのアクセスを制限するために使用されます（Group: admin;group1;group2;)。“Default”は、プラグインがデフォルトで有効になっているか、またはそれをユーザが手動で有効にする必要があるか、を示しています。“CacheTTLLocal”は、プラグインに関してキャッシュが時間切れとなる時間を分で定義します。',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            'ダッシュボード・バックエンドに関するパラメータを定義します。“Limit”は、デフォルトで表示されるエントリー数を定義します。“Group”は、プラグインへのアクセスを制限するために使用されます（Group: admin;group1;group2;)。“Default”は、プラグインがデフォルトで有効になっているか、またはそれをユーザが手動で有効にする必要があるか、を示しています。“CacheTTLLocal”は、プラグインに関してキャッシュが時間切れとなる時間を分で定義します。',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            'SOAPハンドルにアクセスするためのパスワードを定義します(bin/cgi-bin/rpc.pl)。',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            'PDFドキュメントで、太字でイタリックの等幅のフォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            'PDFドキュメントで、太字でイタリックのプロポーショナル・フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            'PDFドキュメントで、太字の等幅フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            'PDFドキュメントで、太字のプロポーショナル・フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            'PDFドキュメントで、イタリックの等幅フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            'PDFドキュメントで、イタリックのプロポーショナル・フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            'PDFドキュメントで、等幅フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            'PDFドキュメントのプロポーショナル・フォントを扱うための、パスおよびTTF-Fileを定義します。',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Templates/Standard/CustomerAccept.tt.' =>
            '',
        'Defines the path to PGP binary.' => 'PGPバイナリへのパスを定義します。',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            'sslバイナリを開くためのパスを定義します。HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).が必要になるかもしれません。',
        'Defines the postmaster default queue.' => 'ポストマスターのデフォルトのキューを定義します。',
        'Defines the priority in which the information is logged and presented.' =>
            '',
        'Defines the recipient target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "System address" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the recipient target of the tickets ("Queue" shows all queues, "SystemAddress" displays all system addresses) in the customer interface.' =>
            '',
        'Defines the required permission to show a ticket in the escalation view of the agent interface.' =>
            '',
        'Defines the search limit for the stats.' => '統計に関する検索のリミットを定義します。',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '担当者の実名と与えられたキューのEメールアドレスに間に置く分離を定義します。',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            'アプリケーション内で顧客が利用できる標準の許可を定義します。もし、より多くの許可が必要になった場合、ここに入力してください。許可が効力を持つためには、ハード・コーディングされる必要があります。なお、前述した許可のいずれかを追加する場合、“rw”許可が、最後のエントリとなることを確実にしてください。',
        'Defines the standard size of PDF pages.' => 'PDFページの標準サイズを定義します。',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            'クローズされたチケットに対してフォローアップを受け取った場合のチケットの状態を定義します。',
        'Defines the state of a ticket if it gets a follow-up.' => 'フォローアップを受け取った場合のチケットの状態を定義します。',
        'Defines the state type of the reminder for pending tickets.' => 'ペンディング・チケットに関するリマインダーの状態タイプを定義します。',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '新しいパスワードに関して、担当者に送信される通知メールの件名を定義します。',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '新規にリクエストされたパスワードに関するトークンと共に、担当者に送信される通知メールの件名を定義します。',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '新アカウントについて、顧客に送信される通知メールの件名を定義します。',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '新パスワードについて、顧客に送信される通知メールの件名を定義します。',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '新しくリクエストされたパスワードに関するトークンと共に、顧客に送信される通知メールの件名を定義します。',
        'Defines the subject for rejected emails.' => 'リジェクトされたEメールの件名を定義します。',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            'システム管理者のEメール・アドレスを定義します。アプリケーションのエラー画面に表示されるものです。',
        'Defines the system identifier. Every ticket number and http session string contains this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            'システム識別子を定義します。すべてのチケット番号とHTTPセッションの文字列は、このIDが含まれています。これはをシステムに属している唯一のチケットがフォローアップとして処理されることを確実にします。（2つのOTRSのインスタンス間で通信する場合に便利です）',
        'Defines the target attribute in the link to external customer database. E.g. \'AsPopup PopupType_TicketAction\'.' =>
            'システム識別子を定義します。すべてのチケット番号とHTTPセッションの文字列は、このIDが含まれています。これはをシステムに属している唯一のチケットがフォローアップとして処理されることを確実にします。（2つのOTRSのインスタンス間で通信する場合に便利です）',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '外部顧客データベースへのリンクにおける、ターゲット属性を定義します。例：\'target="cdb"\'',
        'Defines the ticket fields that are going to be displayed calendar events. The "Key" defines the field or ticket attribute and the "Content" defines the display name.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the two-factor module to authenticate agents.' => '',
        'Defines the two-factor module to authenticate customers.' => '',
        'Defines the type of protocol, used by the web server, to serve the application. If https protocol will be used instead of plain http, it must be specified here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is only used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            'アプリケーションにサービスを提供するWebサーバが使用するプロトコルの種類を定義します。 HTTPSプロトコルをプレーンHTTPの代わりに使用する場合はここで指定する必要があります。これがないWebサーバの設定や行動に影響を与えるので、アプリケーションへのアクセスの方法を変更しないと、それが間違っている場合、アプリケーションにログインできなくなることがあります。この設定は、システム内でのチケットへのリンクを構成するためにアプリケーションが使用するメッセージングのすべての形態で発見されている変数、OTRS_CONFIG_HttpTypeとして使用されます。',
        'Defines the used character for plaintext email quotes in the ticket compose screen of the agent interface. If this is empty or inactive, original emails will not be quoted but appended to the response.' =>
            '',
        'Defines the user identifier for the customer panel.' => '顧客パネルのためのユーザ識別子を定義します。',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            'SOAPハンドルにアクセスするためのユーザ名を定義します(bin/cgi-bin/rpc.pl)。',
        'Defines the valid state types for a ticket.' => 'チケットについて有効な状態タイプを定義します。',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.Console.pl Maint::Ticket::UnlockTimeout" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            'チケットについて、視認できるロックを定義します。デフォルト：unlock, tmp_lock。',
        'Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            'リッチテキスト・エディター・コンポーネントを定義します。数字（ピクセル）またはパーセント値（相対的）を入力します。',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which items are available for \'Action\' in third level of the ACL structure.' =>
            '',
        'Defines which items are available in first level of the ACL structure.' =>
            '',
        'Defines which items are available in second level of the ACL structure.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '状態（キー）のペンディング・タイムが終了した後に、どの状態が自動的に設定されるべきか（コンテンツ）を定義します。',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Defines, which tickets of which ticket state types should not be listed in linked ticket lists.' =>
            '',
        'Delete expired cache from core modules.' => '',
        'Delete expired loader cache weekly (Sunday mornings).' => '',
        'Delete expired sessions.' => '期限切れのセッションデータを削除する。',
        'Deleted link to ticket "%s".' => 'Deleted link to ticket "%s".',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            'もしセッションIDが、無効なリモートIPアドレスと共に使用されている場合、セッションを削除します。',
        'Deletes requested sessions if they have timed out.' => 'リクエストされたセッションがタイムアウトしている場合に削除します。',
        'Deploy and manage OTRS Business Solution™.' => 'OTRS Business Solution™のデプロイと管理',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            'チケットへ移動していくであろう、可能性あるキューのリストが、担当者インタフェースにドロップ・ダウン・リストまたは新規ウィンドウとして表示されるべきかどうかを定義します。"New Window"を設定した場合、チケットに移動メモを追加することができます。',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '担当者インタフェースで、Eメール・チケットを作成した後の、可能性ある次のチケット状態を定義します。',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットを作成した後の、次の可能性あるチケット状態を定義します。',
        'Determines the next possible ticket states, for process tickets in the agent interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '顧客インタフェースで、新規顧客チケットの後の次の画面を決定します。',
        'Determines the next screen after the follow-up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return the last overview screen (e.g. search results, queueview, dashboard). TicketZoom will return to the TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            'タイム・リミットを越えてから状態を変更したペンディング・チケットに対して、可能となる状態を定義します。',
        'Determines the strings that will be shown as recipient (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the recipient.' =>
            '',
        'Determines the strings that will be shown as recipient (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the recipient.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            'リンクされたオブジェクトがそれぞれのズームマスクで表示される方式を定義します。',
        'Determines which options will be valid of the recipient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '顧客インタフェースで、チケットの受信者としてどのキューを有効とするかを定義します。',
        'Disable restricted security for IFrames in IE. May be required for SSO to work in IE8.' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            'チケットの責任者である担当者への、リマインダー通知の送信を無効にします(Ticket::Responsibleが有効にされる必要があります)。',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box.' =>
            'ウェブ・インストーラーを無効にし(http://yourhost.example.com/otrs/installer.pl)、システムがハイジ
ャックされるのを防ぎます。もし、“No”に設定されている場合は、システムは再インストールすることができ、現在の基本
設定がインストーラー・スクリプト内の質問に事前投入されます。もしアクティブでなれけば、Generic Agent、パッケー>ジ・マネジャー、SQLボックスも無効にします（これは、DROP DATABASEなどの破壊的クエリーの使用を避け、ユーザ・パス
ワードの盗難を防ぐためです）。',
        'Display a warning and prevent search when using stop words within fulltext search.' =>
            '',
        'Display settings to override defaults for Process Tickets.' => '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            'チケットズームビューで、項目に関してアカウントされた時間を表示します。',
        'Dropdown' => 'ドロップダウン',
        'Dutch stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields groups for process widget. The key is the name of the group, the value contains the fields to be shown. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###DynamicField.' =>
            '',
        'Dynamic fields options shown in the ticket reply section in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the email outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the sidebar of the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket overview screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and shown by default.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'E-Mail Outbound' => 'メール送信',
        'Edit customer company' => '顧客企業を編集',
        'Email Addresses' => 'メールアドレス',
        'Email sent to "%s".' => 'Email sent to "%s".',
        'Email sent to customer.' => 'Email sent to customer.',
        'Enable keep-alive connection header for SOAP responses.' => '',
        'Enabled filters.' => 'フィルタを有効にする。',
        'Enables PGP support. When PGP support is enabled for signing and encrypting mail, it is HIGHLY recommended that the web server runs as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => 'S/MIMEサポートを有効にします。',
        'Enables customers to create their own accounts.' => '顧客が自ら自身のアカウントを作成できるようにします。',
        'Enables file upload in the package manager frontend.' => 'パッケージ・マネジャー・フロントエンドでの、ファイル・アップロードを有効にします。',
        'Enables or disables the caching for templates. WARNING: Do NOT disable template caching for production environments for it will cause a massive performance drop! This setting should only be disabled for debugging reasons!' =>
            '',
        'Enables or disables the debug mode over frontend interface.' => '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '所有者または責任者になること無くチケットのコールバックを続けるため、チケット監視機能を有効または無効にします。',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            'パフォーマンス・ログを有効にします（ページ・レスポンス・タイムのログを取ります）。システム・パフォーマンスに影響が出ます。Frontend::Module###AdminPerformanceLogを有効とする必要があります。',
        'Enables spell checker support.' => 'スペル・チェッカー・サポートを有効にします。',
        'Enables the minimal ticket counter size (if "Date" was selected as TicketNumberGenerator).' =>
            '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '担当者フロントエンドで、同時に2つ以上のチケットの作業を可能にするためのチケット・バルク・アクション機能を有効にするものです。',
        'Enables ticket bulk action feature only for the listed groups.' =>
            'リストされたグループに対してのみ、チケット・バルク・アクション機能を有効にします。',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '特定のチケットにコールバックするため、チケット責任者機能を有効にします。',
        'Enables ticket watcher feature only for the listed groups.' => 'リストされたグループためにのみ、チケット監視機能を有効にします。',
        'English (Canada)' => '英語(カナダ)',
        'English (United Kingdom)' => '英語(イギリス)',
        'English (United States)' => '英語(アメリカ合衆国)',
        'English stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Enroll process for this ticket' => '',
        'Enter your shared secret to enable two factor authentication.' =>
            '',
        'Escalation response time finished' => '',
        'Escalation response time forewarned' => '',
        'Escalation response time in effect' => '',
        'Escalation solution time finished' => '',
        'Escalation solution time forewarned' => '',
        'Escalation solution time in effect' => '',
        'Escalation update time finished' => '',
        'Escalation update time forewarned' => '',
        'Escalation update time in effect' => '',
        'Escalation view' => 'エスカレーション一覧',
        'EscalationTime' => '',
        'Estonian' => 'エストニア語',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Event module that performs an update statement on TicketIndex to rename the queue name there if needed and if StaticDB is actually used.' =>
            '',
        'Event module that updates customer user search profiles if login changes.' =>
            '',
        'Event module that updates customer user service membership if login changes.' =>
            '',
        'Event module that updates customer users after an update of the Customer.' =>
            '',
        'Event module that updates tickets after an update of the Customer User.' =>
            '',
        'Event module that updates tickets after an update of the Customer.' =>
            '',
        'Events Ticket Calendar' => 'イベント・チケット・カレンダー',
        'Execute SQL statements.' => 'SQL文の実行',
        'Executes a custom command or module. Note: if module is used, function is required.' =>
            '',
        'Executes follow-up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on attachment contents for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on email body for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on the raw source email for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '検索結果で、全ての項目ツリーをエクスポートします（システム・パフォーマンスに影響が出る場合があります）。',
        'Fetch emails via fetchmail (using SSL).' => '',
        'Fetch emails via fetchmail.' => '',
        'Fetch incoming emails from configured mail accounts.' => '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            'プロキシ経由でパッケージを取ってきます（フェッチ）。"WebUserAgent::Proxy"を上書きします。',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Templates/Standard/AgentInfo.tt.' =>
            '',
        'Filter for debugging ACLs. Note: More ticket attributes can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            '',
        'Filter for debugging Transitions. Note: More filters can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            '',
        'Filter incoming emails.' => '受信メールフィルタ',
        'Finnish' => 'フィンランド語',
        'First Queue' => '',
        'FirstLock' => '初回ロック',
        'FirstResponse' => '初回応答',
        'FirstResponseDiffInMin' => '初回応答期限超過時間',
        'FirstResponseInMin' => '初回応答時間',
        'Firstname Lastname' => '姓 名',
        'Firstname Lastname (UserLogin)' => '姓 名 (ユーザー名)',
        'FollowUp for [%s]. %s' => '[%s]に対するフォローアップ。%s',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '送信Eメールのエンコードを強制します(7bit|8bit|quoted-printable|base64)。',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            'ロックのアクションの後に、（現状から）異なるチケット状態を強制的に選択します。現在の状態をキーとして定義し、ロック・アクションの後に来る次の状態をコンテンツとして選択してください。',
        'Forces to unlock tickets after being moved to another queue.' =>
            'チケットが他のキューに移動された後に、強制的にアンロックします。',
        'Forwarded to "%s".' => 'Forwarded to "%s".',
        'French' => 'フランス語',
        'French (Canada)' => 'フランス語（カナダ）',
        'French stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Frontend module registration (disable AgentTicketService link if Ticket Serivice feature is not used).' =>
            'フロントエンド・モジュールの登録 (チケット・サービス機能が使われていない場合、AgentTicketServiceリンクは無効)。',
        'Frontend module registration (disable company link if no company feature is used).' =>
            'フロントエンド・モジュールの登録 (企業機能が使われていない場合、企業リンクは無効)。',
        'Frontend module registration (disable ticket processes screen if no process available) for Customer.' =>
            '顧客向けのフロントエンド・モジュールの登録 (プロセスが利用可能ではない場合、チケット・プロセス画面リンクは無効)。',
        'Frontend module registration (disable ticket processes screen if no process available).' =>
            'フロントエンド・モジュールの登録 (プロセスが利用可能ではない場合、チケット・プロセス画面リンクは無効)。',
        'Frontend module registration for the agent interface.' => '担当者インタフェースに関するフロントエンド・モジュールの登録です。',
        'Frontend module registration for the customer interface.' => '担当者インタフェースに関するフロントエンド・モジュールの登録です。',
        'Frontend theme' => 'フロントエンドのテーマ',
        'Full value' => '',
        'Fulltext index regex filters to remove parts of the text.' => '',
        'Fulltext search' => '全文検索',
        'Galician' => 'ガリシア語',
        'General ticket data shown in the ticket overviews (fall-back). Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note that TicketNumber can not be disabled, because it is necessary.' =>
            '',
        'Generate dashboard statistics.' => '',
        'GenericAgent' => '管理用ジョブ',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPREST GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'German' => 'ドイツ語',
        'German stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            'エンド・ユーザに、翻訳ファイルで定義されている、CSVファイルに関するセパレータ・キャラクターをオーバーライドする可能性を与えます。',
        'Go back' => '戻る',
        'Google Authenticator' => '',
        'Greek' => 'ギリシャ語',
        'Hebrew' => 'ヘブライ語',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild".' =>
            '',
        'Hindi' => 'ヒンディー語',
        'Hungarian' => 'ハンガリー語',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、データベース・ドライバー（通常は自動ディテクションが使用される）を特定できます。',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、顧客テーブルに接続するためのパスワードを特定できます。',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、顧客テーブルに接続するためのユーザ名を特定できます。',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、顧客テーブルに対する接続のためのDSNを特定する必要があります。',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、顧客テーブル内のCustomerPasswordのためのコラム名を特定する必要があります。',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、パスワードのcryptタイプを特定する必要があります。',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、顧客テーブル内のCustomerKeyのためのコラム名を特定する必要があります。',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            'もし、Customer::AuthModuleに関して“DB”が選択されていた場合、顧客データが格納されるべきテーブル名を特定する必要があります。',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            'セッション・モジュールに"DB"が選択されていた場合、セッション・データが格納されるデータベースのテーブルを特定する必要があります。',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            'セッション・モジュールに"FS"が選択されていた場合、セッション・データが格納されるディレクトリを特定する必要があります。',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            'Customer::AuthModuleに関して"HTTPBasicAuth"が選択されていた場合、（RegExpを使用することで）REMOTE_USERの部分を削除することができます（例：trailing domainsを削除するなど）。RegExp-Note, $1が新しいログインとなります。',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            'Customer::AuthModuleに関して"HTTPBasicAuth"が選択されていた場合、ユーザ名の始まりの部分を削除することができます（例：ドメインにおいて、example_domain\userをuserに変える）。',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            'Customer::AuthModuleに関して“LDAP”が選択されていて、全ての顧客ログイン名にsuffix（後ろに付く接尾辞）を追加したい場合、ここで特定してください。例えば、ユーザ名のみを書いても、ユーザがLDAPディレクトリの中ではuser@domainとして存在するなどです。',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            'Customer::AuthModuleに関して“LDAP”が選択されていて、Net::LDAP perl モジュールに対して特別なパラメータが必要な場合、ここで設定できます。パラメータに関するより詳細な情報は、"perldoc Net::LDAPを参照ください。',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            'Customer::AuthModuleに関して“LDAP”が選択されていて、ユーザがLDAPツリーに対して匿名アクセスのみを持っていて、しかしながらデータを検索したいという場合、これをLDAPディレクトリへのアクセスを持つユーザによって行うことができます。この特別なユーザについて、ここでパスワードを設定してください。',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            'Customer::AuthModuleに関して“LDAP”が選択されていて、ユーザがLDAPツリーに対して匿名アクセスのみを持っていて、しかしながらデータを検索したいという場合、これをLDAPディレクトリへのアクセスを持つユーザによって行うことができます。この特別なユーザについて、ここでユーザ名を特定してください。',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            'Customer::AuthModuleに関して、“LDAP”が選択されていた場合、BaseDNを特定する必要があります。',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            'Customer::AuthModuleに関して、“LDAP”が選択されていた場合、LDAPホストを特定できます。',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            'Customer::AuthModuleに関して、“LDAP”が選択されていた場合、ユーザ識別子を特定する必要があります。',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            'Customer::AuthModuleに関して、“LDAP”が選択されていた場合、ユーザ属性を特定することができます。LDAPのためにposixGroupはUIDを使用し、non LDAP posixGroupはfull user DNを使用します。',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            'Customer::AuthModuleに関して、“LDAP”が選択されていた場合、ここにおいてアクセス属性を特定することができます。',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            'Customer::AuthModuleに関して“LDAP”が選択されている場合に、例えばサーバー接続がネットワークの問題で確立できない際に、アプリケーションを停止させるかどうかを設定できます。',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            'Customer::AuthModuleに関して“LDAP”が選択されていた場合、ユーザについて、例えばOTRSを利用するためグループxyzにいる必要がある場合に、posixGroupにいるという理由で認証することを許可されるかどうかを、確認することができます。システムにアクセスする可能性があるグループを特定してください。',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '“LDAP”が選択されていた場合、LDAPクエリーそれぞれにフィルタを追加することができます。例えば、(mail=*), (objectclass=user), (!objectclass=computer)などです。',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            'Customer::AuthModuleに関して“Radius”が選択されていた場合、radiusホストに対する認証を行うためのパスワードを特定する必要があります。',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            'Customer::AuthModuleに関して“Radius”が選択されていた場合、radiusホストを特定する必要があります。',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            'Customer::AuthModuleに関して“Radius”が選択されていた場合、例えばサーバー接続がネットワークの問題で確立できない際に、アプリケーションを停止させるかどうかを設定できます。',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '"Sendmail"がSendmailモジュールとして選択された場合、sendmailバイナリおよび必要オプションのロケーションが特定されている必要があります。',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            'もしログ・モジュールに関して"SysLog"が選択されていた場合、特別なログ・ファシリティが特定されます。',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            'もしログ・モジュールに関して"SysLog"が選択されていた場合、特別なログsockが特定されます（solarisにおいては\'stream\'を使用する必要があるかもしれません）。',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            'もしログ・モジュールに関して"SysLog"が選択されていた場合、ロギングで使用されるべき文字セットが特定されます。',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            'もしログ・モジュールに関して"File"が選択されていた場合、ログ・ファイルが必ず特定されます。もしファイルが存在しなければ、システムにより作成されます。',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、チケットのメモを追加した後の次の状態を定義します。',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、担当者によってメモが追加された場合にチケットの状態を設定します。',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、メモが担当者によって追加された場合、チケットの状態を設定します。',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            'メモが担当者によって追加された場合、担当者インタフェースのチケット・メモ画面でチケットの状態を設定します。',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            'メモが担当者によって追加された場合、担当者インタフェースのチケット責任者画面でチケットの状態を設定します。',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、メモが担当者によって追加された場合、チケットの状態を設定します。',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、メモが担当者によって追加された場合、チケットの状態を設定します。',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、メモが担当者によって追加された場合、チケットの状態を設定します。',
        'If active, none of the regular expressions may match the user\'s email address to allow registration.' =>
            '',
        'If active, one of the regular expressions has to match the user\'s email address to allow registration.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '"SMTP"構造のいずれかがSendmailモジュールとして選択され、かつメール・サーバへの認証が必要な場合、パスワードを特定する必要があります。',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '"SMTP"構造のいずれかがSendmailモジュールとして選択され、かつメール・サーバへの認証が必要な場合、ユーザ名を特定する必要があります。',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '"SMTP"構造のいずれかがSendmailモジュールとして選択された場合、メールを送信するメール・ホストが特定されている必要があります。',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '"SMTP"構造のいずれかがSendmailモジュールとして選択された場合、メール・サーバが受信接続をlistenしている（待っている）ポートが特定されている必要があります。',
        'If enabled debugging information for ACLs is logged.' => '',
        'If enabled debugging information for transitions is logged.' => '',
        'If enabled the daemon will redirect the standard error stream to a log file.' =>
            '',
        'If enabled the daemon will redirect the standard output stream to a log file.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            '有効にすると、OTRSは全CSSファイルを縮小した形で配信します。もし、これをオフにすると、IE7においては32CSSファイル以上をロードできないため、問題が発生する可能性が高いです。',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '有効にすると、OTRSは全JavaScriptファイルを縮小した形式で配信します。',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '有効にされた場合、TicketPhoneおよびTicketEmailは新しいウィンドウで開きます。',
        'If enabled, the OTRS version tag will be removed from the Webinterface, the HTTP headers and the X-Headers of outgoing mails.' =>
            '有効にすると、OTRS versionタグは、ウェブインターフェース、HTTPヘッダと送信メールのX-ヘッダから削除されます。',
        'If enabled, the customer can search for tickets in all services (regardless what services are assigned to the customer).' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '有効にした場合、ダッシュボード、ロック済チケット一覧、キュー一覧は自動で指定時間後に更新されます。',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '有効にした場合、メイン・メニューの1つめのレベルのものが、マウスを乗せるだけで開きます（1回クリックの代わりに）。',
        'If set, this address is used as envelope sender header in outgoing notifications. If no address is specified, the envelope sender header is empty.' =>
            '',
        'If set, this address is used as envelope sender in outgoing messages (not notifications - see below). If no address is specified, the envelope sender is equal to queue e-mail address.' =>
            '',
        'If this option is enabled, then the decrypted data will be stored in the database if they are displayed in AgentTicketZoom.' =>
            '',
        'If this option is set to \'Yes\', tickets created via the web interface, via Customers or Agents, will receive an autoresponse if configured. If this option is set to \'No\', no autoresponses will be sent.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            'ここで指定した文言（正規表現）にマッチした場合、オート・レスポンダーによりメッセージは送られません。',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            '新規項目機能のシステム・センダー・タイプを持つ項目を、無視します（例：自動返答またはEメール通知など）。',
        'Include tickets of subqueues per default when selecting a queue.' =>
            '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '担当者インタフェースのチケット検索で、項目の作成時間を含みます。',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the command "bin/otrs.Console.pl Maint::Ticket::QueueIndexRebuild" for initial index creation.' =>
            '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '利用者がスペル・チェッカーを使用したい場合、システム上にispellまたはaspellをインストールします。ご利用のオペレーティング・システム上で、aspellまたはispellへのパスを特定します。',
        'Interface language' => 'インターフェイスの言語',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            'アプリケーション内でドメインごとのベースで使用されている異なる担当者間を区別するためなど、異なるスキンを設定することが可能です。通常の表現（regrex）を使用することで、Key/Contentのペアをドメインにマッチするように設定することが可能です。“Key”の値はドメインにマッチするべきであり、“Content”の値はご利用のシステムの有効なスキンであるべきです。Regrexの適切な形式については、入力例を参照してください。',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            'アプリケーション内でドメインごとのベースで使用される異なる顧客ごとを見分けるため、などの場合、異なるスキンを設定することも可能です。通常の表現を使用することで（regex）、Key/Contentのペアーをドメインにマッチするように設定することが可能です。"Key"の中の値はドメインにマッチするべきであり、"Content"の中の値はご利用のシステム上の有効なスキンであるべきです。Regrexの適切な形式への入力例をご覧ください。',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '異なるテーマを、担当者と顧客の間で異なるように、アプリケーション内でドメインごとの単位で使用されるように、設定することができます。regular expression (regex)を使用することにより、ドメインにマッチするようにKey/Contentを設定することが可能です。“Key”の値はドメインにマッチさせるべきであり、“Content”の値はご利用のシステムで有効なテーマとしてください。regrexの適切な形式のための入力例を確認してください。',
        'Italian' => 'イタリア語',
        'Italian stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Japanese' => '日本語',
        'JavaScript function for the search frontend.' => '',
        'Lastname, Firstname' => '名, 姓',
        'Lastname, Firstname (UserLogin)' => '名, 姓 (ユーザー名)',
        'Latvian' => 'ラトビア語',
        'Left' => '',
        'Link agents to groups.' => '担当者をグループへ連結',
        'Link agents to roles.' => '担当者をロールへ連結',
        'Link attachments to templates.' => '添付ファイルをテンプレートへ連結',
        'Link customer user to groups.' => '顧客ユーザーをグループへ連結',
        'Link customer user to services.' => '顧客ユーザーをサービスへ連結',
        'Link queues to auto responses.' => 'キューを自動応答へ連結',
        'Link roles to groups.' => 'ロールをグループへ連結',
        'Link templates to queues.' => 'テンプレートをキューへ連結',
        'Links 2 tickets with a "Normal" type link.' => '“ノーマル”タイプのリンクを持つチケットへのリンクです。.',
        'Links 2 tickets with a "ParentChild" type link.' => '“親子”タイプのリンクを持つチケットへのリンクです。',
        'List of CSS files to always be loaded for the agent interface.' =>
            '担当者インタフェースに対して、常にロードされるCSSファイルのリストです。',
        'List of CSS files to always be loaded for the customer interface.' =>
            '顧客インタフェースに対して、常にロードされるCSSファイルのリストです。',
        'List of JS files to always be loaded for the agent interface.' =>
            '担当者インタフェースに対して、常にロードされるJSファイルのリストです。',
        'List of JS files to always be loaded for the customer interface.' =>
            '顧客インタフェースに対して、常にロードされるJSファイルのリストです。',
        'List of all CustomerCompany events to be displayed in the GUI.' =>
            '',
        'List of all CustomerUser events to be displayed in the GUI.' => '',
        'List of all DynamicField events to be displayed in the GUI.' => '',
        'List of all Package events to be displayed in the GUI.' => '',
        'List of all article events to be displayed in the GUI.' => '',
        'List of all queue events to be displayed in the GUI.' => '',
        'List of all ticket events to be displayed in the GUI.' => '',
        'List of default Standard Templates which are assigned automatically to new Queues upon creation.' =>
            '作成時に新しいキューに自動的に割り当てられるデフォルトの標準テンプレートのリスト。',
        'List of responsive CSS files to always be loaded for the agent interface.' =>
            '',
        'List of responsive CSS files to always be loaded for the customer interface.' =>
            '',
        'List view' => '',
        'Lithuanian' => 'リトアニア語',
        'Lock / unlock this ticket' => '',
        'Locked ticket.' => 'Locked ticket.',
        'Log file for the ticket counter.' => 'チケット・カウンターのためのログ・ファイルです。',
        'Loop-Protection! No auto-response sent to "%s".' => 'Loop-Protection! No auto-response sent to "%s".',
        'Mail Accounts' => 'メールアカウント',
        'Main menu registration.' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            'Eメールの送信または電話/Eメール・チケットの提出の前に、アプリケーションにEメール・アドレスのMXレコードをチェックさせるようにします。',
        'Makes the application check the syntax of email addresses.' => 'アプリケーションにEメール・アドレスのシンタクスをチェックさせます。',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            'セッション管理に、htmlクッキーを使用させるようにします。htmlクッキーが無効にされている場合、またはクライアント・ブラウザがhtmlクッキーを無効にしている場合、システムは通常どおり動作し、またセッションIDをリンクに付け加えます。',
        'Malay' => 'マレー語',
        'Manage OTRS Group cloud services.' => 'OTRSグループのクラウドサービスの管理',
        'Manage PGP keys for email encryption.' => 'メール暗号用のPGP鍵管理',
        'Manage POP3 or IMAP accounts to fetch email from.' => 'メール受信用POP3/IMAPアカウント管理',
        'Manage S/MIME certificates for email encryption.' => 'メール暗号用のS/MIME証明書管理',
        'Manage existing sessions.' => '既存セッション管理',
        'Manage support data.' => 'サポート情報の管理',
        'Manage system registration.' => 'システム登録の管理',
        'Manage tasks triggered by event or time based execution.' => 'イベントトリガーまたは時間ベースで実行されるタスクの管理',
        'Mark this ticket as junk!' => '',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size (in rows) of the informed agents box in the agent interface.' =>
            '',
        'Max size (in rows) of the involved agents box in the agent interface.' =>
            '',
        'Max size of the subjects in an email reply and in some overview screens.' =>
            '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '1日においてEメール・アドレスを入手する自動メールによる返答の最大数です（ループ・プロテクション）。',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            'POP3/POP3S/IMAP/IMAPS経由で取ってくることが可能なメールのKBytesの最大値です。',
        'Maximum length (in characters) of the dynamic field in the article of the ticket zoom view.' =>
            '',
        'Maximum length (in characters) of the dynamic field in the sidebar of the ticket zoom view.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '担当者インタフェースの検索結果で、表示されるチケットの最大数です。',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '顧客インタフェースの検索結果で表示される、チケットの最大数です。',
        'Maximum number of tickets to be displayed in the result of this operation.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            'チケットズームビューにおける、顧客情報テーブルの最大サイズ (文字) です。',
        'Merge this ticket and all articles into a another ticket' => '',
        'Merged Ticket <OTRS_TICKET> to <OTRS_MERGE_TO_TICKET>.' => 'チケット番号 <OTRS_TICKET> は、チケット番号 <OTRS_MERGE_TO_TICKET> にマージされました。',
        'Miscellaneous' => 'その他',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '顧客インタフェースで、新規チケット画面におけるTo-selectionのモジュールです。',
        'Module to check if arrived emails should be marked as email-internal (because of original forwarded internal email). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the group permissions for customer access to tickets.' =>
            '',
        'Module to check the group permissions for the access to tickets.' =>
            '',
        'Module to compose signed messages (PGP or S/MIME).' => '署名されたメッセージを構成するモジュールです（PGP または S/MIME)。',
        'Module to crypt composed messages (PGP or S/MIME).' => '構成されたメッセージを暗号化（crypt）するモジュールです(PGP or S/MIME)。',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '受信メッセージについてフィルターし操作するためのモジュールです。From: noreply@ addressを用いて、全てのスパム・メールをブロック/無視します。',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '受信メッセージについてフィルターし操作するためのモジュールです。チケットのフリーテキストに対して4桁の数字を得て、「Match」において正規表現を使用します。
（例：From / \'(.+?)@.+?\'とし、「Set」にて「[***]」として後方参照を使用します。）',
        'Module to generate accounted time ticket statistics.' => 'アカウンテッド・タイム・チケット統計を生成するモジュールです。',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '担当者インタフェースにおいて、ショート・チケット検索のためのhtml OpenSearchプロフィールを生成するモジュールです。',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '顧客インタフェースで、ショート・チケット検索のためのhtml OpenSearchプロファイルを生成するためのモジュール。',
        'Module to generate ticket solution and response time statistics.' =>
            'チケット・ソリューションおよびレスポンス・タイム統計を生成するためのモジュールです。',
        'Module to generate ticket statistics.' => 'チケット統計を作成するためのモジュールです。',
        'Module to grant access if the CustomerID of the ticket matches the CustomerID of the customer.' =>
            '',
        'Module to grant access if the CustomerUserID of the ticket matches the CustomerUserID of the customer.' =>
            '',
        'Module to grant access to any agent that has been involved in a ticket in the past (based on ticket history entries).' =>
            '',
        'Module to grant access to the agent responsible of a ticket.' =>
            '',
        'Module to grant access to the creator of a ticket.' => '',
        'Module to grant access to the owner of a ticket.' => '',
        'Module to grant access to the watcher agents of a ticket.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '通知とエスカレーションを表示するためのモジュールです(ShownMax: 最大、表示されたエスカレーション、EscalationInMinutes: エスカレートされるチケットを表示、CacheTime: 計算されたエスカレーションのキャッシュ秒数)。',
        'Module to use database filter storage.' => 'データベース・フィルタ・ストレージを使用するモジュールです。',
        'Multiselect' => 'Multiselect',
        'My Services' => '担当サービス',
        'My Tickets' => '担当チケット',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            'カスタム・キューの名前です。カスタム・キューとは、利用者が特に優先するキューの一覧であり、プレファレンス設定から選択できます。',
        'Name of custom service. The custom service is a service selection of your preferred services and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'Nederlands' => 'オランダ語',
        'New Ticket [%s] created (Q=%s;P=%s;S=%s).' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
        'New Window' => '',
        'New owner is "%s" (ID=%s).' => 'New owner is "%s" (ID=%s).',
        'New process ticket' => '新規プロセスチケット',
        'New responsible is "%s" (ID=%s).' => 'New responsible is "%s" (ID=%s).',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '担当者インタフェースのチケット電話アウトバウンド画面で、電話メモを追加した後の次の可能性あるチケットの状態です。',
        'None' => 'なし',
        'Norwegian' => 'ノルウェー語',
        'Notification sent to "%s".' => 'Notification sent to "%s".',
        'Number of displayed tickets' => '表示チケット数',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '担当者インタフェースの検索ユーティリティにより、表示される行（チケット毎）の数です。',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '担当者インタフェースの検索結果の各ページで、表示されるチケットの数です。',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '顧客インタフェースの検索結果の各ページで表示される、チケット数です。',
        'OTRS can use one or more readonly mirror databases for expensive operations like fulltext search or statistics generation. Here you can specify the DSN for the first mirror database.' =>
            '',
        'Old: "%s" New: "%s"' => 'Old: "%s" New: "%s"',
        'Online' => 'オンライン',
        'Open tickets (customer user)' => 'オープンチケット(顧客ユーザー)',
        'Open tickets (customer)' => 'オープンチケット(顧客)',
        'Optional queue limitation for the CreatorCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the InvolvedCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the OwnerCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the ResponsibleCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Out Of Office' => '外出中',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            'Kernel::System::Ticketに既に存在している機能を多重定義（再定義）します。簡単にカスタマイズを追加したい場合に使用されます。',
        'Overview Escalated Tickets' => 'エスカレーション済チケット一覧',
        'Overview Refresh Time' => '一覧自動更新間隔',
        'Overview of all open Tickets.' => '全対応中チケット一覧',
        'PGP Key Management' => 'PGPキーの管理',
        'PGP Key Upload' => 'PGP鍵アップロード',
        'Package event module file a scheduler task for update registration.' =>
            '',
        'Parameters for .' => 'パラメータ',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '担当者インタフェースのプレファレンス・ビューにあるCreateNextMaskオブジェクトのパラメータです。',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '担当者インタフェースのプレファレンス・ビューにある、CustomQueueオブジェクトのパラメータです。',
        'Parameters for the CustomService object in the preference view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '担当者インタフェースのプレファレンス・ビューにある、RefreshTimeオブジェクトのパラメータです。',
        'Parameters for the dashboard backend of the customer company information of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer id status widget of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer user list overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the queue overview widget of the agent interface. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "QueuePermissionGroup" is not mandatory, queues are only listed if they belong to this permission group if you enable it. "States" is a list of states, the key is the sort order of the state in the widget. "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the running process tickets overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '担当者インタフェースにおけるチケット・カレンダーのダッシュボード・バックエンドに関するパラメータです。"Limit"は、表示されるデフォルトのエントリー数です。"Group"は、プラグインへのアクセスを制限するために使用されます(例：Group: admin;group1;group2;)。"Default"は、プラグインがデフォルトで有効となっているか、またはユーザがそれを手動で有効にする必要があるか、を定義します。"CacheTTLLocal"は、プラグインのキャッシュ・タイム（分）です。',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '担当者インタフェースにおけるチケット統計のダッシュボード・バックエンドに関するパラメータです。"Limit"は、表示されるデフォルトのエントリー数です。"Group"は、プラグインへのアクセスを制限するために使用されます(例：Group: admin;group1;group2;)。"Default"は、プラグインがデフォルトで有効となっているか、またはユーザがそれを手動で有効にする必要があるか、を定義します。"CacheTTLLocal"は、プラグインのキャッシュ・タイム（分）です。',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '中程度のチケット一覧のページ（チケットが表示されている）のパラメータです。',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '小さいチケット一覧のページ（チケットが表示されている）のパラメータです。',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            'チケット・プレビュー一覧のページ（チケットが表示されている）のパラメータです。',
        'Parameters of the example SLA attribute Comment2.' => 'example SLA attribute Comment2のパラメータです。',
        'Parameters of the example queue attribute Comment2.' => 'example queue attribute Comment2のパラメータです。',
        'Parameters of the example service attribute Comment2.' => 'example service attribute Comment2のパラメータです。',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            'ログ・ファイルのパスです（LoopProtectionModuleに関して“FS”が選択されており、それが強制である場合にのみ適用されます）。',
        'People' => '担当者/顧客',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => 'Eメール・ウィンドウを構成するために許容される幅です。',
        'Permitted width for compose note windows.' => 'メモ・ウィンドウを構成するために許容される幅です。',
        'Persian' => 'ペルシア語',
        'Picture-Upload' => '画像のアップロード',
        'Polish' => 'ポーランド語',
        'Portuguese' => 'ポルトガル語',
        'Portuguese (Brasil)' => 'ポルトガル語（ブラジル）',
        'PostMaster Filters' => 'ポストマスター・フィルタ',
        'PostMaster Mail Accounts' => 'メールアカウント',
        'Process Management Activity Dialog GUI' => 'プロセス管理アクティビティダイアログGUI',
        'Process Management Activity GUI' => 'プロセス管理アクテビティGUI',
        'Process Management Path GUI' => 'プロセス管理パスGUI',
        'Process Management Transition Action GUI' => 'プロセス管理遷移動作GUI',
        'Process Management Transition GUI' => 'プロセス管理遷移GUI',
        'Process pending tickets.' => '保留中プロセスチケット',
        'ProcessID' => 'プロセスID',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            'CSRF (Cross Site Request Forgery)攻撃に対するプロテクションです（さらに詳細はhttp://en.wikipedia.org/wiki/Cross-site_request_forgeryを参照ください）。',
        'Provides a matrix overview of the tickets per state per queue.' =>
            '',
        'Queue view' => 'キュー一覧',
        'Rebuild the ticket index for AgentTicketQueue.' => '',
        'Recognize if a ticket is a follow-up to an existing ticket using an external ticket number.' =>
            '',
        'Refresh interval' => '更新間隔',
        'Removed subscription for user "%s".' => 'Removed subscription for user "%s".',
        'Removes the ticket watcher information when a ticket is archived.' =>
            'チケットがアーカイブされるとき、チケット監視者の情報を削除する。',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '担当者インタフェースのチケット構成画面で、オリジナルの送信者を、コンポーズ・アンサー上の現在の顧客のEメール・アドレスに置換します。',
        'Reports' => 'レポート',
        'Reports (OTRS Business Solution™)' => 'レポート（OTRS Business Solution™）',
        'Reprocess mails from spool directory that could not be imported in the first place.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '担当者インタフェースで、チケットの顧客を変更するための必要な許可です。',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '担当者インタフェースで、クローズ・チケット画面を使用するために必要な許可です。',
        'Required permissions to use the email outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '担当者インタフェースで、チケット・バウンス画面を使用するために必要な許可です。',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '担当者インタフェースで、チケット構成画面を使用するための必要な許可です。',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '担当者インタフェースのチケット転送画面を使用するために必要な許可です。',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '担当者インタフェースで、チケット・フリー・テキスト画面を使用する為の必要な許可です。',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースで、ズームされたチケットのチケット結合画面を使用するための必要な許可です。',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面を使用するための必要な許可です。',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースで、ズームされたチケットのチケット所有者画面を使用するための必要な許可です。',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースで、ズームされたチケットのチケット保留画面を使用するための必要な許可です。',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '担当者インタフェースで、チケット電話アウトバウンド画面を使用するための必要な許可です。',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースで、ズームされたチケットのチケット優先度画面を使用するための必要な許可です。',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '担当者インタフェースで、チケット責任者画面を使用するための必要な許可です。',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            'チケットの所有者を、チケットが移動された、または別のキューに移動した場合、リセットおよびアンロックします。',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            'チケットをアーカイブから救出します（ただし、イベントが状態変更の場合であり、クローズの状態から利用可能ななんらかのオープンの状態に変更された場合とします）。',
        'Retains all services in listings even if they are children of invalid elements.' =>
            '',
        'Right' => '権限',
        'Roles <-> Groups' => 'ロール <-> グループ',
        'Run file based generic agent jobs (Note: module name need needs to be specified in -configuration-module param e.g. "Kernel::System::GenericAgent").' =>
            '',
        'Running Process Tickets' => '',
        'Runs an initial wildcard search of the existing customer company when accessing the AdminCustomerCompany module.' =>
            '',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            'AdminCustomerUserモジュールにアクセスした時に、存在する顧客ユーザに関して最初のワイルド・カード検索を実行します。',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            'システムを“デモ”モードで動作させます。“Yes”に設定すると、担当者が、担当者用ウェブ・インタフェースを通して、言語選択やテーマなどのプレファレンスを変更できるようになります。これらの変更は、現在のセッションにおいてのみ有効です。担当者がパスワードを変更することはできません。',
        'Russian' => 'ロシア語',
        'S/MIME Certificate Upload' => 'S/MIME証明書アップロード',
        'SMS' => 'SMS',
        'Sample command output' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data. Note: Searching for attachment names is not supported when "FS" is used.' =>
            '',
        'Schedule a maintenance period.' => 'メンテナンス期間をスケジュール',
        'Screen' => '画面',
        'Search Customer' => '顧客を検索します。',
        'Search User' => 'ユーザを検索します。',
        'Search backend default router.' => 'バックエンドのデフォルト・ルーターを検索します。',
        'Search backend router.' => 'バックエンド・ルーターを検索します。',
        'Second Queue' => '',
        'Select your frontend Theme.' => 'フロントエンドのテーマを選択してください。',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            'ウェブ・インタフェースを通じてアップロードを取り扱うための、モジュールを選択します。"DB"は全てのアップロードをデータベースに格納し、"FS"はファイル・システムを使用します。',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            'チケット番号を生成するモジュールを選択します。"AutoIncrement"は、チケット番号をインクリメントし、システムIDおよびカウンターはシステムIDカウンター・フォーマット（例：1010138, 1010139)と共に使用されます。“Date”によって、チケット番号は、現在の日付、システムID、カウンターによって生成されることとなります。フォーマットは、Year.Month.Day.SystemID.counterのようなものです(例：200206231010138, 200206231010139)。"DateChecksum"により、カウンターが、日付およびシステムIDのストリング（文字列）に対するチェックサムとして追加されます。チェックサムは、日ごとに実施されます。フォーマットはYear.Month.Day.SystemID.Counter.CheckSumのようになります(例： 2002070110101520, 2002070110101535)。"Random"は、チケット番号をランダムに生成するもので、フォーマットは"SystemID.Random" (例：100057866352, 103745394596)などとなります。',
        'Send new outgoing mail from this ticket' => 'このチケットから新規メールを発信',
        'Send notifications to users.' => 'ユーザーに通知の送信',
        'Sender type for new tickets from the customer inteface.' => '顧客インタフェースからの新規チケットのための送信者タイプです。',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            'チケットがアンロックされた際に、所有者にのみ担当者フォローアップ通知を送信します (デフォルト設定では、全ての担当者に通知を送ります)。',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            'Bccを経由して特定されたアドレスに送信Eメールを送ります。バックアップ目的のためにのみ使用してください。',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            'マップされた顧客にのみ顧客通知を送信します。通常は、もし顧客が誰もマップされていない場合、最新のカスタマーが通知を受け取ることになります。',
        'Sends registration information to OTRS group.' => '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            'リマインダ日付を迎えたら、アンロック・チケットのリマインダ通知を送信します（チケット所有者だけに送信されます）。',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '管理インタフェースの"Notfication (Event)"の下で設定された通知を送信します。',
        'Serbian Cyrillic' => 'セルビア語（キリル文字）',
        'Serbian Latin' => 'セルビア語（ラテン文字）',
        'Service view' => 'サービス一覧',
        'Set minimum loglevel. If you select \'error\', just errors are logged. With \'debug\' you get all logging messages.' =>
            '',
        'Set sender email addresses for this system.' => 'このシステムのメール送信者を設定',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            'AgentTicketZoomで、インラインHTML項目のデフォルトの高さ（pixel）を設定します。',
        'Set the limit of tickets that will be executed on a single genericagent job execution.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            'AgentTicketZoomで、インラインHTML項目の最大高さ（pixel）を設定します。',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            'ご利用の全公開/秘密PGP鍵について、信頼される署名によって認証されていなくても信頼する場合、これをyesに設定してください。',
        'Sets if SLA must be selected by the agent.' => 'SLAが担当者によって必ず選択される必要があるかどうかを設定します。',
        'Sets if SLA must be selected by the customer.' => 'SLAが顧客によって必ず選択される必要があるかどうかを設定します。',
        'Sets if note must be filled in by the agent. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Sets if service must be selected by the agent.' => 'サービスが担当者によって必ず選択される必要があるかどうかを設定します。',
        'Sets if service must be selected by the customer.' => 'サービスが顧客によって必ず選択される必要があるかどうかを設定します。',
        'Sets if ticket owner must be selected by the agent.' => 'チケットの所有者が担当者によって必ず選択される必要があるかどうかを設定します。',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '状態が非ペンディング状態に変更された場合、チケットのペンディング・タイムを0に設定します。',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            'タッチされていないチケットを含むキューをハイライトするための、経過時間を分で設定します（第1レベル）。',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            'タッチされていないチケットを含むキューをハイライトするための、経過時間を分で設定します（第2レベル）。',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '管理者の設定レベルの設定です。設定レベルに拠り、いくつかのシステム設定オプションは表示されなくなります。設定レベルは昇順です：Expert, Advanced, Beginner。設定レベルが高いほど（Beginnerを最高とします）、ユーザが、システムを二度と使用できなくなるような設定を誤って行うことが、起こりにくくなります。',
        'Sets the count of articles visible in preview mode of ticket overviews.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '担当者インタフェースで、新規Eメール・チケットに関してデフォルトの送信者タイプを設定します。',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットのための、デフォルトの項目タイプを設定します。',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、追加されたメモに関するデフォルトの本文テキストを設定します。',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '担当者インタフェースの移動チケット画面で、追加されるメモのデフォルトの本文テキストを設定します。',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、追加されたメモのデフォルトの本文テキストを設定します。',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、追加されたメモのデフォルトの本文テキストを設定します。',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、追加されたメモのデフォルトの本文テキストを設定します。',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、追加されたメモのデフォルトの本文テキストを設定します。',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、追加されたメモのデフォルトの本文テキストを設定します。',
        'Sets the default error message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '担当者インタフェースで、分割されたチケットのデフォルトのリンク・タイプを設定します。',
        'Sets the default message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            '',
        'Sets the default message for the notification is shown on a running system maintenance period.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットのためのデフォルトの次の状態を設定します。',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '担当者インタフェースで、Eメール・チケットを作成した後の、デフォルトの次のチケット状態を設定します。',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットのためのデフォルトのメモのテキストを設定します（例：\'New ticket via call\'）。',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '担当者インタフェースで、新規Eメール・チケットに関してデフォルトの優先度を設定します。',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットのためのデフォルトの優先度を設定します。',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '担当者インタフェースで、新規Eメール・チケットに関してデフォルトの送信者タイプを設定します。',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットのためのデフォルトの送信者タイプを設定します。',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '担当者インタフェースで、新規Eメール・チケットに関してデフォルトの件名を設定します（例：\'email Outbound\')。',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '担当者インタフェースで、新規電話チケットのためのデフォルトの件名を設定します。（例：\'Phone call\'）',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、追加されたメモに関するデフォルトの件名を設定します。',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '担当者インタフェースの移動チケット画面で、追加されるメモのデフォルトの件名を設定します。',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、追加されたメモのデフォルトの件名を設定します。',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、追加されたメモのデフォルトの件名を設定します。',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、追加されたメモのデフォルトの件名を設定します。',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、追加されたメモのデフォルトの件名を設定します。',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、追加されたメモのデフォルトの件名を設定します。',
        'Sets the default text for new email tickets in the agent interface.' =>
            '担当者インタフェースで、新規Eメール・チケットに関してデフォルトのテキストを設定します。',
        'Sets the display order of the different items in the preferences view.' =>
            'プレファレンス・ビューにおいて異なるアイテムを表示する順番を設定します。',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            'セッションが切られユーザがログアウトするまで経過する、非活動時間（秒）を設定します。',
        'Sets the maximum number of active agents within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active customers within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active sessions per agent within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active sessions per customers within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the minimal ticket counter size (if "AutoIncrement" was selected as TicketNumberGenerator). Default is 5, this means the counter starts from 10000.' =>
            '最小のチケット・カウンター・サイズを設定します（"AutoIncrement"がチケット番号生成として選択されていた場合）。デフォルトは5で、これはカウンターが10000から始まることを意味します。',
        'Sets the minutes a notification is shown for notice about upcoming system maintenance period.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            'テキスト・メッセージに表示される行の数を設定します（つまり、キュー・ズーム内のチケット・ラインのためです）。',
        'Sets the options for PGP binary.' => 'PGPバイナリのためのオプションを設定します。',
        'Sets the order of the different items in the customer preferences view.' =>
            '顧客プレファレンス・ビューにおいて、異なる項目の順番を設定してください。',
        'Sets the password for private PGP key.' => '秘密PGP鍵のためのパスワードを設定します。',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '優先される時間の単位（例：業務ユニット、時間、分）を設定します。',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            'ウェブ・サーバ上に設定されるように、サーバ上のスクリプト・フォルダに対する接頭辞を設定します。この設定は、OTRS_CONFIG_ScriptAlias変数として設定され、これはアプリケーションによって使用されるメッセージングの全フォームに存在し、システム内のチケットへのリンクを作成するために使用されます。',
        'Sets the queue in the ticket close screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット完了画面で、キューを設定します。',
        'Sets the queue in the ticket free text screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット自由テキスト画面で、キューを設定します。',
        'Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケットノート画面で、キューを設定します。',
        'Sets the queue in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケットチケット所有者画面で、キューを設定します。',
        'Sets the queue in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、キューを設定します。',
        'Sets the queue in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、キューを設定します。',
        'Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット責任者画面で、キューを設定します。',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのチケットチケット完了画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット自由テキスト画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、チケットの責任を有する担当者を設定します。',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、チケットの責任を持つ担当者を設定します。',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '担当者インタフェースのチケット完了画面で、サービスを設定します(Ticket::Serviceを有効とする必要があります)。',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '担当者インタフェースのチケット自由テキスト画面で、サービスを設定します(Ticket::Serviceを有効とする必要があります)。',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '担当者インタフェースのチケット・メモ画面で、サービスを設定します(Ticket::Serviceを有効とする必要があります)。',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、サービスを設定します（Ticket::Serviceを有効とする必要があります)。',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、サービスを設定します（Ticket::Serviceを有効とする必要があります)。',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '担当者インタフェースのチケット責任者画面で、サービスを設定します(Ticket::Serviceを有効とする必要があります)。',
        'Sets the stats hook.' => '統計フックを設定します。',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            'システムのタイム・ゾーン（システム・タイムとしてUTCを持つシステムが必要）。そうでない場合、これはローカル・タイムに対するdiffタイムとなります。',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、チケットの所有者を設定します。',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、チケット所有者を設定します。',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、チケット所有者を設定します。',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、チケット所有者を設定します。',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、チケット所有者を設定します。',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、チケット所有者を設定します。',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、チケット所有者を設定します。',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、チケット所有者を設定します。',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '担当者インタフェースのクローズ・チケット画面で、チケット・タイプを設定します（Ticket::Typeを有効とする必要があります）。',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '担当者インタフェースのチケット・フリー・テキスト画面で、チケットのタイプを設定します。Ticket::Typeが有効となっている必要があります。',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '担当者インタフェースのチケット・メモ画面で、チケット・タイプを設定します（Ticket::Typeを有効とする必要があります)。',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、チケット・タイプを設定します（Ticket::Typeを有効とする必要があります）。',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、チケット・タイプを設定します（Ticket::Typeを有効とする必要があります）。',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '担当者インタフェースのチケット責任者画面で、チケット・タイプを設定します（Ticket::Typeを有効とする必要があります)。',
        'Sets the time (in seconds) a user is marked as active.' => '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => 'http/ftp downloadsのためのタイムアウト（秒）を設定します。',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            'パッケージ・ダウンロードのためのタイムアウト（秒）を設定します。"WebUserAgent::Timeout"を上書きします。',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            'ユーザごとのユーザ・タイム・ゾーンを設定します（システム・タイムとしてUTCを持つシステム、およびTimeZone下のUTCが必要）。そうでない場合、これはローカル・タイムに対するdiffタイムとなります。',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            'ログイン・タイムにおけるjava script / browser time zone オフセット機能を基に、ユーザごとのユーザ・タイム・ゾーンを設定します。',
        'Shared Secret' => '',
        'Should the cache data be help in memory?' => '',
        'Should the cache data be stored in the selected cache backend?' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '担当者インタフェースにおいて、電話およびEメールのチケットにおける責任者のセレクションを表示します。',
        'Show article as rich text even if rich text writing is disabled.' =>
            'リッチ・テキストのライティングが無効にされている場合でも、項目をリッチ・テキストで表示します。',
        'Show the current owner in the customer interface.' => '',
        'Show the current queue in the customer interface.' => '',
        'Show the history for this ticket' => '',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '項目に添付ファイルがある場合、チケット・ズームでアイコン・アカウントを表示します。',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.  Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットにメモを追加するためのリンクをメニューに表示します。',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットをクローズするためのリンクをメニューに表示します。',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '担当者インタフェースの全チケット一覧で、チケットを削除するするためのリンクをメニューに表示します。本リンクを表示または非表示にするための追加的アクセス・コントロールについては、“Group”キーおよび"rw:group1;move_into:group2"のようなコンテンツを使用することで可能になります。',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to enroll a ticket into a process in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットをロック/アンロックするためのリンクをメニューに表示します。',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットを移動するためのリンクをメニューに表示します。',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットのチケット履歴を確認するためのリンクをメニューに表示します。',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to send an outbound email in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to set a ticket as spam in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '担当者インタフェースの全チケット一覧で、チケットをスパムとして設定するためのリンクをメニューに表示します。本リンクを表示または非表示にするための追加的アクセス・コントロールについては、“Group”キーおよび"rw:group1;move_into:group2"のようなコンテンツを使用することで可能になります。',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットの優先度を設定するためのリンクをメニューに表示します。',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '担当者インタフェースの全チケット一覧で、チケットにズームするためのリンクをメニューに表示します。',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '担当者インタフェースの項目ズーム・ビューにおいて、項目の添付ファイルにhtmlオンライン・ビュアーでアクセスするためのリンクを表示します。',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '担当者インタフェースの項目ズーム・ビューにおいて、項目の添付ファイルをダウンロードするためのリンクを表示します。',
        'Shows a link to see a zoomed email ticket in plain text.' => 'ズームされたEメール・チケットを、プレイン・テキストで見るためのリンクを表示します。',
        'Shows a link to set a ticket as junk in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、そのチケットに関与する全ての担当者のリストを表示します。',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、そのチケットに関与する全ての担当者のリストを表示します。',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、そのチケットに関与する全担当者のリストです。',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、そのチケットに関与する全ての担当者のリストを表示します。',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、そのチケットに関与する全ての担当者のリストを表示します。',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、そのチケットに関与する全ての担当者のリストを表示します。',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、そのチケットに関与する全ての担当者のリストを表示します。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、可能性ある担当者（キュー/チケットに対してメモの許可を有する全ての担当者）のリストを表示し、そのメモについて誰に通知するべきか決定します。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、可能性ある全ての担当者（キュー/チケットに関してメモ許可を有する全ての担当者）を表示し、そのメモに関して誰に通知するべきかを決定します。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、可能性ある担当者（キュー/チケットに対してメモ許可を持つ全担当者）を表示し、そのメモについて誰に通知するか決定しまう。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、全ての可能性ある担当者（キュー/チケットにメモ許可を有する全ての担当者）のリストを表示し、そのメモについて誰に通知するべきかを決定します。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、全ての可能性ある担当者（キュー/チケットにメモ許可を有する全ての担当者）のリストを表示し、そのメモについて誰に通知するべきかを決定します。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、全ての可能性ある担当者（キュー/チケットにメモ許可を有する全ての担当者）のリストを表示し、そのメモについて誰に通知するべきかを決定します。',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、全ての可能性ある担当者（キュー/チケットにメモ許可を有する全ての担当者）のリストを表示し、そのメモについて誰に通知するべきかを決定します。',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            'チケット一覧のプレビューを表示します(CustomerInfo => 1 - 顧客情報も表示しますCustomerInfoMaxSize max ? 顧客情報の文字サイズです)。',
        'Shows a select of ticket attributes to order the queue view ticket list. The possible selections can be configured via \'TicketOverviewMenuSort###SortAttributes\'.' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => 'キュー・ビューで、roとrwの両方全てのキューを表示します。',
        'Shows all both ro and rw tickets in the service view.' => 'サービスビュー内の読み取り専用と読み書き可能なチケットの両方を全て表示する。',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '担当者インタフェースのエスカレーション・ビューにある、全てのオープン・チケット（たとえロックされていたとしても）を表示します。',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '担当者インタフェースのステータスビューで、全てのオープンのチケット（ロックされているものも含む）を表示します。',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            'ズーム・ビューで、チケットの全項目を表示します（展開される）',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '全ての顧客識別子をマルチ・セレクトのフィールドに表示します（顧客識別子を多く抱えている場合は利便性が低いです）。',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '担当者インタフェースにおいて、電話およびEメールのチケットにおける所有者のセレクションを表示します。',
        'Shows colors for different article types in the article table.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            'AgentTicketPhone、AgentTicketEmail、AgentTicketCustomerにおいて、顧客履歴チケットを表示します。',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '最後の顧客の項目の件名またはチケットのタイトルを、小さいフォーマットの一覧で表示します。',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            'システム内に存在する親/子キューのリストを、ツリーまたはリストの形式で表示します。',
        'Shows information on how to start OTRS Daemon' => 'OTRSデーモンの起動手順を紹介します。',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '顧客インタフェースで有効化されたチケット属性を表示します（0 = Disabled、 1 = Enabled)。',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '担当者インタフェースのチケット・ズームの下で、ノーマルまたは逆順でソートされた項目を表示します。',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '構成画面において、顧客ユーザ情報（電話およびEメール）を表示します。',
        'Shows the customer user\'s info in the ticket zoom view.' => 'チケット・ズーム・ビューにおける顧客ユーザの情報を表示します。',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '担当者ダッシュボードに、その日のメッセージ（MOTD）を表示します。“Group”は、プラグインへのアクセスを制限するために使用されます（Group: admin;group1;group2;)。“Default”は、プラグインがデフォルトで有効になっているか、またはそれをユーザが手動で有効にする必要があるか、を示しています。',
        'Shows the message of the day on login screen of the agent interface.' =>
            '担当者インタフェースのログイン画面において、その日のメッセージを表示します。',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '担当者インタフェースで、チケット履歴（逆の順番）を表示します。',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、チケット優先度オプションを表示します。',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '担当者インタフェースの移動チケット画面で、チケット優先度のオプションを表示します。',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '担当者インタフェースのチケット・バルク画面で、チケットの優先度オプションを表示します。',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、チケット優先度のオプションを表示します。',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、チケット優先度のオプションを表示します。',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、チケット優先度のオプションを表示します。',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、チケット優先度のオプションを表示します。',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、チケット優先度のオプションを表示します。',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、チケット優先度のオプションを表示します。',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '担当者インタフェースのクローズ・チケット画面で、タイトルのフィールドを表示します。',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            '担当者インタフェースのチケット・フリー・テキスト・スクリーンで、タイトルのフィールドを表示します。',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '担当者インタフェースのチケット・メモ画面で、タイトルのフィールドを表示します。',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット所有者画面で、タイトルのフィールドを表示します。',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット保留画面で、タイトルのフィールドを表示します。',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '担当者インタフェースのズームされたチケットのチケット優先度画面で、タイトルのフィールドを表示します。',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '担当者インタフェースのチケット責任者画面で、タイトルのフィールドを表示します。',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '"Yes"に設定すると時間を長いフォーマットで表示し（日、時、分）、"No"に設定すると短いフォーマットで表示します（日、時）。',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '"Yes"に設定すると完全な記述による時間を表示し（days, hours, minutes)、"No"に設定すると最初の文字のみ表示します（d, h, m）。',
        'Skin' => 'スキン',
        'Slovak' => 'スロバキア語',
        'Slovenian' => 'スロベニア語',
        'SolutionDiffInMin' => '解決期限超過時間',
        'SolutionInMin' => '解決時間',
        'Some description!' => '',
        'Some picture description!' => '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '1つのキューがキュー・ビューで選択され、チケットが優先度によってソートされた後に、チケットをソートします（昇順または降順）。Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top)。キーに関してキューIDを使用し、値（value）に関して0または1を使用してください。',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the service view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the ServiceID for the key and 0 or 1 for value.' =>
            '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            'スパム・アサシンのセットアップ例です。スパム・アサシンによってマークされたEメールを無視します。',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            'SpamAssassinのセットアップ例です。マークされたメールを、スパム・キューへ移動します。',
        'Spanish' => 'スペイン語',
        'Spanish (Colombia)' => 'スペイン語(コロンビア)',
        'Spanish (Mexico)' => 'スペイン語(メキシコ)',
        'Spanish stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '担当者が自分自身のアクションに関してEメール通知を受け取る必要があるかどうか、を設定します。',
        'Specifies the available note types for this ticket mask. If the option is deselected, ArticleTypeDefault is used and the option is removed from the mask.' =>
            '',
        'Specifies the default article type for the ticket compose screen in the agent interface if the article type cannot be automatically detected.' =>
            '',
        'Specifies the different article types that will be used in the system.' =>
            'システムで使用される異なる項目のタイプを特定します。',
        'Specifies the different note types that will be used in the system.' =>
            'システムで使用される、異なるメモのタイプを特定します。',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            'TicketStorageModuleに関して“FS”が選ばれている場合、データを保存するためにディレクトリを保存してください。',
        'Specifies the directory where SSL certificates are stored.' => 'SSL認証が格納されるディレクトリを特定します。',
        'Specifies the directory where private SSL certificates are stored.' =>
            '秘密SSL認証が格納されるディレクトリを特定します。',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address.' =>
            '',
        'Specifies the email addresses to get notification messages from scheduler tasks.' =>
            '',
        'Specifies the group where the user needs rw permissions so that he can access the "SwitchToCustomer" feature.' =>
            '「SwitchToCustomer」機能にアクセスできるように、ユーザーがRW権限を必要とするグループを指定します。',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com).' =>
            '',
        'Specifies the order in which the firstname and the lastname of agents will be displayed.' =>
            '担当者の姓と名を表示する順序を指定してください。',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            'ページ・ヘッダーにおいて、ロゴのためのファイルへのパスを特定します(gif|jpg|png, 700 x 100 pixel)。',
        'Specifies the path of the file for the performance log.' => 'パフォーマンス・ログのためのファイルのパスを特定します。',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            'ウェブ・インタフェースにて、Microsoft Excelファイルを見られるようにするコンバータへのパスを特定します。',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            'ウェブ・インタフェースにて、Microsoft Wordファイルを見られるようにするコンバータへのパスを特定します。',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            'ウェブ・インタフェースにて、PDFドキュメントを見られるようにするコンバータへのパスを特定します。',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            'ウェブ・インタフェースにて、XMLファイルを見られるようにするコンバータへのパスを特定します。',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            'ログ・ファイルの中でCGIスクリプト・エントリーを意味するテキストを規定します。',
        'Specifies user id of the postmaster data base.' => 'ポストマスター・データベースのユーザIDを特定します。',
        'Specifies whether all storage backends should be checked when looking for attachments. This is only required for installations where some attachments are in the file system, and others in the database.' =>
            '',
        'Specify how many sub directory levels to use when creating cache files. This should prevent too many cache files being in one directory.' =>
            '',
        'Specify the channel to be used to fetch OTRS Business Solution™ updates. Warning: Development releases might not be complete, your system might experience unrecoverable errors and on extreme cases could become unresponsive!' =>
            '',
        'Specify the password to authenticate for the first mirror database.' =>
            '',
        'Specify the username to authenticate for the first mirror database.' =>
            '',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            'アプリケーション内で担当者にとって標準的に利用可能な許可です。もし、さらに多くの許可が必要であれば、ここで加えることができます。許可は、効果的になるように設定する必要があります。いくつか他の良い許可も、ビルト・インで提供されています：note, close, pending, customer, freetext, move, compose, responsible, forward, bounce。“rw”は、常に最後の登録許可であることを確認してください。',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '統計カウンティングの数をスタートします。全ての新規統計はこの数字を増加させます。',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Stat#' => '統計番号',
        'Status view' => 'ステータス一覧',
        'Stores cookies after the browser has been closed.' => 'ブラウザが閉じられた後に、クッキーを格納します。',
        'Strips empty lines on the ticket preview in the queue view.' => 'キュー画面で、チケット・プレビューの空の行を削除します。',
        'Strips empty lines on the ticket preview in the service view.' =>
            '',
        'Swahili' => 'スワヒリ語',
        'Swedish' => 'スウェーデン語',
        'System Maintenance' => 'システムメンテナンス',
        'System Request (%s).' => 'System Request (%s).',
        'Templates <-> Queues' => 'テンプレート <-> キュー',
        'Textarea' => 'Textarea',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '担当者インタフェースで使用されるべき、担当者スキンのインターナル・ネームです。Frontend::Agent::Skinsにおける利用可能なスキンをチェックしてください。',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '顧客インタフェースにて使用される顧客スキンのInternalNameです。Frontend::Customer::Skinsにおいて利用可能なスキンをチェックしてください。',
        'The daemon registration for the scheduler cron task manager.' =>
            '',
        'The daemon registration for the scheduler future task manager.' =>
            '',
        'The daemon registration for the scheduler generic agent task manager.' =>
            '',
        'The daemon registration for the scheduler task worker.' => '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            'チケットフックとチケット番号の間の仕切りです。例：\': \'',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the latter case you should verify that the setting PostMaster::CheckFollowUpModule###0200-References is activated to recognize followups based on email headers.' =>
            '',
        'The headline shown in the customer interface.' => '顧客インターフェイスの見出し',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '例えばTicket#, Call#, MyTicket#などのチケットの識別子です。デフォルトはTicket#です。',
        'The logo shown in the header of the agent interface for the skin "default". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "ivory". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "ivory-slim". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "slim". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '担当者インタフェースのログイン・ボックスに表示されるロゴです。本イメージに対するURLは、スキン・イメージ・ディレクトリへの相対URLである必要があります。',
        'The maximal number of articles expanded on a single page in AgentTicketZoom.' =>
            'AgentTicketZoomの拡大表示モードで1ページあたりに表示する記事の数',
        'The maximal number of articles shown on a single page in AgentTicketZoom.' =>
            'AgentTicketZoomの通常表示モードで1ページあたりに表示する記事の数',
        'The maximum number of mails fetched at once before reconnecting to the server.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            'Eメール・リプライにおける件名の最初のテキストです。例：RE, AW, AS。',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            'Eメールが転送された際の、件名の最初のテキストです。例：FW, Fwd, WG。',
        'This event module stores attributes from CustomerUser as DynamicFields tickets. Please see the setting above for how to configure the mapping.' =>
            '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '定義された場合、全てのリクエストに対して、本モジュールおよびそのPreRun()機能が実行されます。本モジュールは、いくつかのユーザ・オプションをチェックするため、または新しいアプリケーションのニュースを表示させるために、役立つものです。',
        'This option defines the dynamic field in which a Process Management activity entity id is stored.' =>
            '',
        'This option defines the dynamic field in which a Process Management process entity id is stored.' =>
            '',
        'This option defines the process tickets default lock.' => '',
        'This option defines the process tickets default priority.' => '',
        'This option defines the process tickets default queue.' => '',
        'This option defines the process tickets default state.' => '',
        'This option will deny the access to customer company tickets, which are not created by the customer user.' =>
            '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'This will allow the system to send text messages via SMS.' => '',
        'Ticket Notifications' => 'チケット通知',
        'Ticket Queue Overview' => 'チケットキュー一覧',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'Ticket notifications' => 'チケット通知',
        'Ticket overview' => 'チケット一覧',
        'TicketNumber' => 'チケット番号',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '保留中のステートを設定した場合、実際の時間に加えられる時間（秒）です。(default: 86400 = 1 day)',
        'Title updated: Old: "%s", New: "%s"' => 'タイトルを更新しました: Old…"%s"、New…"%s"',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            '',
        'Toolbar Item for a shortcut.' => 'ショートカットのためのツールバー・アイテムです。',
        'Transport selection for ticket notifications.' => '',
        'Tree view' => 'ツリー表示',
        'Triggers ticket escalation events and notification events for escalation.' =>
            '',
        'Turkish' => 'トルコ語',
        'Turns off SSL certificate validation, for example if you use a transparent HTTPS proxy. Use at your own risk!' =>
            '',
        'Turns on drag and drop for the main navigation.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            'GUIで使用されるアニメーションをONにします。もし、これらのアニメーションに問題がある場合（パフォーマンス問題など）、ここでOFFにできます。',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            'リモートIPアドレス・チェックをONにします。もし、例えばproxy farmまたはdialup connection経由でアプリケーションが使用されている場合、"No"の設定する必要があります。なぜなら、リモートIPアドレスは、ほとんどの場合リクエストごとに異なるからです。',
        'Ukrainian' => 'ウクライナ語',
        'Unlock tickets that are past their unlock timeout.' => '',
        'Unlock tickets whenever a note is added and the owner is out of office.' =>
            '',
        'Unlocked ticket.' => 'Unlocked ticket.',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '全ての項目が確認された、または新規のArticleが作成された場合に、チケット“Seen”フラグをアップデートします。',
        'Update and extend your system with software packages.' => 'このシステムのソフトウェアパッケージの更新と展開',
        'Updated SLA to %s (ID=%s).' => 'Updated SLA to %s (ID=%s).',
        'Updated Service to %s (ID=%s).' => 'Updated Service to %s (ID=%s).',
        'Updated Type to %s (ID=%s).' => 'Updated Type to %s (ID=%s).',
        'Updated: %s' => 'Updated: %s',
        'Updated: %s=%s;%s=%s;%s=%s;' => '更新しました: %s=%s;%s=%s;%s=%s;',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            'チケット属性がアップデートされた後に、チケット・エスカレーション・インデックスをアップデートします。',
        'Updates the ticket index accelerator.' => 'チケット・インデックス・アクセラレイタのアップです',
        'Use new type of select and autocomplete fields in agent interface, where applicable (InputFields).' =>
            '',
        'Use new type of select and autocomplete fields in customer interface, where applicable (InputFields).' =>
            '',
        'UserFirstname' => '姓',
        'UserLastname' => '名',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '担当者インタフェースのチケット構成画面で、コンポーズEメール回答にあるCCリスト上からCC受信者を使用します。',
        'Uses richtext for viewing and editing ticket notification.' => '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard templates, auto responses and notifications.' =>
            '',
        'Vietnam' => 'ベトナム',
        'View performance benchmark results.' => 'パフォーマンスベンチマーク結果を見る。',
        'View system log messages.' => 'システムログメッセージを見る。',
        'Watch this ticket' => 'このチケットを見る。',
        'We are performing scheduled maintenance.' => '',
        'We are performing scheduled maintenance. Login is temporarily not available.' =>
            '',
        'We are performing scheduled maintenance. We should be back online shortly.' =>
            '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the body of this note (this text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the subject of this note (this subject cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '担当者インタフェースでズームされたチケットのチケット結合画面で、チケット・ロックが必要かどうかを定義します。（チケットがまだロックされていない場合、チケットはロックされ現在の担当者が自動的に所有者として設定されます）。',
        'Yes, but hide archived tickets' => '',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            'チケット番号"<OTRS_TICKET>" のメールは、"<OTRS_BOUNCE_TO>"宛にバウンスされました。詳細は、このアドレスまでお問合せください。',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            'お気に入りのキューを選択。有効にした場合、それらのキューについてメールで通知を受信します。',
        'Your service selection of your favorite services. You also get notified about those services via email if enabled.' =>
            'お気に入りのサービスを選択。有効にした場合、これらのサービスについてメールで通知を受信します。',

    };
   # $$STOP$$
   return;
}

1;
