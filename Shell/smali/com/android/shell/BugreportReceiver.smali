.class public Lcom/android/shell/BugreportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BugreportReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static buildSendIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bugreportUri"    # Landroid/net/Uri;
    .param p2, "screenshotUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "application/vnd.android.bugreport"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "ro.build.description"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/net/Uri;

    aput-object p1, v3, v6

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 131
    invoke-static {p0}, Lcom/android/shell/BugreportReceiver;->findSendToAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 132
    .local v2, "sendToAccount":Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 133
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_0
    return-object v1
.end method

.method private static buildWarningIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendIntent"    # Landroid/content/Intent;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/shell/BugreportWarningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    return-object v0
.end method

.method private static findSendToAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string v8, "account"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 146
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v8, "sendbug.preferred.domain"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "preferredDomain":Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    :cond_0
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 152
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 153
    .local v4, "foundAccount":Landroid/accounts/Account;
    move-object v3, v1

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v0, v3, v5

    .line 154
    .local v0, "account":Landroid/accounts/Account;
    sget-object v8, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 155
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 158
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 170
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    :goto_1
    return-object v0

    .line 161
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_2
    move-object v4, v0

    .line 153
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "account":Landroid/accounts/Account;
    :cond_4
    move-object v0, v4

    .line 170
    goto :goto_1
.end method

.method private static getFileExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x7f040001

    const/high16 v10, 0x10000000

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 68
    const-string v8, "android.intent.extra.BUGREPORT"

    invoke-static {p2, v8}, Lcom/android/shell/BugreportReceiver;->getFileExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, "bugreportFile":Ljava/io/File;
    const-string v8, "android.intent.extra.SCREENSHOT"

    invoke-static {p2, v8}, Lcom/android/shell/BugreportReceiver;->getFileExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 73
    .local v5, "screenshotFile":Ljava/io/File;
    const-string v8, "com.android.shell"

    invoke-static {p1, v8, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, "bugreportUri":Landroid/net/Uri;
    const-string v8, "com.android.shell"

    invoke-static {p1, v8, v5}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 76
    .local v6, "screenshotUri":Landroid/net/Uri;
    invoke-static {p1, v1, v6}, Lcom/android/shell/BugreportReceiver;->buildSendIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 80
    .local v7, "sendIntent":Landroid/content/Intent;
    invoke-static {p1, v9}, Lcom/android/shell/BugreportPrefs;->getWarningState(Landroid/content/Context;I)I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 81
    invoke-static {p1, v7}, Lcom/android/shell/BugreportReceiver;->buildWarningIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 85
    .local v3, "notifIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "builder":Landroid/app/Notification$Builder;
    const v8, 0x1080590

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 89
    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 91
    const v8, 0x7f040002

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 92
    invoke-static {p1, v11, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 94
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 95
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v8

    const-string v9, "Shell"

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v8, v9, v11, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/shell/BugreportReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 99
    .local v4, "result":Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v8, Lcom/android/shell/BugreportReceiver$1;

    invoke-direct {v8, p0, v0, v4}, Lcom/android/shell/BugreportReceiver$1;-><init>(Lcom/android/shell/BugreportReceiver;Ljava/io/File;Landroid/content/BroadcastReceiver$PendingResult;)V

    new-array v9, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/android/shell/BugreportReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void

    .line 83
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "notifIntent":Landroid/content/Intent;
    .end local v4    # "result":Landroid/content/BroadcastReceiver$PendingResult;
    :cond_0
    move-object v3, v7

    .restart local v3    # "notifIntent":Landroid/content/Intent;
    goto :goto_0
.end method
