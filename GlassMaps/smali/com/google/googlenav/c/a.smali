.class public final Lcom/google/googlenav/c/a;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/c/a;

.field private static j:Z


# instance fields
.field private b:I

.field private c:Lcom/google/googlenav/d/a;

.field private d:Lcom/google/googlenav/d/a;

.field private e:I

.field private f:I

.field private g:[J

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/c/a;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    .line 84
    iput v1, p0, Lcom/google/googlenav/c/a;->h:I

    .line 85
    iput v1, p0, Lcom/google/googlenav/c/a;->i:I

    .line 99
    invoke-direct {p0}, Lcom/google/googlenav/c/a;->d()V

    .line 100
    return-void
.end method

.method public static a()Lcom/google/googlenav/c/a;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/googlenav/c/a;->a:Lcom/google/googlenav/c/a;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/google/googlenav/c/a;->b()V

    .line 111
    :cond_0
    sget-object v0, Lcom/google/googlenav/c/a;->a:Lcom/google/googlenav/c/a;

    return-object v0
.end method

.method private static a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;
    .locals 1

    .prologue
    .line 135
    instance-of v0, p0, Lcom/google/googlenav/common/io/o;

    if-eqz v0, :cond_0

    .line 136
    check-cast p0, Lcom/google/googlenav/common/io/o;

    const-string v0, "savedLocationShiftCoefficients_lock"

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/io/o;->a(Ljava/lang/String;)Lcom/google/googlenav/common/io/n;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/googlenav/common/io/n;)V
    .locals 0

    .prologue
    .line 142
    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0}, Lcom/google/googlenav/common/io/n;->a()Z

    .line 145
    :cond_0
    return-void
.end method

.method private a(Lcom/google/googlenav/d/a;I)Z
    .locals 6

    .prologue
    const-wide/32 v4, 0x15752a00

    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    invoke-virtual {v2}, Lcom/google/googlenav/d/a;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    invoke-virtual {v2}, Lcom/google/googlenav/d/a;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 272
    :goto_1
    if-gez v1, :cond_2

    .line 273
    int-to-long v1, v1

    add-long/2addr v1, v4

    long-to-int v1, v1

    goto :goto_1

    .line 275
    :cond_2
    int-to-long v2, v1

    sub-long v2, v4, v2

    long-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 276
    if-ge v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized b()V
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/google/googlenav/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/googlenav/c/a;

    invoke-direct {v0}, Lcom/google/googlenav/c/a;-><init>()V

    sput-object v0, Lcom/google/googlenav/c/a;->a:Lcom/google/googlenav/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v1

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lcom/google/googlenav/d/a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 367
    sget-boolean v2, Lcom/google/googlenav/common/d;->a:Z

    if-eqz v2, :cond_1

    .line 368
    sget-boolean v0, Lcom/google/googlenav/c/a;->j:Z

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/d/a;->a()I

    move-result v2

    const v3, 0x2dc6c0

    if-lt v2, v3, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/google/googlenav/d/a;->a()I

    move-result v2

    const v3, 0x337f980

    if-gt v2, v3, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/google/googlenav/d/a;->b()I

    move-result v2

    const v3, 0x44aa200

    if-lt v2, v3, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/google/googlenav/d/a;->b()I

    move-result v2

    const v3, 0x81b3200

    if-gt v2, v3, :cond_0

    .line 382
    invoke-static {}, Lcom/google/googlenav/c/a/a;->a()I

    move-result v2

    .line 383
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 384
    const/16 v3, 0x1cc

    if-eq v2, v3, :cond_2

    const/16 v3, 0x460

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 387
    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    aput-wide v3, v0, v2

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    aput-wide v6, v0, v5

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v1, 0x2

    aput-wide v3, v0, v1

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v1, 0x3

    aput-wide v3, v0, v1

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v1, 0x4

    aput-wide v3, v0, v1

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v1, 0x5

    aput-wide v6, v0, v1

    .line 125
    iput v2, p0, Lcom/google/googlenav/c/a;->e:I

    .line 126
    iput v2, p0, Lcom/google/googlenav/c/a;->f:I

    .line 127
    iput v2, p0, Lcom/google/googlenav/c/a;->h:I

    .line 128
    iput v2, p0, Lcom/google/googlenav/c/a;->i:I

    .line 129
    iput v5, p0, Lcom/google/googlenav/c/a;->b:I

    .line 130
    return-void
.end method

.method private c(Lcom/google/googlenav/d/a;)Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/googlenav/c/a;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/d/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 152
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;

    move-result-object v2

    .line 154
    const-string v3, "savedLocationShiftCoefficients"

    invoke-static {v1, v3}, Lcom/google/googlenav/common/g;->a(Lcom/google/googlenav/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 158
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/google/googlenav/c/a;->readResponseData(Ljava/io/DataInput;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 164
    :try_start_2
    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/n;)V

    .line 166
    :goto_0
    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/google/googlenav/c/a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catch_0
    move-exception v3

    .line 161
    :try_start_3
    const-string v3, "FLASH"

    const-string v4, "Error reading coefficients for location shift."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v3}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :try_start_4
    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/n;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private d(Lcom/google/googlenav/d/a;)V
    .locals 1

    .prologue
    .line 303
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/d/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/c/a;->d:Lcom/google/googlenav/d/a;

    .line 308
    invoke-virtual {p1, v0}, Lcom/google/googlenav/d/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iput-object p1, p0, Lcom/google/googlenav/c/a;->d:Lcom/google/googlenav/d/a;

    .line 310
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    goto :goto_0
.end method

.method private e()Lcom/google/googlenav/common/io/b/a;
    .locals 5

    .prologue
    .line 175
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/r;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 177
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/googlenav/c/a;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 178
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 179
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/c/a;->g:[J

    aget-wide v3, v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/b/a;->a(IJ)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    .line 182
    invoke-virtual {v2}, Lcom/google/googlenav/d/a;->c()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 183
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/googlenav/c/a;->f:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 185
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/googlenav/c/a;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 187
    return-object v1
.end method

.method private declared-synchronized f()V
    .locals 5

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;

    move-result-object v2

    .line 194
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/c/a;->e()Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 198
    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;)V

    .line 199
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0, v3}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    :try_start_2
    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "FLASH"

    const-string v3, "Error writing coefficients for location shift."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    const-string v0, "savedLocationShiftCoefficients"

    invoke-interface {v1, v0}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    :try_start_4
    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/n;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public final a(Lcom/google/googlenav/d/a;)Lcom/google/googlenav/d/a;
    .locals 10

    .prologue
    const-wide/32 v8, 0xf4240

    .line 335
    iget-object v0, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    .line 336
    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->a()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->b()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    div-long/2addr v0, v8

    .line 337
    iget-object v2, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v5, 0x4

    aget-wide v4, v4, v5

    .line 338
    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->a()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->b()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    div-long/2addr v2, v8

    .line 339
    invoke-direct {p0, p1}, Lcom/google/googlenav/c/a;->c(Lcom/google/googlenav/d/a;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/google/googlenav/c/a;->d(Lcom/google/googlenav/d/a;)V

    .line 342
    :cond_0
    long-to-int v4, v0

    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->a()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlenav/c/a;->h:I

    .line 343
    long-to-int v4, v2

    invoke-virtual {p1}, Lcom/google/googlenav/d/a;->b()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/googlenav/c/a;->i:I

    .line 344
    new-instance v4, Lcom/google/googlenav/d/a;

    long-to-int v0, v0

    long-to-int v1, v2

    invoke-direct {v4, v0, v1}, Lcom/google/googlenav/d/a;-><init>(II)V

    return-object v4
.end method

.method public final getRequestType()I
    .locals 1

    .prologue
    .line 210
    const/16 v0, 0x35

    return v0
.end method

.method public final isForeground()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    sget-object v2, Lcom/google/j/b/a/b/r;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 235
    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/c/a;->b:I

    .line 239
    iget v2, p0, Lcom/google/googlenav/c/a;->b:I

    if-nez v2, :cond_0

    move v2, v1

    .line 242
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/google/googlenav/c/a;->g:[J

    const/4 v5, 0x2

    .line 244
    invoke-virtual {v3, v5, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/c/a;->f:I

    .line 248
    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/c/a;->e:I

    .line 250
    const/4 v2, 0x3

    .line 251
    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 250
    invoke-static {v2}, Lcom/google/googlenav/d/a;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/googlenav/d/a;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    .line 252
    iget v2, p0, Lcom/google/googlenav/c/a;->b:I

    if-nez v2, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/google/googlenav/c/a;->f()V

    .line 254
    const-string v2, "REQUEST"

    const-string v3, "Location Shift Response for %s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_3
    iget v2, p0, Lcom/google/googlenav/c/a;->b:I

    if-nez v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 5

    .prologue
    .line 220
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/r;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 222
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/c/a;->d:Lcom/google/googlenav/d/a;

    .line 223
    invoke-virtual {v2}, Lcom/google/googlenav/d/a;->c()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 224
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/OutputStream;)V

    .line 225
    const-string v0, "REQUEST"

    const-string v1, "Location Shift Request for: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/c/a;->c:Lcom/google/googlenav/d/a;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return-void
.end method
