.class public Lcom/google/android/gms/common/download/DownloadCompleteIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "DownloadCompleteService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private a(J)Lcom/google/android/gms/common/download/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 62
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 64
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 67
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DownloadCompleteService"

    const-string v3, "No pending download found."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v2, :cond_2

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v1

    .line 86
    :goto_0
    return-object v0

    .line 72
    :cond_3
    if-eqz v2, :cond_4

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_4
    const-string v0, "DownloadServiceQueue"

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{}"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/google/android/gms/common/download/a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/download/a;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 84
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DownloadCompleteService"

    const-string v3, "Failed to retreive download details."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V

    move-object v0, v1

    .line 86
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 55
    const-string v0, "DownloadServiceQueue"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 59
    return-void
.end method

.method static a(Landroid/content/Context;JLcom/google/android/gms/common/download/a;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "DownloadServiceQueue"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/gms/common/download/a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 49
    return-void
.end method

.method private a(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/common/download/a;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    .line 171
    :try_start_0
    iget-object v3, p2, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p2, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v4, p2, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    new-instance v6, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    .line 177
    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 178
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 183
    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DownloadCompleteService"

    const-string v5, "Failed to copy to private storage."

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/download/i;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 185
    if-eqz v4, :cond_2

    .line 189
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 191
    :cond_2
    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    move v0, v1

    .line 215
    :goto_3
    return v0

    .line 171
    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 182
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    move-object v2, v0

    goto :goto_2

    .line 181
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 191
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 200
    invoke-static {v6}, Lcom/google/android/gms/common/download/DownloadService;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v3, p2, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 202
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 203
    invoke-virtual {v5, v1}, Ljava/io/File;->setExecutable(Z)Z

    .line 204
    invoke-virtual {v5, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 206
    iget-object v1, p2, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/common/download/a;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/common/download/a;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/common/download/DownloadService;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "__failed__"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "__sha1__"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v3, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "__dest__"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    invoke-static {v2}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_3

    .line 195
    :catch_2
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "DownloadCompleteService"

    const-string v2, "Failed to close file."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    .line 196
    goto/16 :goto_3

    .line 195
    :catch_3
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "DownloadCompleteService"

    const-string v2, "Failed to close file."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v1

    .line 196
    goto/16 :goto_3

    .line 187
    :catchall_0
    move-exception v0

    move-object v4, v2

    .line 188
    :goto_4
    if-eqz v4, :cond_9

    .line 189
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 191
    :cond_9
    if-eqz v2, :cond_a

    .line 192
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 196
    :cond_a
    throw v0

    .line 195
    :catch_4
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "DownloadCompleteService"

    const-string v2, "Failed to close file."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v0, v1

    .line 196
    goto/16 :goto_3

    .line 209
    :cond_c
    const-string v0, "DownloadCompleteService"

    const-string v2, "Failed to move file."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 210
    goto/16 :goto_3

    .line 213
    :cond_d
    const-string v0, "DownloadCompleteService"

    const-string v2, "SHA-1 of downloaded file does not match request"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p2, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/download/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 215
    goto/16 :goto_3

    .line 187
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 182
    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 92
    const-string v0, "extra_download_id"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 93
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 94
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadCompleteService"

    const-string v1, "Received an ID that is not valid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 100
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    invoke-virtual {v1, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 103
    :cond_2
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "status"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 109
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DownloadCompleteService"

    const-string v4, "Download not successful."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    :cond_5
    if-eqz v1, :cond_6

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(J)Lcom/google/android/gms/common/download/a;

    move-result-object v1

    .line 120
    if-nez v1, :cond_9

    .line 121
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "DownloadCompleteService"

    const-string v1, "Download enqueued improperly."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_7
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 114
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 128
    :cond_9
    :try_start_2
    invoke-virtual {v0, v2, v3}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 129
    if-nez v0, :cond_a

    .line 130
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :catch_0
    move-exception v0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 137
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/common/download/a;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    sget-object v0, Lcom/google/android/gms/common/download/a/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "DownloadCompleteService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Download Service Completed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/common/download/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_b
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/common/download/DownloadCompleteIntentService;->a(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method
