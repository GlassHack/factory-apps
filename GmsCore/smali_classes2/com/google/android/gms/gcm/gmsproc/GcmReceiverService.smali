.class public Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "gcm_groups_msg_format"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->a:Lcom/google/android/gms/common/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "GcmReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 169
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v5}, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 174
    const/4 v2, 0x0

    .line 175
    sget-object v3, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v3}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 176
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    const-string v2, "GcmGroups"

    const-string v3, "Unable to send device accounts, not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    .line 183
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/gcm/ag;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ag;

    move-result-object v9

    .line 185
    const/4 v4, 0x0

    .line 186
    const/4 v2, 0x0

    .line 188
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v4

    move v4, v2

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    const-string v6, "GcmGroups"

    const/4 v11, 0x2

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    const-string v6, "GcmGroups"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Removing account: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v6, "a"

    invoke-virtual {v11, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz v3, :cond_2

    .line 195
    const-string v6, "id"

    invoke-virtual {v11, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    const-string v6, "r"

    const-string v12, "1"

    invoke-virtual {v11, v6, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "-"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    add-int/lit8 v6, v5, 0x1

    :try_start_1
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v5, v11}, Lcom/google/android/gms/gcm/ag;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 201
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 202
    const/4 v2, 0x1

    move v4, v2

    move v5, v6

    .line 205
    goto :goto_2

    .line 203
    :catch_0
    move-exception v2

    move-object v15, v2

    move v2, v5

    move-object v5, v15

    .line 204
    :goto_3
    const-string v6, "GcmGroups"

    const-string v11, "Failed to send remove message"

    invoke-static {v6, v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v2

    .line 206
    goto :goto_2

    .line 209
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    const-string v6, "GcmGroups"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    const-string v6, "GcmGroups"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Adding account: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_4
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 214
    const-string v6, "a"

    invoke-virtual {v11, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    if-eqz v3, :cond_5

    .line 216
    const-string v6, "id"

    invoke-virtual {v11, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_5
    const/4 v7, 0x0

    .line 224
    if-eqz p4, :cond_6

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/auth/q; {:try_start_2 .. :try_end_2} :catch_2

    .line 235
    :cond_6
    :goto_5
    :try_start_3
    const-string v6, "oauth2:https://www.googleapis.com/auth/gcm"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/auth/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 236
    const-string v6, "t"

    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/gms/auth/q; {:try_start_3 .. :try_end_3} :catch_4

    .line 246
    :goto_6
    :try_start_4
    const-string v12, "google.com"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "-"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v13

    add-int/lit8 v6, v5, 0x1

    :try_start_5
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v12, v5, v11}, Lcom/google/android/gms/gcm/ag;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    if-eqz v7, :cond_7

    .line 248
    const/4 v4, 0x1

    .line 249
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_7
    move v5, v6

    .line 253
    goto :goto_4

    .line 228
    :catch_1
    move-exception v6

    .line 229
    const-string v12, "GcmGroups"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to invalidate "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 230
    :catch_2
    move-exception v6

    .line 231
    const-string v12, "GcmGroups"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Failed to invalidate "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 237
    :catch_3
    move-exception v6

    .line 238
    const-string v12, "e"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v12, "GcmGroups"

    const-string v13, "Failed to subscribe to group."

    invoke-static {v12, v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 240
    :catch_4
    move-exception v6

    .line 241
    const-string v12, "e"

    invoke-virtual {v6}, Lcom/google/android/gms/auth/q;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v12, "GcmGroups"

    const-string v13, "Failed to subscribe to group."

    invoke-static {v12, v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 251
    :catch_5
    move-exception v2

    .line 252
    :goto_7
    const-string v6, "GcmGroups"

    const-string v7, "Failed to send add message"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 260
    :cond_8
    if-eqz v4, :cond_b

    .line 261
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 265
    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 269
    :cond_a
    const-string v2, "accountList"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "accountListSet2"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 251
    :catch_6
    move-exception v2

    move v5, v6

    goto :goto_7

    .line 203
    :catch_7
    move-exception v2

    move-object v5, v2

    move v2, v6

    goto/16 :goto_3

    :cond_c
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 287
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 288
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    const-string v2, "accountListSet2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    if-nez v1, :cond_0

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "GcmGroups"

    const-string v1, "Skipping groups upload as GMS not registered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gcm_group_sender"

    const-string v2, "google.com"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 130
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    const-string v0, "accountList"

    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 135
    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 136
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 144
    const-string v1, "GcmGroups"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dropping message from unknown sender "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_4
    const-string v0, "invalidate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_5
    const-string v0, "com.google.android.gms.gcm.gmsproc.UPDATE_ACCOUNTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.google.android.gms.gcm.REGISTERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 160
    :cond_6
    invoke-direct {p0, v1, v2, v3, v7}, Lcom/google/android/gms/gcm/gmsproc/GcmReceiverService;->a(Ljava/lang/String;Ljava/util/List;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_7
    const-string v0, "GcmGroups"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignore unexpected action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
