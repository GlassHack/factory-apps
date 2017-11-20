.class public final Lcom/google/android/gms/config/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/config/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    return-void
.end method

.method private a()Lcom/google/android/gms/config/b/b;
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 136
    new-instance v4, Lcom/google/android/gms/config/b/b;

    invoke-direct {v4}, Lcom/google/android/gms/config/b/b;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-virtual {v0}, Lcom/google/android/gms/config/ConfigFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2, v8, v9}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 140
    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 141
    const-string v0, "ConfigFetchTask"

    const-string v1, "no android id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 238
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/config/b/b;->a(J)Lcom/google/android/gms/config/b/b;

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-static {v0}, Lcom/google/android/gms/checkin/h;->a(Landroid/content/Context;)J

    move-result-wide v6

    .line 147
    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    .line 148
    const-string v0, "ConfigFetchTask"

    const-string v1, "no security token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 149
    goto :goto_0

    .line 154
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-virtual {v0}, Lcom/google/android/gms/config/ConfigFetchService;->b()Lcom/google/android/gms/config/a/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 157
    :goto_1
    if-nez v2, :cond_2

    .line 158
    const-string v0, "ConfigFetchTask"

    const-string v1, "failed to connect to config service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 159
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_1

    .line 163
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    const-string v5, "Calling this from your main thread can lead to deadlock."

    invoke-static {v5}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/checkin/e;->a(Landroid/content/Context;)Lcom/google/android/gms/common/a;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gms/checkin/e;->a(Landroid/content/Context;Lcom/google/android/gms/common/a;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v4, v0}, Lcom/google/android/gms/config/b/b;->a(Ljava/lang/String;)Lcom/google/android/gms/config/b/b;

    .line 166
    const-string v0, "ConfigFetchTask"

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    const-string v0, "ConfigFetchTask"

    const-string v5, "added deviceDataVersionInfo to the request"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->c:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 184
    :try_start_2
    invoke-interface {v2}, Lcom/google/android/gms/config/a/d;->a()Ljava/util/Map;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_9

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 193
    new-instance v3, Lcom/google/android/gms/config/b/e;

    invoke-direct {v3}, Lcom/google/android/gms/config/b/e;-><init>()V

    .line 194
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/config/b/e;->a(Ljava/lang/String;)Lcom/google/android/gms/config/b/e;

    .line 195
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/config/b/e;->a(I)Lcom/google/android/gms/config/b/e;

    .line 196
    if-eqz v2, :cond_4

    .line 197
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 198
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/config/b/e;->a(Lcom/google/protobuf/a/a;)Lcom/google/android/gms/config/b/e;

    .line 200
    :cond_4
    invoke-virtual {v4, v3}, Lcom/google/android/gms/config/b/b;->a(Lcom/google/android/gms/config/b/e;)Lcom/google/android/gms/config/b/b;

    goto :goto_3

    .line 170
    :catch_1
    move-exception v0

    .line 173
    const-string v5, "ConfigFetchTask"

    const-string v6, "failed to get the device data version info from checkin service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 186
    :catch_2
    move-exception v0

    const-string v0, "ConfigFetchTask"

    const-string v1, "failed to get digests from config service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 187
    goto/16 :goto_0

    .line 204
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v3

    goto/16 :goto_0

    .line 206
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->c:Ljava/util/Set;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    :try_start_3
    invoke-interface {v2, v6}, Lcom/google/android/gms/config/a/d;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v1

    move v2, v1

    .line 217
    :goto_4
    if-ge v5, v8, :cond_8

    .line 218
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 223
    :try_start_4
    iget-object v9, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v9, v9, Lcom/google/android/gms/config/g;->a:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    .line 226
    :goto_5
    if-eqz v0, :cond_a

    .line 228
    new-instance v9, Lcom/google/android/gms/config/b/e;

    invoke-direct {v9}, Lcom/google/android/gms/config/b/e;-><init>()V

    .line 229
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/config/b/e;->a(Ljava/lang/String;)Lcom/google/android/gms/config/b/e;

    .line 230
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/config/b/e;->a(I)Lcom/google/android/gms/config/b/e;

    .line 231
    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/google/protobuf/a/a;->a([B)Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/config/b/e;->a(Lcom/google/protobuf/a/a;)Lcom/google/android/gms/config/b/e;

    .line 232
    :cond_7
    invoke-virtual {v4, v9}, Lcom/google/android/gms/config/b/b;->a(Lcom/google/android/gms/config/b/e;)Lcom/google/android/gms/config/b/b;

    .line 233
    add-int/lit8 v0, v2, 0x1

    .line 217
    :goto_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v2, v0

    goto :goto_4

    .line 211
    :catch_3
    move-exception v0

    const-string v0, "ConfigFetchTask"

    const-string v1, "failed to get some digests from config service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 212
    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v0, v3

    goto :goto_5

    .line 235
    :cond_8
    if-nez v2, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    move-object v0, v4

    .line 238
    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_6
.end method

.method private a(Lcom/google/android/gms/config/b/b;)Lcom/google/android/gms/config/b/c;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 86
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://android.clients.google.com/config"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v4, Lcom/google/android/gms/http/GoogleHttpClient;

    iget-object v2, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v2, v2, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ConfigFetch-"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x5d4044

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/1.0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3, v6}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/http/GoogleHttpClient;->getConnectionFactory()Lcom/google/android/gms/http/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/http/e;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 101
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 102
    const-string v2, "Content-Type"

    const-string v3, "application/x-protobuffer"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 104
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-static {v3}, Lcom/google/protobuf/a/c;->a(Ljava/io/OutputStream;)Lcom/google/protobuf/a/c;

    move-result-object v2

    .line 108
    invoke-virtual {p1, v2}, Lcom/google/android/gms/config/b/b;->a(Lcom/google/protobuf/a/c;)V

    .line 109
    invoke-virtual {v2}, Lcom/google/protobuf/a/c;->a()V

    .line 110
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 114
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 115
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_0

    .line 116
    const-string v5, "ConfigFetchTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bad response from server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    invoke-virtual {v4}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    .line 130
    invoke-static {v3}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v0}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    const-string v1, "ConfigFetchTask"

    const-string v2, "bad config fetch url https://android.clients.google.com/config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_0
    :try_start_3
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :try_start_4
    new-instance v1, Lcom/google/android/gms/config/b/c;

    invoke-direct {v1}, Lcom/google/android/gms/config/b/c;-><init>()V

    .line 122
    invoke-static {v2}, Lcom/google/protobuf/a/b;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a/b;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/config/b/c;->b(Lcom/google/protobuf/a/b;)Lcom/google/android/gms/config/b/c;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    .line 130
    invoke-static {v3}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 126
    :goto_1
    :try_start_5
    const-string v5, "ConfigFetchTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exception on config fetch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 127
    invoke-virtual {v4}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    .line 130
    invoke-static {v3}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/http/GoogleHttpClient;->close()V

    .line 130
    invoke-static {v3}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v2}, Lcom/google/c/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 129
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 125
    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/config/b/c;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 242
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-virtual {v0}, Lcom/google/android/gms/config/ConfigFetchService;->b()Lcom/google/android/gms/config/a/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 249
    :goto_1
    if-nez v4, :cond_2

    .line 250
    const-string v0, "ConfigFetchTask"

    const-string v1, "failed to connect to config service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v3

    goto :goto_1

    .line 254
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/config/b/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/f;

    .line 255
    const-string v1, "ConfigFetchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "updating config table for "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, v0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 259
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 260
    iget-object v1, v0, Lcom/google/android/gms/config/b/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/config/b/d;

    .line 261
    iget-object v7, v1, Lcom/google/android/gms/config/b/d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/config/b/d;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {v1}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 266
    :goto_4
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    invoke-interface {v4, v2, v1}, Lcom/google/android/gms/config/a/d;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 268
    :catch_1
    move-exception v1

    const-string v1, "ConfigFetchTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "failed to update config service with new values for "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/config/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_4
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v4, v6

    .line 288
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 290
    cmp-long v1, v8, v4

    if-gez v1, :cond_6

    .line 291
    if-nez v2, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v1

    .line 294
    goto :goto_1

    .line 295
    :cond_2
    if-eqz v2, :cond_0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-virtual {v0}, Lcom/google/android/gms/config/ConfigFetchService;->b()Lcom/google/android/gms/config/a/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 302
    :goto_4
    if-nez v3, :cond_3

    .line 303
    const-string v0, "ConfigFetchTask"

    const-string v1, "failed to connect to config service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 309
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v4, v4, Lcom/google/android/gms/config/g;->a:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :goto_6
    :try_start_3
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 326
    :catch_0
    move-exception v0

    const-string v0, "ConfigFetchTask"

    const-string v1, "failed to purge config service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    :catch_1
    move-exception v4

    :try_start_4
    const-string v4, "ConfigFetchTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  purging config for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/config/a/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    .line 324
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    check-cast p1, [Lcom/google/android/gms/config/g;

    array-length v2, p1

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be one Params object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    invoke-direct {p0}, Lcom/google/android/gms/config/f;->a()Lcom/google/android/gms/config/b/b;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "ConfigFetchTask"

    const-string v2, "failed to build request; aborting config fetch"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/config/f;->b()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/gms/config/f;->a(Lcom/google/android/gms/config/b/b;)Lcom/google/android/gms/config/b/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/config/f;->a(Lcom/google/android/gms/config/b/c;)V

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/config/f;->a:Lcom/google/android/gms/config/g;

    iget-object v0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Z)V

    return-void
.end method
