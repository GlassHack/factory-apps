.class public Lcom/google/android/gsf/settings/SettingsTosActivity;
.super Landroid/app/Activity;
.source "SettingsTosActivity.java"


# static fields
.field protected static final LOCAL_LOGV:Z


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mHelper:Lcom/google/android/common/GoogleWebContentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "SettingsTosActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/settings/SettingsTosActivity;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/settings/SettingsTosActivity;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/settings/SettingsTosActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    return-object v0
.end method

.method private isBrowserEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://example.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, "browse":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private makeErrorDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 177
    const v2, 0x7f0900d7

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0900e4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/settings/SettingsTosActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$3;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private makeTosDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 156
    const v2, 0x7f0900d7

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v2}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/settings/SettingsTosActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$2;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/settings/SettingsTosActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/settings/SettingsTosActivity$1;-><init>(Lcom/google/android/gsf/settings/SettingsTosActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "settings_tos_pretty_url"

    invoke-static {v10, v11}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "prettyUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "settings_tos_url"

    invoke-static {v10, v11}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 73
    sget-boolean v10, Lcom/google/android/gsf/settings/SettingsTosActivity;->LOCAL_LOGV:Z

    if-eqz v10, :cond_0

    const-string v10, "SettingsTosActivity"

    const-string v11, "settings_tos_url not in gservices, using fallback: http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    const-string v9, "http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html"

    .line 79
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "country":Ljava/lang/String;
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 88
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 89
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v10, "%m"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, "success":Z
    if-eqz v8, :cond_3

    .line 97
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "mccMnc":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 101
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 102
    .local v4, "mcc":I
    if-eqz v4, :cond_3

    .line 103
    const-string v10, "%m"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 104
    const/4 v7, 0x1

    .line 112
    .end local v4    # "mcc":I
    .end local v5    # "mccMnc":Ljava/lang/String;
    :cond_3
    :goto_0
    if-nez v7, :cond_4

    .line 114
    const-string v10, "%m"

    const-string v11, "%s"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 118
    .end local v7    # "success":Z
    :cond_4
    const-string v10, "%s"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    const-string v10, "%s"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 123
    :cond_5
    const-string v10, "%y"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 124
    const-string v10, "%y"

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 127
    :cond_6
    const-string v10, "%z"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 128
    const-string v10, "%z"

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 135
    :cond_7
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.google.android.pano.action.VIEW_WEB_INFO"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/settings/SettingsTosActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 106
    .restart local v5    # "mccMnc":Ljava/lang/String;
    .restart local v7    # "success":Z
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v10, "SettingsTosActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad sim operator string ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "mccMnc":Ljava/lang/String;
    .end local v7    # "success":Z
    :catch_1
    move-exception v10

    .line 142
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->isBrowserEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 143
    :cond_8
    new-instance v10, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v10, p0}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9, v6}, Lcom/google/android/common/GoogleWebContentHelper;->setUrls(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v10

    const v11, 0x7f0900d8

    invoke-virtual {p0, v11}, Lcom/google/android/gsf/settings/SettingsTosActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/common/GoogleWebContentHelper;->setUnsuccessfulMessage(Ljava/lang/String;)Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/common/GoogleWebContentHelper;->loadUrl()Lcom/google/android/common/GoogleWebContentHelper;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    .line 148
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->makeTosDialog()Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    .line 152
    :goto_2
    iget-object v10, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 150
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gsf/settings/SettingsTosActivity;->makeErrorDialog()Landroid/app/Dialog;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/gsf/settings/SettingsTosActivity;->mDialog:Landroid/app/Dialog;

    goto :goto_2
.end method
