.class public final Lcom/google/android/location/collectionlib/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/io/DataInputStream;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private final g:Lcom/google/android/location/f/a;

.field private final h:Lcom/google/android/location/f/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/location/f/a;Lcom/google/android/location/f/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/a;->b:J

    .line 28
    iput v2, p0, Lcom/google/android/location/collectionlib/a;->d:I

    .line 29
    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/a;->e:Z

    .line 47
    iput-object p1, p0, Lcom/google/android/location/collectionlib/a;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/android/location/collectionlib/a;->g:Lcom/google/android/location/f/a;

    .line 49
    iput-object p3, p0, Lcom/google/android/location/collectionlib/a;->h:Lcom/google/android/location/f/a;

    .line 50
    return-void
.end method

.method private a(Ljava/io/DataInputStream;I)[B
    .locals 3

    .prologue
    .line 133
    new-array v1, p2, [B

    .line 134
    const/4 v0, 0x0

    .line 135
    :cond_0
    sub-int v2, p2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    .line 137
    add-int/2addr v0, v2

    .line 138
    if-ne v0, p2, :cond_0

    .line 139
    :cond_1
    if-eq v0, p2, :cond_2

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    new-instance v0, Lcom/google/android/location/collectionlib/b;

    const-string v1, "Unexpected end of file."

    invoke-direct {v0, v1}, Lcom/google/android/location/collectionlib/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 146
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a()[B
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/a;->b:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Could not found file %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/collectionlib/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/location/collectionlib/a;->e:Z

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/collectionlib/a;->b:J

    .line 69
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/location/collectionlib/a;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 112
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 74
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/android/location/collectionlib/a;->f:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/collectionlib/a;->f:Ljava/lang/Integer;

    .line 76
    iget v2, p0, Lcom/google/android/location/collectionlib/a;->d:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/android/location/collectionlib/a;->d:I

    .line 77
    iget v2, p0, Lcom/google/android/location/collectionlib/a;->d:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/a;->b:J
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 79
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 85
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/google/android/location/collectionlib/a;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v6, :cond_6

    .line 87
    iget-object v0, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 88
    iget-object v1, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    invoke-direct {p0, v1, v0}, Lcom/google/android/location/collectionlib/a;->a(Ljava/io/DataInputStream;I)[B

    move-result-object v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 107
    :cond_5
    :goto_1
    iget v2, p0, Lcom/google/android/location/collectionlib/a;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/location/collectionlib/a;->d:I

    .line 108
    iget v1, p0, Lcom/google/android/location/collectionlib/a;->d:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/a;->b:J
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 110
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 89
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/google/android/location/collectionlib/a;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v6, :cond_5

    .line 92
    iget-object v0, p0, Lcom/google/android/location/collectionlib/a;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/location/collectionlib/a;->h:Lcom/google/android/location/f/a;

    .line 94
    :goto_2
    if-nez v0, :cond_8

    .line 95
    new-instance v0, Lcom/google/android/location/collectionlib/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to decrypt GLocRequest: no cipher for version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/collectionlib/a;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/collectionlib/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 115
    :goto_3
    :try_start_8
    new-instance v0, Lcom/google/android/location/collectionlib/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/collectionlib/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/collectionlib/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 92
    :cond_7
    :try_start_9
    iget-object v0, p0, Lcom/google/android/location/collectionlib/a;->g:Lcom/google/android/location/f/a;
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 99
    :cond_8
    :try_start_a
    iget-object v1, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 100
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    .line 101
    iget-object v1, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    invoke-static {v0}, Lcom/google/android/location/collectionlib/db;->b([B)[B
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 103
    :catch_3
    move-exception v0

    .line 104
    :try_start_b
    new-instance v1, Lcom/google/android/location/collectionlib/b;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/location/collectionlib/b;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 116
    :catch_4
    move-exception v0

    .line 117
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/a;->b()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 118
    :goto_4
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_4
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/location/collectionlib/a;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/a;->e:Z

    .line 177
    :cond_0
    return-void
.end method
