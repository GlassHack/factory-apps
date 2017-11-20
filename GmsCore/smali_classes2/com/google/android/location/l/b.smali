.class public final Lcom/google/android/location/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field final b:Lcom/google/android/location/l/d;

.field final c:Lcom/google/android/location/l/d;

.field public final d:Lcom/google/android/location/l/d;

.field public final e:Lcom/google/android/location/l/d;

.field final f:Lcom/google/android/location/k/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/k/e;Lcom/google/android/location/f/ag;JJ)V
    .locals 19

    .prologue
    .line 76
    new-instance v1, Lcom/google/android/location/l/d;

    const-string v2, "bandwidth"

    const-wide/16 v3, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/location/f/ag;->q()Lcom/google/android/location/f/ah;

    move-result-object v5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/l/d;-><init>(Ljava/lang/String;JLcom/google/android/location/f/ah;JJ)V

    new-instance v3, Lcom/google/android/location/l/d;

    const-string v4, "general-gps"

    const-wide/16 v5, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/location/f/ag;->r()Lcom/google/android/location/f/ah;

    move-result-object v7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lcom/google/android/location/l/d;-><init>(Ljava/lang/String;JLcom/google/android/location/f/ah;JJ)V

    new-instance v5, Lcom/google/android/location/l/d;

    const-string v6, "sensor-gps"

    const-wide/16 v7, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/location/f/ag;->s()Lcom/google/android/location/f/ah;

    move-result-object v9

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v5 .. v13}, Lcom/google/android/location/l/d;-><init>(Ljava/lang/String;JLcom/google/android/location/f/ah;JJ)V

    new-instance v7, Lcom/google/android/location/l/d;

    const-string v8, "burst-gps"

    const-wide/16 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/location/f/ag;->t()Lcom/google/android/location/f/ah;

    move-result-object v11

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    invoke-direct/range {v7 .. v15}, Lcom/google/android/location/l/d;-><init>(Ljava/lang/String;JLcom/google/android/location/f/ah;JJ)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v1

    move-object v11, v3

    move-object v12, v5

    move-object v13, v7

    move-wide/from16 v14, p3

    move-wide/from16 v16, p5

    invoke-direct/range {v8 .. v17}, Lcom/google/android/location/l/b;-><init>(Lcom/google/android/location/k/e;Lcom/google/android/location/l/d;Lcom/google/android/location/l/d;Lcom/google/android/location/l/d;Lcom/google/android/location/l/d;JJ)V

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/k/e;Lcom/google/android/location/l/d;Lcom/google/android/location/l/d;Lcom/google/android/location/l/d;Lcom/google/android/location/l/d;JJ)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/location/l/b;->f:Lcom/google/android/location/k/e;

    .line 93
    iput-wide p6, p0, Lcom/google/android/location/l/b;->a:J

    .line 94
    iput-object p2, p0, Lcom/google/android/location/l/b;->b:Lcom/google/android/location/l/d;

    .line 95
    iput-object p3, p0, Lcom/google/android/location/l/b;->c:Lcom/google/android/location/l/d;

    .line 96
    iput-object p4, p0, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    .line 97
    iput-object p5, p0, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    .line 98
    invoke-virtual {p0, p8, p9}, Lcom/google/android/location/l/b;->b(J)V

    .line 99
    return-void
.end method

.method private static a(Lcom/google/android/location/l/d;Lcom/google/g/a/b/b/a;I)V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->ba:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/location/l/d;->a(Lcom/google/g/a/b/b/a;)V

    .line 252
    invoke-virtual {p1, p2, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 253
    return-void
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 125
    if-eqz p0, :cond_0

    .line 127
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/l/b;->f:Lcom/google/android/location/k/e;

    invoke-interface {v0}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/l/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/l/c;-><init>(Lcom/google/android/location/l/b;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/k/i;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(JLjava/io/ByteArrayOutputStream;)V
    .locals 7

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 233
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->aZ:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 234
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/location/l/b;->a:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 235
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 237
    iget-object v2, p0, Lcom/google/android/location/l/b;->b:Lcom/google/android/location/l/d;

    const/4 v3, 0x3

    invoke-static {v2, v1, v3}, Lcom/google/android/location/l/b;->a(Lcom/google/android/location/l/d;Lcom/google/g/a/b/b/a;I)V

    .line 239
    iget-object v2, p0, Lcom/google/android/location/l/b;->c:Lcom/google/android/location/l/d;

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/google/android/location/l/b;->a(Lcom/google/android/location/l/d;Lcom/google/g/a/b/b/a;I)V

    .line 241
    iget-object v2, p0, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    const/4 v3, 0x5

    invoke-static {v2, v1, v3}, Lcom/google/android/location/l/b;->a(Lcom/google/android/location/l/d;Lcom/google/g/a/b/b/a;I)V

    .line 243
    iget-object v2, p0, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Lcom/google/android/location/l/b;->a(Lcom/google/android/location/l/d;Lcom/google/g/a/b/b/a;I)V

    .line 245
    invoke-virtual {v1}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 246
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/l/b;->b:Lcom/google/android/location/l/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/l/d;->a(J)V

    .line 224
    iget-object v0, p0, Lcom/google/android/location/l/b;->c:Lcom/google/android/location/l/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/l/d;->a(J)V

    .line 225
    iget-object v0, p0, Lcom/google/android/location/l/b;->d:Lcom/google/android/location/l/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/l/d;->a(J)V

    .line 226
    iget-object v0, p0, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/l/d;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
