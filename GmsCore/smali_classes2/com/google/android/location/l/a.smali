.class public final Lcom/google/android/location/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/a;


# instance fields
.field public final a:Lcom/google/android/location/l/b;

.field public final b:Lcom/google/android/location/l/d;

.field public final c:Lcom/google/android/location/l/d;

.field public final d:Lcom/google/android/location/l/d;

.field public final e:Lcom/google/android/location/l/d;

.field public final f:Lcom/google/android/location/k/b;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/f/ag;)V
    .locals 8

    .prologue
    .line 48
    new-instance v1, Lcom/google/android/location/l/b;

    invoke-interface {p1}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/l/b;-><init>(Lcom/google/android/location/k/e;Lcom/google/android/location/f/ag;JJ)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/location/l/a;-><init>(Lcom/google/android/location/k/b;Lcom/google/android/location/l/b;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/k/b;Lcom/google/android/location/l/b;)V
    .locals 12

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/l/a;->g:Z

    .line 55
    iput-object p1, p0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    .line 56
    iput-object p2, p0, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    .line 57
    invoke-interface {p1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    .line 58
    const/4 v0, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v4, p2, Lcom/google/android/location/l/b;->f:Lcom/google/android/location/k/e;

    invoke-interface {v4}, Lcom/google/android/location/k/e;->f()Ljava/io/File;

    move-result-object v4

    const-string v5, "cp_state"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/l/b;->b(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    .line 62
    :goto_1
    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/l/b;->a(J)V

    .line 63
    iget-object v0, p2, Lcom/google/android/location/l/b;->b:Lcom/google/android/location/l/d;

    iput-object v0, p0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    .line 64
    iget-object v0, p2, Lcom/google/android/location/l/b;->c:Lcom/google/android/location/l/d;

    iput-object v0, p0, Lcom/google/android/location/l/a;->c:Lcom/google/android/location/l/d;

    .line 65
    iget-object v0, p2, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    iput-object v0, p0, Lcom/google/android/location/l/a;->d:Lcom/google/android/location/l/d;

    .line 66
    iget-object v0, p2, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    iput-object v0, p0, Lcom/google/android/location/l/a;->e:Lcom/google/android/location/l/d;

    .line 67
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "CollectionPolicy"

    const-string v1, "Bandwidth token bucket created: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "CollectionPolicy"

    const-string v1, "GPS token bucket for active and smart collection created: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/l/a;->c:Lcom/google/android/location/l/d;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "CollectionPolicy"

    const-string v1, "GPS token bucket for sensor collection created: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/l/a;->d:Lcom/google/android/location/l/d;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "CollectionPolicy"

    const-string v1, "GPS token bucket for burst collection created: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/l/a;->e:Lcom/google/android/location/l/d;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    return-void

    .line 58
    :cond_4
    :try_start_3
    sget-object v1, Lcom/google/android/location/n/a;->aZ:Lcom/google/g/a/b/b/c;

    invoke-static {v0, v1}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-gtz v1, :cond_5

    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/l/b;->b(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_2
    :try_start_5
    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/l/b;->b(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v0}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x3

    :try_start_6
    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v10

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v11

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/location/l/b;->b:Lcom/google/android/location/l/d;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/location/l/d;->a(JJJLcom/google/g/a/b/b/a;)V

    iget-object v1, p2, Lcom/google/android/location/l/b;->c:Lcom/google/android/location/l/d;

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/location/l/d;->a(JJJLcom/google/g/a/b/b/a;)V

    iget-object v1, p2, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/location/l/d;->a(JJJLcom/google/g/a/b/b/a;)V

    iget-object v1, p2, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/location/l/d;->a(JJJLcom/google/g/a/b/b/a;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/l/b;->b(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    invoke-virtual {p2, v2, v3}, Lcom/google/android/location/l/b;->b(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v9}, Lcom/google/android/location/l/b;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/android/location/l/d;JZ)Lcom/google/android/location/l/e;
    .locals 10

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    .line 172
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/l/d;->b(JJZ)Lcom/google/android/location/l/e;

    move-result-object v0

    .line 174
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "CollectionPolicy"

    const-string v2, "Requesting: %d, tokens left: %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    iget-wide v8, p1, Lcom/google/android/location/l/d;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/location/l/b;->a(J)V

    .line 180
    :cond_1
    return-object v0
.end method

.method public final a(Lcom/google/android/location/l/e;J)V
    .locals 8

    .prologue
    .line 190
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/location/l/e;->a(J)J

    move-result-wide v0

    .line 194
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_2

    const-string v2, "CollectionPolicy"

    const-string v3, "amountToReturn: %d, actualReturned: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    iget-object v1, p0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/l/b;->a(J)V

    goto :goto_0
.end method

.method public final declared-synchronized a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/l/a;->g:Z

    if-nez v1, :cond_1

    .line 84
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "CollectionPolicy"

    const-string v2, "BD precondition check result true - request size: %d - not on Cellular network."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 88
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    iget-object v0, p0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    const/4 v6, 0x1

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/l/d;->a(JJZ)Z

    move-result v0

    .line 90
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "CollectionPolicy"

    const-string v2, "BD precondition check result %s: request size: %d, curent bd bucket: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 7

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/l/a;->g:Z

    if-nez v0, :cond_1

    .line 104
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "CollectionPolicy"

    const-string v1, "collection reported: %d - not on cellular network"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/google/android/location/l/d;->a(JJ)Z

    .line 110
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_2

    const-string v2, "CollectionPolicy"

    const-string v3, "collection reported %d, new bd bucket: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/location/l/a;->b:Lcom/google/android/location/l/d;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/l/b;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
