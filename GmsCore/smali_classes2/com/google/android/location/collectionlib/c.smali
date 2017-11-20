.class public final Lcom/google/android/location/collectionlib/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/location/p/a/c;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private final e:Lcom/google/android/location/f/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/location/f/a;Lcom/google/android/location/p/a/c;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/c;->c:I

    .line 60
    iput-object p1, p0, Lcom/google/android/location/collectionlib/c;->b:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/google/android/location/collectionlib/c;->e:Lcom/google/android/location/f/a;

    .line 62
    invoke-static {p3}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    .line 63
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/c;->c:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/c;->d:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/collectionlib/by;
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 71
    monitor-enter p0

    const/4 v5, 0x6

    :try_start_0
    invoke-virtual {p1, v5}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    .line 73
    iget-object v6, p0, Lcom/google/android/location/collectionlib/c;->d:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 75
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/collectionlib/c;->d:Ljava/lang/String;

    move v4, v1

    .line 78
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/location/collectionlib/c;->d:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :try_start_2
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    if-eqz v4, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/location/collectionlib/c;->e:Lcom/google/android/location/f/a;

    iget-boolean v0, v0, Lcom/google/android/location/f/a;->a:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/c;->e:Lcom/google/android/location/f/a;

    invoke-virtual {p1}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/collectionlib/db;->a([B)[B

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V

    .line 88
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "SeqNum #%d written to file: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 90
    :cond_2
    iget v0, p0, Lcom/google/android/location/collectionlib/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/c;->c:I

    .line 91
    iget v0, p0, Lcom/google/android/location/collectionlib/c;->c:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/c;->a()V

    .line 95
    :cond_3
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_5
    move v0, v3

    .line 84
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    :try_start_4
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "Could not close the file."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_5
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "Failed to write GLocRequest"

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 98
    :cond_6
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "File not found."

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 105
    if-eqz v1, :cond_4

    .line 106
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 109
    :catch_2
    move-exception v1

    :try_start_7
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "Could not close the file."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 100
    :catch_3
    move-exception v1

    move-object v1, v0

    :goto_3
    :try_start_8
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "Failed to write data to file. File might be corrupted."

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 101
    :cond_7
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/c;->a()V

    .line 102
    new-instance v0, Lcom/google/android/location/collectionlib/by;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Failed to write data to file"

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/location/collectionlib/by;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 105
    if-eqz v1, :cond_4

    .line 106
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 109
    :catch_4
    move-exception v1

    :try_start_a
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "Could not close the file."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 104
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 105
    :goto_4
    if-eqz v1, :cond_8

    .line 106
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 110
    :cond_8
    :goto_5
    :try_start_c
    throw v0

    .line 109
    :catch_5
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/location/collectionlib/c;->a:Lcom/google/android/location/p/a/c;

    const-string v2, "Could not close the file."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 104
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 100
    :catch_6
    move-exception v0

    goto :goto_3

    .line 97
    :catch_7
    move-exception v0

    goto :goto_2
.end method
