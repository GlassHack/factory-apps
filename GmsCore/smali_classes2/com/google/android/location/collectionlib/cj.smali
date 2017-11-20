.class public final Lcom/google/android/location/collectionlib/cj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/android/location/collectionlib/cj;->a:I

    .line 29
    iput v0, p0, Lcom/google/android/location/collectionlib/cj;->b:I

    .line 39
    iput-boolean p1, p0, Lcom/google/android/location/collectionlib/cj;->c:Z

    .line 40
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/location/collectionlib/cj;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-static {p0}, Lcom/google/android/location/collectionlib/cj;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 55
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 57
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 58
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 60
    :goto_0
    new-instance v1, Lcom/google/android/location/collectionlib/cj;

    invoke-direct {v1, v0}, Lcom/google/android/location/collectionlib/cj;-><init>(Z)V

    .line 61
    iput v4, v1, Lcom/google/android/location/collectionlib/cj;->a:I

    .line 62
    iput v5, v1, Lcom/google/android/location/collectionlib/cj;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 68
    return-object v1

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "sessionSummary"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/location/collectionlib/cj;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/g/a/b/b/a;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 77
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v4

    .line 78
    if-lez v4, :cond_3

    move v3, v2

    .line 79
    :goto_0
    if-ge v3, v4, :cond_3

    .line 80
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 81
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v5

    .line 83
    iget v6, p0, Lcom/google/android/location/collectionlib/cj;->a:I

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v7

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v7, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v5, v8, v1}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/location/collectionlib/cj;->a:I

    .line 84
    iget v0, p0, Lcom/google/android/location/collectionlib/cj;->b:I

    const/4 v1, 0x7

    invoke-virtual {v5, v1}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/location/collectionlib/cj;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 88
    :cond_3
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/location/collectionlib/cj;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-static {p1}, Lcom/google/android/location/collectionlib/cj;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 111
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 112
    iget v0, p0, Lcom/google/android/location/collectionlib/cj;->a:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 113
    iget v0, p0, Lcom/google/android/location/collectionlib/cj;->b:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 114
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cj;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cj;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionSummary [gpsCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/collectionlib/cj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiScanCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/collectionlib/cj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/collectionlib/cj;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
