.class public final Lcom/google/android/location/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field public final b:J

.field final c:J

.field public d:Lcom/google/android/location/f/ah;

.field public e:J

.field public f:J

.field g:Lcom/google/android/location/l/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/location/f/ah;JJ)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/google/android/location/l/f;

    invoke-direct {v0}, Lcom/google/android/location/l/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/l/d;->g:Lcom/google/android/location/l/f;

    .line 90
    iput-object p1, p0, Lcom/google/android/location/l/d;->a:Ljava/lang/String;

    .line 91
    iput-wide p2, p0, Lcom/google/android/location/l/d;->c:J

    .line 92
    iput-object p4, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    .line 93
    iput-wide p5, p0, Lcom/google/android/location/l/d;->b:J

    .line 94
    invoke-virtual {p0, p7, p8}, Lcom/google/android/location/l/d;->a(J)V

    .line 95
    return-void
.end method

.method private static a(JJJJ)J
    .locals 2

    .prologue
    .line 206
    add-long v0, p0, p2

    sub-long/2addr v0, p4

    invoke-static {p6, p7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Z
    .locals 6

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 129
    iget-object v0, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v0, v0, Lcom/google/android/location/f/ah;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/location/l/d;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/l/d;->c:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(J)V
    .locals 5

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/l/d;->e:J

    .line 111
    invoke-direct {p0}, Lcom/google/android/location/l/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    iget-wide v2, p0, Lcom/google/android/location/l/d;->b:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    iget-wide v2, p0, Lcom/google/android/location/l/d;->c:J

    invoke-static {v0, v2, v3}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    .line 117
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 118
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/l/d;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/l/d;->f:J

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/l/d;->f:J

    goto :goto_0
.end method

.method private declared-synchronized e(J)Z
    .locals 3

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/l/d;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(J)Z
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 332
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/location/l/d;->f:J

    .line 333
    iget-wide v4, p0, Lcom/google/android/location/l/d;->f:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 334
    iget-object v0, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v0, v0, Lcom/google/android/location/f/ah;->b:J

    .line 335
    iput-wide p1, p0, Lcom/google/android/location/l/d;->f:J

    .line 345
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/google/android/location/l/d;->e:J

    .line 346
    iget-wide v6, p0, Lcom/google/android/location/l/d;->e:J

    add-long/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v6, v6, Lcom/google/android/location/f/ah;->a:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/l/d;->e:J

    .line 347
    iget-wide v0, p0, Lcom/google/android/location/l/d;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/location/l/d;->f:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 348
    :goto_1
    if-eqz v0, :cond_2

    .line 349
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "TokenBucket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adjusted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/l/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_2
    monitor-exit p0

    return v0

    .line 337
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lcom/google/android/location/l/d;->f:J

    sub-long v4, p1, v4

    iget-object v6, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v6, v6, Lcom/google/android/location/f/ah;->c:J

    div-long/2addr v4, v6

    .line 338
    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v0, v0, Lcom/google/android/location/f/ah;->b:J

    mul-long/2addr v0, v4

    .line 342
    iget-wide v6, p0, Lcom/google/android/location/l/d;->f:J

    iget-object v8, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v8, v8, Lcom/google/android/location/f/ah;->c:J

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/location/l/d;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 347
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/g/a/b/b/a;
    .locals 1

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/l/d;->g:Lcom/google/android/location/l/f;

    invoke-virtual {v0}, Lcom/google/android/location/l/f;->a()Lcom/google/g/a/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/l/d;->d(J)V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/l/d;->f(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JJJLcom/google/g/a/b/b/a;)V
    .locals 15

    .prologue
    .line 160
    monitor-enter p0

    if-nez p7, :cond_0

    .line 161
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/location/l/d;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v10

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v12

    .line 168
    iget-wide v6, p0, Lcom/google/android/location/l/d;->b:J

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v8, p1

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/l/d;->a(JJJJ)J

    move-result-wide v2

    .line 170
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_2

    .line 175
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/l/d;->d(J)V

    .line 185
    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/location/l/d;->f(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 178
    :cond_2
    :try_start_2
    iget-wide v6, p0, Lcom/google/android/location/l/d;->b:J

    move-wide/from16 v2, p3

    move-wide v4, v10

    move-wide/from16 v8, p1

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/l/d;->a(JJJJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/l/d;->f:J

    .line 180
    invoke-direct {p0}, Lcom/google/android/location/l/d;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    iget-wide v2, p0, Lcom/google/android/location/l/d;->f:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/location/l/d;->b:J

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v4}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/location/l/d;->c:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    :goto_2
    iput-wide v2, p0, Lcom/google/android/location/l/d;->f:J

    .line 183
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v2, v2, Lcom/google/android/location/f/ah;->a:J

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/l/d;->e:J

    goto :goto_1

    .line 181
    :cond_4
    iget-wide v2, p0, Lcom/google/android/location/l/d;->c:J

    invoke-static {v4, v2, v3}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/google/android/location/l/d;->b:J

    add-long v6, v6, p1

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->add(II)V

    :cond_5
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/l/d;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v2, v4

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/google/android/location/f/ah;J)V
    .locals 4

    .prologue
    .line 211
    monitor-enter p0

    if-nez p1, :cond_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/location/l/d;->f(J)Z

    .line 218
    iget-wide v0, p0, Lcom/google/android/location/l/d;->e:J

    iget-wide v2, p1, Lcom/google/android/location/f/ah;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 219
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "TokenBucket"

    const-string v1, "Bucket size shrinked"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    iget-wide v0, p1, Lcom/google/android/location/f/ah;->a:J

    iput-wide v0, p0, Lcom/google/android/location/l/d;->e:J

    .line 222
    :cond_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "TokenBucket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated bucket parameters to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/location/f/ah;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_3
    iput-object p1, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/g/a/b/b/a;)V
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/location/l/d;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    .line 143
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/l/d;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JJ)Z
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 267
    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 273
    :goto_0
    monitor-exit p0

    return v0

    .line 270
    :cond_0
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/l/d;->f(J)Z

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/l/d;->e(J)Z

    move-result v0

    .line 272
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/location/l/d;->e:J

    sub-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/l/d;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JJZ)Z
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/l/d;->f(J)Z

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/l/d;->e(J)Z

    move-result v1

    .line 247
    if-eqz p5, :cond_0

    .line 248
    iget-object v2, p0, Lcom/google/android/location/l/d;->g:Lcom/google/android/location/l/f;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/location/l/f;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    monitor-exit p0

    return v1

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)J
    .locals 3

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/l/d;->f(J)Z

    .line 231
    iget-wide v0, p0, Lcom/google/android/location/l/d;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(JJZ)Lcom/google/android/location/l/e;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 291
    monitor-enter p0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 294
    :cond_1
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/location/l/d;->f(J)Z

    .line 295
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/location/l/d;->a(JJZ)Z

    move-result v1

    .line 296
    if-eqz v1, :cond_0

    .line 297
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/location/l/d;->e:J

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/l/d;->e:J

    .line 298
    new-instance v0, Lcom/google/android/location/l/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/location/l/e;-><init>(Lcom/google/android/location/l/d;JB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 312
    monitor-enter p0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 317
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 315
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v0, v0, Lcom/google/android/location/f/ah;->a:J

    iget-wide v2, p0, Lcom/google/android/location/l/d;->e:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 316
    iget-wide v2, p0, Lcom/google/android/location/l/d;->e:J

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    iget-wide v4, v4, Lcom/google/android/location/f/ah;->a:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/l/d;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v1, "%s - current tokens: %d, last refill: %s, params: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/l/d;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/location/l/d;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/location/l/d;->b:J

    iget-wide v8, p0, Lcom/google/android/location/l/d;->f:J

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/location/l/d;->d:Lcom/google/android/location/f/ah;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
