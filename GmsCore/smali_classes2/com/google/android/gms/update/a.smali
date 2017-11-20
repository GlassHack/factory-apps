.class public final Lcom/google/android/gms/update/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/SharedPreferences;

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/net/URL;

.field f:Ljava/lang/String;

.field g:Ljava/io/File;

.field h:J

.field i:J

.field j:J

.field volatile k:I

.field volatile l:Z

.field m:Ljava/util/regex/Pattern;

.field n:I

.field o:J

.field private p:Lcom/google/android/gms/http/GoogleHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/http/GoogleHttpClient;)V
    .locals 6

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/update/a;->j:J

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/update/a;->k:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/update/a;->l:Z

    .line 229
    const-string v0, ".*filename=\"([a-zA-Z0-9_.-]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/update/a;->m:Ljava/util/regex/Pattern;

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/update/a;->n:I

    .line 488
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/update/a;->o:J

    .line 119
    iput-object p1, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    .line 121
    iput-boolean p5, p0, Lcom/google/android/gms/update/a;->c:Z

    .line 122
    iput-object p6, p0, Lcom/google/android/gms/update/a;->p:Lcom/google/android/gms/http/GoogleHttpClient;

    .line 124
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    const-string v1, "dl.url"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/update/a;->d:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/update/a;->d:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    const-string v1, "DownloadAttempt"

    const-string v2, "URL changed from last attempt; resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p1, p2}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 131
    const-string v1, "dl.url"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    if-eqz p4, :cond_1

    .line 133
    const-string v1, "dl.authtoken"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/update/a;->d:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcom/google/android/gms/update/a;->f:Ljava/lang/String;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    .line 141
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/update/a;->h:J

    .line 142
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/update/a;->i:J

    .line 150
    :goto_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/android/gms/update/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/update/a;->e:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const-string v1, "dl.filename"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_3

    .line 159
    const-string v2, "dl.dirname"

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    .line 161
    const-string v1, "DownloadAttempt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current file is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_2
    const-string v1, "DownloadAttempt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/google/android/gms/update/a;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDownloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/update/a;->h:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/update/a;->i:J

    iget-wide v4, p0, Lcom/google/android/gms/update/a;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/update/a;->k:I

    .line 172
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    :goto_3
    return-void

    .line 135
    :cond_1
    const-string v1, "dl.authtoken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 144
    :cond_2
    const-string v1, "dl.size"

    const-wide/16 v2, -0x1

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/update/a;->h:J

    .line 145
    const-string v1, "dl.downloaded"

    const-wide/16 v2, -0x1

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/update/a;->i:J

    .line 146
    iput-object p4, p0, Lcom/google/android/gms/update/a;->f:Ljava/lang/String;

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v0

    invoke-static {p1, p2}, Lcom/google/android/gms/update/a;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 153
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/update/a;->k:I

    goto :goto_3

    .line 163
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    .line 164
    const-string v1, "DownloadAttempt"

    const-string v2, "current file is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 112
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    const-string v0, "complete"

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "ready"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "in_progress"

    goto :goto_0

    .line 108
    :pswitch_3
    const-string v0, "insufficient_space"

    goto :goto_0

    .line 109
    :pswitch_4
    const-string v0, "failed_temp"

    goto :goto_0

    .line 110
    :pswitch_5
    const-string v0, "failed"

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v0, "cancelled"

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 177
    const-string v1, "dl.dirname"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, "dl.filename"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 180
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "DownloadAttempt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " deleting "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 185
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dl.url"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dl.authtoken"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dl.filename"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dl.dirname"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dl.size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dl.downloaded"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    const-string v1, "download"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 199
    const-string v4, "DownloadAttempt"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " deleting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 5

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    :goto_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_0

    .line 239
    const-string v2, "DownloadAttempt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  header "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    iget-wide v4, p0, Lcom/google/android/gms/update/a;->h:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v2

    .line 559
    :goto_0
    return v1

    :cond_1
    move v3, v2

    .line 516
    :goto_1
    const/4 v0, 0x2

    if-ge v3, v0, :cond_7

    .line 517
    iget-boolean v0, p0, Lcom/google/android/gms/update/a;->c:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 516
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 517
    goto :goto_2

    .line 519
    :pswitch_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/cache"

    invoke-direct {v0, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    .line 527
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->m()J

    move-result-wide v4

    .line 528
    const-string v0, "DownloadAttempt"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "free space on cache: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->h:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6400000

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    .line 530
    const-string v0, "DownloadAttempt"

    const-string v4, "saving on /cache wouldn\'t leave enough space"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 533
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/update/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dl.dirname"

    const-string v3, "/cache"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 537
    :cond_4
    const-string v0, "DownloadAttempt"

    const-string v4, "failed to save file on /cache"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 541
    :pswitch_1
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/bin/uncrypt"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    const-string v0, "DownloadAttempt"

    const-string v4, "uncrypt exists, use of /data ok"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    const-string v4, "download"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 544
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    .line 545
    invoke-direct {p0}, Lcom/google/android/gms/update/a;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 546
    iget-object v2, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dl.dirname"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 550
    :cond_5
    const-string v0, "DownloadAttempt"

    const-string v4, "failed to save file on /data"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 552
    :cond_6
    const-string v0, "DownloadAttempt"

    const-string v4, "not trying /data; no uncrypt"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 558
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    move v1, v2

    .line 559
    goto/16 :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private varargs b()Ljava/lang/Integer;
    .locals 15

    .prologue
    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 275
    iput-boolean v2, p0, Lcom/google/android/gms/update/a;->l:Z

    .line 276
    iget v0, p0, Lcom/google/android/gms/update/a;->k:I

    if-eq v0, v5, :cond_0

    .line 277
    const-string v0, "DownloadAttempt"

    const-string v1, "attempting to start download from non-ready state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 280
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/update/a;->k:I

    .line 282
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/a;->l()V

    .line 284
    const-string v0, "DownloadAttempt"

    const-string v3, "querying downloadmanager"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "local_filename"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "/cache/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-array v7, v5, [J

    aput-wide v8, v7, v2

    invoke-virtual {v0, v7}, Landroid/app/DownloadManager;->remove([J)I

    const-string v7, "DownloadAttempt"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "remove old download id "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " local name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 288
    if-eqz v0, :cond_2b

    .line 289
    const-string v3, "system update download"

    invoke-virtual {v0, v5, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 295
    :goto_2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/update/a;->c()Z

    move-result v3

    if-nez v3, :cond_5

    .line 296
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/gms/update/a;->k:I

    .line 297
    iget v3, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .line 473
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    .line 300
    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 302
    :cond_6
    const-string v3, "DownloadAttempt"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mUrl is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/gms/update/a;->e:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/google/android/gms/update/a;->e:Ljava/net/URL;

    if-nez v3, :cond_8

    .line 304
    const-string v3, "DownloadAttempt"

    const-string v5, "no url to download"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x5

    iput v3, p0, Lcom/google/android/gms/update/a;->k:I

    .line 306
    iget v3, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 473
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    .line 309
    :cond_8
    :try_start_2
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    cmp-long v3, v6, v12

    if-lez v3, :cond_a

    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_a

    .line 310
    const-string v3, "DownloadAttempt"

    const-string v5, "already completed"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gms/update/a;->k:I

    .line 312
    iget v3, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 473
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    .line 315
    :cond_a
    const/16 v6, 0xc8

    .line 316
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/update/a;->p:Lcom/google/android/gms/http/GoogleHttpClient;

    invoke-virtual {v3}, Lcom/google/android/gms/http/GoogleHttpClient;->getConnectionFactory()Lcom/google/android/gms/http/e;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/gms/update/a;->e:Ljava/net/URL;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/http/e;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 317
    :try_start_4
    const-string v1, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v3, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/google/android/gms/update/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 319
    const-string v1, "Authorization"

    iget-object v7, p0, Lcom/google/android/gms/update/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "DownloadAttempt"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " including auth header "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/google/android/gms/update/a;->f:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_3
    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    cmp-long v1, v8, v12

    if-lez v1, :cond_2a

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v6, "Range"

    invoke-virtual {v3, v6, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v6, "DownloadAttempt"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sending range request: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v1, 0xce

    .line 330
    :goto_4
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 332
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 333
    const-string v7, "DownloadAttempt"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eq v6, v1, :cond_16

    .line 336
    const/16 v1, 0x1f7

    if-ne v6, v1, :cond_12

    .line 338
    const-string v1, "Retry-After"

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    const-string v5, "DownloadAttempt"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "retry after: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    const-wide/16 v6, 0xe10

    .line 341
    if-eqz v1, :cond_b

    .line 343
    :try_start_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v6

    .line 351
    :cond_b
    :goto_5
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/update/a;->j:J

    .line 356
    :goto_6
    iget v1, p0, Lcom/google/android/gms/update/a;->k:I

    const/16 v5, 0x1f4

    if-ge v1, v5, :cond_c

    iget v1, p0, Lcom/google/android/gms/update/a;->k:I

    const/16 v5, 0x191

    if-ne v1, v5, :cond_15

    .line 360
    :cond_c
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/update/a;->k:I

    .line 367
    :goto_7
    iget v1, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    .line 473
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_e
    move-object v0, v1

    goto/16 :goto_0

    .line 322
    :cond_f
    :try_start_7
    const-string v1, "DownloadAttempt"

    const-string v7, " including no auth header"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 469
    :catch_0
    move-exception v1

    .line 470
    :goto_8
    :try_start_8
    const-string v5, "DownloadAttempt"

    const-string v6, "caught ioexception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    if-eqz v2, :cond_29

    const/4 v1, 0x4

    :goto_9
    iput v1, p0, Lcom/google/android/gms/update/a;->k:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 473
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 476
    :cond_11
    :goto_a
    iget v0, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 353
    :cond_12
    :try_start_9
    invoke-static {v3}, Lcom/google/android/gms/update/a;->a(Ljava/net/HttpURLConnection;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 473
    :catchall_0
    move-exception v1

    :goto_b
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_14
    throw v1

    .line 364
    :cond_15
    const/4 v1, 0x5

    :try_start_a
    iput v1, p0, Lcom/google/android/gms/update/a;->k:I

    goto :goto_7

    .line 370
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    const-string v6, "dl.filename"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    if-nez v1, :cond_18

    .line 373
    const-string v1, "update.zip"

    .line 374
    const-string v6, "Content-Disposition"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    const-string v7, "DownloadAttempt"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "disposition header: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v6, :cond_17

    .line 377
    iget-object v7, p0, Lcom/google/android/gms/update/a;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 378
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 379
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 383
    :cond_17
    iget-object v6, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "dl.filename"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    :cond_18
    const-string v6, "ETag"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    const-string v7, "DownloadAttempt"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "etag is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    int-to-long v6, v6

    .line 391
    const-string v8, "DownloadAttempt"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "contentLength is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-wide/32 v8, 0xc800

    cmp-long v8, v6, v8

    if-gez v8, :cond_19

    .line 399
    invoke-static {v3}, Lcom/google/android/gms/update/a;->a(Ljava/net/HttpURLConnection;)V

    .line 402
    :cond_19
    iget-wide v8, p0, Lcom/google/android/gms/update/a;->h:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1a

    .line 403
    iput-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    .line 404
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/gms/update/a;->i:J

    .line 406
    iget-object v6, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "dl.size"

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->h:J

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "dl.downloaded"

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 412
    :cond_1a
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    cmp-long v6, v6, v12

    if-gtz v6, :cond_1d

    .line 413
    const-string v1, "DownloadAttempt"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bad download size = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "dl.size"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "dl.downloaded"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/gms/update/a;->k:I

    .line 419
    iget v1, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    .line 473
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1c
    move-object v0, v1

    goto/16 :goto_0

    .line 422
    :cond_1d
    :try_start_b
    iget-object v6, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    if-nez v6, :cond_21

    if-eqz v1, :cond_21

    .line 425
    invoke-direct {p0, v1}, Lcom/google/android/gms/update/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 426
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 427
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/update/a;->k:I

    .line 428
    iget v1, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    .line 473
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_1e
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_1f
    move-object v0, v1

    goto/16 :goto_0

    .line 430
    :cond_20
    :try_start_c
    const-string v1, "DownloadAttempt"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloading to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_21
    const-string v1, "DownloadAttempt"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloaded "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->h:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->i:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->h:J

    div-long/2addr v6, v8

    long-to-int v1, v6

    invoke-direct {p0, v1}, Lcom/google/android/gms/update/a;->b(I)V

    .line 436
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->i:J

    const-wide/32 v8, 0x20000

    add-long/2addr v6, v8

    .line 438
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    const-string v8, "rw"

    invoke-direct {v10, v1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 440
    :try_start_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 441
    const/16 v8, 0x1000

    new-array v11, v8, [B

    .line 442
    :cond_22
    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    iget-wide v12, p0, Lcom/google/android/gms/update/a;->h:J

    cmp-long v8, v8, v12

    if-gez v8, :cond_27

    .line 443
    iget-wide v8, p0, Lcom/google/android/gms/update/a;->h:J

    iget-wide v12, p0, Lcom/google/android/gms/update/a;->i:J

    sub-long/2addr v8, v12

    .line 444
    array-length v12, v11

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-lez v12, :cond_23

    array-length v8, v11

    int-to-long v8, v8

    .line 445
    :cond_23
    const/4 v12, 0x0

    long-to-int v8, v8

    invoke-virtual {v1, v11, v12, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 446
    if-ltz v8, :cond_27

    .line 447
    iget-wide v12, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 448
    const/4 v9, 0x0

    invoke-virtual {v10, v11, v9, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 450
    iget-wide v12, p0, Lcom/google/android/gms/update/a;->i:J

    int-to-long v8, v8

    add-long/2addr v8, v12

    iput-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    .line 451
    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    cmp-long v8, v8, v6

    if-ltz v8, :cond_24

    .line 452
    iget-object v6, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "dl.downloaded"

    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 453
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->i:J

    const-wide/32 v8, 0x20000

    add-long/2addr v6, v8

    move v2, v5

    .line 457
    :cond_24
    iget-wide v8, p0, Lcom/google/android/gms/update/a;->i:J

    const-wide/16 v12, 0x64

    mul-long/2addr v8, v12

    iget-wide v12, p0, Lcom/google/android/gms/update/a;->h:J

    div-long/2addr v8, v12

    long-to-int v8, v8

    invoke-direct {p0, v8}, Lcom/google/android/gms/update/a;->b(I)V

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/update/a;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 460
    const/4 v1, 0x6

    iput v1, p0, Lcom/google/android/gms/update/a;->k:I

    .line 461
    iget v1, p0, Lcom/google/android/gms/update/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v1

    .line 465
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 473
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_25
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_26
    move-object v0, v1

    goto/16 :goto_0

    .line 465
    :cond_27
    :try_start_f
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 467
    iget-object v1, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "dl.downloaded"

    iget-wide v6, p0, Lcom/google/android/gms/update/a;->i:J

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/update/a;->k:I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 473
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 474
    :cond_28
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_a

    .line 465
    :catchall_1
    move-exception v1

    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    throw v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_29
    move v1, v4

    .line 471
    goto/16 :goto_9

    :catch_1
    move-exception v1

    goto/16 :goto_5

    .line 473
    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_b

    .line 469
    :catch_2
    move-exception v3

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    goto/16 :goto_8

    :cond_2a
    move v1, v6

    goto/16 :goto_4

    :cond_2b
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 495
    iget v2, p0, Lcom/google/android/gms/update/a;->n:I

    if-le p1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/update/a;->o:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 497
    iput p1, p0, Lcom/google/android/gms/update/a;->n:I

    .line 498
    iput-wide v0, p0, Lcom/google/android/gms/update/a;->o:J

    .line 499
    iget-object v0, p0, Lcom/google/android/gms/update/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_progress"

    iget v2, p0, Lcom/google/android/gms/update/a;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 501
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/update/a;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/update/a;->publishProgress([Ljava/lang/Object;)V

    .line 502
    const-string v0, "DownloadAttempt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress now "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/update/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 563
    const/4 v1, 0x0

    .line 565
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/update/a;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 569
    :cond_0
    const-string v2, "DownloadAttempt"

    const-string v3, "writing zero file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v2, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 572
    :goto_0
    iget-wide v6, p0, Lcom/google/android/gms/update/a;->h:J

    const-wide/16 v8, 0x1000

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 573
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 572
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    .line 575
    :cond_1
    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/update/a;->h:J

    const-wide/16 v6, 0x1000

    rem-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 576
    const-string v1, "DownloadAttempt"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file extended to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 578
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 588
    :cond_3
    :goto_1
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0

    .line 580
    :catch_0
    move-exception v2

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    if-eqz v2, :cond_5

    .line 581
    iget-object v2, p0, Lcom/google/android/gms/update/a;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 583
    :cond_5
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 585
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 586
    :goto_4
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 588
    :cond_6
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_5

    .line 585
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 580
    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/gms/update/a;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/update/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    const/4 v0, 0x2

    .line 216
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/update/a;->k:I

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/update/a;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/update/a;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
