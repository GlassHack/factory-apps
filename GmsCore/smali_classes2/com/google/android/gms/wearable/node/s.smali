.class public final Lcom/google/android/gms/wearable/node/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/r;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/s;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private b(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/node/v;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/m;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iget-object v2, v2, Lcom/google/android/gms/wearable/c/q;->c:[B

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/m;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/s;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/gms/wearable/node/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 51
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iget-object v0, v0, Lcom/google/android/gms/wearable/c/q;->c:[B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 53
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 54
    new-instance v0, Lcom/google/android/gms/wearable/node/v;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/wearable/node/v;-><init>(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 56
    :goto_1
    :try_start_3
    const-string v3, "wearable"

    const-string v4, "Error trying to write V0 asset into a file."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    if-eqz v2, :cond_0

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_2
    move-object v0, v1

    .line 65
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 60
    :goto_3
    if-eqz v2, :cond_1

    .line 61
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 65
    :cond_1
    :goto_4
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 59
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 55
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/node/aq;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iget-object v1, v1, Lcom/google/android/gms/wearable/c/q;->c:[B

    if-eqz v1, :cond_1

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/node/s;->b(Lcom/google/android/gms/wearable/c/m;)Lcom/google/android/gms/wearable/node/v;

    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 29
    const-string v1, "wearable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dropped an incoming message because we failed to convert it to the latest version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/google/android/gms/wearable/node/aq;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/node/aq;-><init>(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance v1, Lcom/google/android/gms/wearable/node/aq;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/node/aq;-><init>(Lcom/google/android/gms/wearable/c/m;Lcom/google/android/gms/wearable/node/v;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
