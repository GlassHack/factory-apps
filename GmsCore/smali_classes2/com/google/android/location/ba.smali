.class public final Lcom/google/android/location/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ab;


# instance fields
.field final a:Lcom/google/android/location/os/at;

.field b:J

.field c:Z

.field d:Z

.field e:J

.field private f:Z

.field private g:Lcom/google/android/location/bc;

.field private h:J

.field private i:Ljava/util/List;

.field private j:J

.field private k:Lcom/google/android/location/collectionlib/ay;

.field private final l:Lcom/google/android/location/v;

.field private final m:Lcom/google/android/location/av;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/v;Lcom/google/android/location/av;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide v2, p0, Lcom/google/android/location/ba;->b:J

    .line 67
    iput-boolean v8, p0, Lcom/google/android/location/ba;->c:Z

    .line 71
    iput-boolean v8, p0, Lcom/google/android/location/ba;->d:Z

    .line 74
    iput-boolean v8, p0, Lcom/google/android/location/ba;->f:Z

    .line 76
    sget-object v0, Lcom/google/android/location/bc;->a:Lcom/google/android/location/bc;

    iput-object v0, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    .line 79
    iput-wide v2, p0, Lcom/google/android/location/ba;->h:J

    .line 83
    iput-wide v4, p0, Lcom/google/android/location/ba;->e:J

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    .line 87
    iput-wide v4, p0, Lcom/google/android/location/ba;->j:J

    .line 103
    iput-object p1, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    .line 104
    iput-object p2, p0, Lcom/google/android/location/ba;->l:Lcom/google/android/location/v;

    .line 105
    iput-object p3, p0, Lcom/google/android/location/ba;->m:Lcom/google/android/location/av;

    .line 106
    invoke-virtual {p2}, Lcom/google/android/location/v;->c()J

    move-result-wide v0

    .line 108
    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 109
    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    .line 110
    sub-long v4, v2, v0

    const-wide/32 v6, 0x6cf2a0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 113
    const-wide/32 v0, 0x6ddd00

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 115
    :cond_0
    invoke-direct {p0, v0, v1, v8}, Lcom/google/android/location/ba;->a(JZ)V

    .line 116
    return-void
.end method

.method private a(J)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    iget-wide v4, p0, Lcom/google/android/location/ba;->j:J

    sub-long v4, p1, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 287
    :cond_0
    return-void

    .line 274
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "SensorUploader"

    const-string v3, "Attempting an old session cleanup"

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    iput-wide p1, p0, Lcom/google/android/location/ba;->j:J

    .line 276
    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 279
    if-eqz v4, :cond_0

    .line 280
    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 281
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 282
    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/google/android/location/ba;->a(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "SensorUploader"

    const-string v7, "%s removed: Session directory too old."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v6}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z

    .line 280
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 282
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_9

    array-length v10, v7

    move v0, v2

    :goto_2
    if-ge v0, v10, :cond_9

    aget-object v11, v7, v0

    invoke-static {v11, v8, v9}, Lcom/google/android/location/ba;->a(Ljava/io/File;J)Z

    move-result v11

    if-eqz v11, :cond_8

    move v0, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method private a(JZ)V
    .locals 9

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/google/android/location/ba;->h:J

    .line 199
    iget-wide v0, p0, Lcom/google/android/location/ba;->h:J

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    .line 200
    if-eqz p3, :cond_0

    .line 201
    iget-object v2, p0, Lcom/google/android/location/ba;->l:Lcom/google/android/location/v;

    iget-object v3, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    iget-object v3, v2, Lcom/google/android/location/v;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/google/android/location/v;->c:Lcom/google/g/a/b/b/a;

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "SensorUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Next session upload attempt will be at: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v5}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static a(Ljava/io/File;J)Z
    .locals 11

    .prologue
    const-wide/32 v8, 0x36ee80

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 323
    sub-long v4, p1, v2

    .line 324
    const-wide/32 v6, 0x240c8400

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    add-long v6, p1, v8

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".lck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    cmp-long v2, v4, v8

    if-lez v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    const-string v3, "SensorUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found old lock file in directory. Age = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private b(J)V
    .locals 7

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/google/android/location/ba;->b:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 392
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resetting alarm to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    iput-wide p1, p0, Lcom/google/android/location/ba;->b:J

    .line 394
    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/ba;->b:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 396
    :cond_1
    return-void
.end method

.method private d()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 215
    invoke-direct {p0}, Lcom/google/android/location/ba;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SensorUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conditions not good for collection. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/ba;->m:Lcom/google/android/location/av;

    invoke-virtual {v3}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/ba;->f()V

    .line 247
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    .line 223
    iget-wide v4, p0, Lcom/google/android/location/ba;->h:J

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    .line 224
    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 225
    invoke-direct {p0}, Lcom/google/android/location/ba;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    sget-object v2, Lcom/google/android/location/bc;->c:Lcom/google/android/location/bc;

    iput-object v2, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    .line 230
    iget-object v2, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_3
    invoke-direct {p0}, Lcom/google/android/location/ba;->e()V

    goto :goto_0

    .line 238
    :cond_4
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_5

    const-string v1, "SensorUploader"

    const-string v2, "WiFi not connected. Canceling upload attempt"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/ba;->f()V

    goto :goto_0

    .line 245
    :cond_6
    invoke-direct {p0, v4, v5}, Lcom/google/android/location/ba;->b(J)V

    move v0, v1

    .line 247
    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 342
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    const-string v1, "uploadNext()"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/ba;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/location/ba;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    sget-object v1, Lcom/google/android/location/bc;->c:Lcom/google/android/location/bc;

    if-ne v0, v1, :cond_4

    .line 344
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 347
    invoke-static {}, Lcom/google/android/location/collectionlib/bw;->a()Lcom/google/android/location/collectionlib/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/collectionlib/bw;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    sget-boolean v1, Lcom/google/android/location/j/a;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "SensorUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " locked."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "SensorUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handling session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SensorUploader"

    const/4 v3, 0x0

    invoke-interface {v1, v0, p0, v2, v3}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/ab;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/ba;->k:Lcom/google/android/location/collectionlib/ay;

    .line 364
    iget-object v0, p0, Lcom/google/android/location/ba;->k:Lcom/google/android/location/collectionlib/ay;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/google/android/location/ba;->k:Lcom/google/android/location/collectionlib/ay;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ay;->a()V

    .line 371
    :goto_1
    return-void

    .line 370
    :cond_4
    invoke-direct {p0}, Lcom/google/android/location/ba;->f()V

    goto :goto_1
.end method

.method private f()V
    .locals 2

    .prologue
    .line 378
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    const-string v1, "Returning to the IDLE state"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/ba;->k:Lcom/google/android/location/collectionlib/ay;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/location/ba;->k:Lcom/google/android/location/collectionlib/ay;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ay;->b()V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/ba;->k:Lcom/google/android/location/collectionlib/ay;

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ba;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-boolean v0, p0, Lcom/google/android/location/ba;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/ba;->f:Z

    .line 385
    :cond_2
    sget-object v0, Lcom/google/android/location/bc;->a:Lcom/google/android/location/bc;

    iput-object v0, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    .line 387
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/ba;->b(J)V

    .line 388
    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-boolean v0, p0, Lcom/google/android/location/ba;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/ba;->m:Lcom/google/android/location/av;

    invoke-virtual {v0, v1}, Lcom/google/android/location/av;->a(Z)Lcom/google/android/location/f/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->n()Ljava/io/File;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 408
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 409
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/google/android/location/ba;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/ba;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/google/android/location/ba;->g()Z

    move-result v0

    .line 530
    invoke-direct {p0}, Lcom/google/android/location/ba;->i()Z

    move-result v1

    .line 531
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 532
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "SensorUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Aborting upload. wifiConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/ba;->m:Lcom/google/android/location/av;

    invoke-virtual {v2}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/ba;->f()V

    .line 536
    :cond_2
    return-void
.end method


# virtual methods
.method final a()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x6ddd00

    const-wide/16 v10, 0x1388

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lcom/google/android/location/ba;->m:Lcom/google/android/location/av;

    invoke-virtual {v0}, Lcom/google/android/location/av;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    sget-object v1, Lcom/google/android/location/bc;->a:Lcom/google/android/location/bc;

    if-eq v0, v1, :cond_1

    .line 121
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t schedule due to collectionPolicy. Returning to idle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/ba;->m:Lcom/google/android/location/av;

    invoke-virtual {v2}, Lcom/google/android/location/av;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/ba;->f()V

    .line 147
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/ba;->a(J)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    .line 132
    sget-object v4, Lcom/google/android/location/bb;->a:[I

    iget-object v5, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    invoke-virtual {v5}, Lcom/google/android/location/bc;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 143
    :goto_1
    iget-object v4, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    if-eq v3, v4, :cond_4

    .line 144
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_4

    const-string v4, "SensorUploader"

    const-string v5, "uploader state changed from %s to %s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    iget-object v3, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    if-nez v0, :cond_3

    goto :goto_0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/location/ba;->h:J

    add-long/2addr v6, v12

    invoke-direct {p0}, Lcom/google/android/location/ba;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    cmp-long v0, v4, v6

    if-ltz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/location/ba;->h()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "SensorUploader"

    const-string v6, "No sessions found."

    invoke-static {v0, v6}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v4, v5, v2}, Lcom/google/android/location/ba;->a(JZ)V

    move v0, v2

    goto :goto_1

    :cond_6
    iget-wide v6, p0, Lcom/google/android/location/ba;->e:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v10

    if-gez v0, :cond_8

    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    add-long v6, v4, v10

    invoke-direct {p0, v6, v7}, Lcom/google/android/location/ba;->b(J)V

    :cond_7
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/google/android/location/ba;->a(J)V

    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/location/ba;->f:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v4, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    iget-boolean v0, p0, Lcom/google/android/location/ba;->d:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/os/ax;->b()Z

    move-result v0

    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_a

    const-string v4, "SensorUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wifi reconnect "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    iput-boolean v2, p0, Lcom/google/android/location/ba;->f:Z

    :cond_b
    sget-object v0, Lcom/google/android/location/bc;->b:Lcom/google/android/location/bc;

    iput-object v0, p0, Lcom/google/android/location/ba;->g:Lcom/google/android/location/bc;

    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v2}, Lcom/google/android/location/ba;->a(JZ)V

    move v0, v2

    goto/16 :goto_1

    :cond_c
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_a

    const-string v0, "SensorUploader"

    const-string v4, "No WiFi reconnect needed since already on WiFi"

    invoke-static {v0, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    cmp-long v0, v6, v4

    if-gtz v0, :cond_f

    iget-wide v6, p0, Lcom/google/android/location/ba;->b:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_e

    iget-wide v6, p0, Lcom/google/android/location/ba;->b:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_7

    :cond_e
    add-long v6, v4, v12

    invoke-direct {p0, v6, v7}, Lcom/google/android/location/ba;->b(J)V

    goto :goto_3

    :cond_f
    invoke-direct {p0, v6, v7}, Lcom/google/android/location/ba;->b(J)V

    goto :goto_3

    .line 137
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/location/ba;->d()Z

    move-result v0

    goto/16 :goto_1

    .line 140
    :pswitch_2
    iget-wide v4, p0, Lcom/google/android/location/ba;->h:J

    const-wide/32 v6, 0x124f80

    add-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/android/location/ba;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-ltz v0, :cond_12

    move v0, v2

    :goto_5
    invoke-direct {p0}, Lcom/google/android/location/ba;->g()Z

    move-result v6

    invoke-direct {p0}, Lcom/google/android/location/ba;->i()Z

    move-result v7

    if-nez v0, :cond_10

    if-eqz v6, :cond_10

    if-nez v7, :cond_13

    :cond_10
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_11

    const-string v4, "SensorUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Canceling upload. timeout: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " goodConditions: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " wifiConnected: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/google/android/location/ba;->f()V

    move v0, v2

    goto/16 :goto_1

    :cond_12
    move v0, v1

    goto :goto_5

    :cond_13
    invoke-direct {p0, v4, v5}, Lcom/google/android/location/ba;->b(J)V

    move v0, v1

    goto/16 :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/location/collectionlib/da;)V
    .locals 2

    .prologue
    .line 505
    iget v0, p1, Lcom/google/android/location/collectionlib/da;->b:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/android/location/collectionlib/da;->f:I

    if-nez v0, :cond_1

    .line 506
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    const-string v1, "Batch upload succesfully."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/location/ba;->e()V

    .line 511
    return-void

    .line 508
    :cond_1
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    const-string v1, "Batch upload failed partially."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 499
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to batch upload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/ba;->e()V

    .line 501
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/da;)V
    .locals 3

    .prologue
    .line 515
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "SensorUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File complete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/da;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/google/android/location/ba;->j()V

    .line 521
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/google/android/location/ba;->j()V

    .line 526
    return-void
.end method
