.class Lcom/google/android/gms/auth/be/g;
.super Lcom/google/android/gms/auth/be/i;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/be/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/g;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/be/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/be/i;-><init>(Lcom/google/android/gms/auth/a/c;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 237
    if-eqz p4, :cond_1

    .line 238
    const-string v0, ","

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 246
    if-eqz p5, :cond_1

    const-string v0, "cl"

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string v0, "cl"

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "cl"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 254
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/gms/auth/be/g;->f:Z

    .line 255
    invoke-virtual {p0, p4}, Lcom/google/android/gms/auth/be/g;->d(Ljava/lang/String;)V

    .line 257
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v5, "SID"

    invoke-virtual {v0, v4, v5, p2}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v5, "LSID"

    invoke-virtual {v0, v4, v5, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v0, v0, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.server.checkin.CHECKIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    if-eqz p4, :cond_3

    .line 266
    iget-object v4, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    const-string v0, "mail"

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v4, v5, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 268
    iget-object v4, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v5, "com.android.calendar"

    const-string v0, "cl"

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v3, "com.android.contacts"

    iget-object v4, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "@youtube.com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-static {v0, v3, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 276
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 266
    goto :goto_0

    :cond_5
    move v0, v2

    .line 268
    goto :goto_1

    :cond_6
    move v2, v1

    .line 273
    goto :goto_2
.end method

.method private c()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 212
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.backup.SetBackupAccount"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v2, "backupAccount"

    iget-object v3, p0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    const-string v2, "backupUserHandle"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v0, 0x1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not enable backup "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/be/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;
    .locals 18

    .prologue
    .line 102
    new-instance v17, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;-><init>()V

    .line 103
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    .line 105
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 106
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const-string v2, "oauth2_authcode_verifier"

    move-object/from16 v0, p6

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    const-string v2, "oauth2_redirect_uri"

    move-object/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    const-string v3, "ac2dm"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->e:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p3

    move-object/from16 v13, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v2 .. v16}, Lcom/google/android/gms/auth/be/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/auth/firstparty/shared/AppDescription;Landroid/os/Bundle;Lcom/google/android/gms/auth/firstparty/shared/CaptchaSolution;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 127
    const-string v2, "SID"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 128
    const-string v2, "LSID"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    sget-object v2, Lcom/google/android/gms/auth/be/w;->v:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 130
    sget-object v2, Lcom/google/android/gms/auth/be/w;->w:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 133
    if-eqz v7, :cond_7

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/google/android/gms/auth/be/g;->a(Ljava/util/Map;Z)V

    .line 139
    sget-object v2, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/auth/be/g;->b:Ljava/lang/String;

    .line 145
    new-instance v2, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/g;->b:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-direct {v2, v3, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v2, v2, Lcom/google/android/gms/auth/a/c;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/g;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/be/g;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v6, v6, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/common/util/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    sget-object v2, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 156
    sget-object v2, Lcom/google/android/gms/auth/be/w;->l:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 157
    sget-object v2, Lcom/google/android/gms/auth/be/w;->x:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 158
    sget-object v2, Lcom/google/android/gms/auth/be/w;->y:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 159
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/gms/auth/be/g;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    .line 198
    :goto_0
    return-object v2

    .line 173
    :cond_2
    sget-object v2, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/be/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object v4, v7

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/auth/be/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/auth/be/g;->d:Z

    .line 177
    const-string v2, "useGoogleMail"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->a:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v3}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "GoogleMail"

    const-string v4, "switching device to Google Mail mode"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gsf.loginservice.GOOGLE_MAIL_SWITCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "useGoogleMail"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "use_google_mail"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const v2, 0x320d3

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/google/android/gms/auth/a/b;->a(ILjava/lang/String;)V

    const-string v2, "GoogleMail"

    const-string v3, "done switching to Google Mail mode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/be/g;->c()Z

    .line 192
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    if-eqz v2, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v4, "firstName"

    invoke-virtual {v2, v3, v4, v8}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->i:Lcom/google/android/gms/auth/be/h;

    iget-object v2, v2, Lcom/google/android/gms/auth/be/h;->c:Landroid/accounts/AccountManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/be/g;->c:Landroid/accounts/Account;

    const-string v4, "lastName"

    invoke-virtual {v2, v3, v4, v9}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->e:Lcom/google/android/gms/auth/a/c;

    iget v5, v2, Lcom/google/android/gms/auth/a/c;->e:I

    const-string v6, "SID"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/be/g;->e:Lcom/google/android/gms/auth/a/c;

    iget-object v9, v2, Lcom/google/android/gms/auth/a/c;->c:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object v4, v12

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/auth/be/g;->a(Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;Ljava/util/Map;ILjava/lang/String;ZZLjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/PACLConfig;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 178
    :cond_6
    const-string v2, "GoogleMail"

    const-string v3, "Platform version too old to switch to Google Mail mode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :cond_7
    if-eqz p3, :cond_4

    .line 188
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/auth/be/g;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method
