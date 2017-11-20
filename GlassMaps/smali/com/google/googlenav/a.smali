.class public final Lcom/google/googlenav/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/d;


# instance fields
.field protected final a:[I

.field protected final b:[Lcom/google/googlenav/b;

.field private c:Z

.field private d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/googlenav/a;->a:[I

    .line 167
    new-array v0, v1, [Lcom/google/googlenav/b;

    iput-object v0, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    .line 168
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;
    .locals 1

    .prologue
    .line 375
    instance-of v0, p0, Lcom/google/googlenav/common/io/o;

    if-eqz v0, :cond_0

    .line 376
    check-cast p0, Lcom/google/googlenav/common/io/o;

    const-string v0, "Restrictions_lock"

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/io/o;->a(Ljava/lang/String;)Lcom/google/googlenav/common/io/n;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/googlenav/common/io/n;)V
    .locals 0

    .prologue
    .line 382
    if-eqz p0, :cond_0

    .line 383
    invoke-interface {p0}, Lcom/google/googlenav/common/io/n;->a()Z

    .line 385
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-boolean v1, p0, Lcom/google/googlenav/a;->c:Z

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return v0

    .line 261
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;

    move-result-object v1

    .line 264
    :try_start_0
    const-string v2, "Restrictions"

    invoke-static {v0, v2}, Lcom/google/googlenav/common/g;->a(Lcom/google/googlenav/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0, v0}, Lcom/google/googlenav/a;->b(Ljava/io/DataInput;)Z

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/a;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    .line 275
    :goto_1
    iget-boolean v0, p0, Lcom/google/googlenav/a;->c:Z

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    :try_start_1
    const-string v2, "CFR"

    invoke-static {v2, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0
.end method

.method private b(Ljava/io/DataInput;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v1, 0x1

    .line 197
    .line 199
    sget-object v2, Lcom/google/j/b/a/b/g;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    move v2, v0

    .line 203
    :goto_0
    if-ge v2, v4, :cond_1

    .line 204
    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    .line 207
    if-ltz v6, :cond_0

    if-gt v6, v9, :cond_0

    .line 208
    iget-object v7, p0, Lcom/google/googlenav/a;->a:[I

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v8

    aput v8, v7, v6

    .line 209
    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v7

    if-lez v7, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    new-instance v7, Lcom/google/googlenav/b;

    invoke-virtual {v5, v9}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/google/googlenav/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    aput-object v7, v0, v6

    move v0, v1

    .line 203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_1
    return v0
.end method

.method private c()V
    .locals 8

    .prologue
    .line 282
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->e()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v2

    .line 283
    const/4 v0, 0x0

    .line 285
    :try_start_0
    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/g;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 287
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 288
    iget-object v4, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 289
    new-instance v4, Lcom/google/googlenav/common/io/b/a;

    sget-object v5, Lcom/google/j/b/a/b/g;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 290
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 291
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlenav/a;->a:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 292
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlenav/a;->b:[Lcom/google/googlenav/b;

    aget-object v6, v6, v1

    .line 293
    invoke-virtual {v6}, Lcom/google/googlenav/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    .line 292
    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 294
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 287
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    invoke-static {v4, v3}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 300
    invoke-static {v2}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/PersistentStore;)Lcom/google/googlenav/common/io/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 301
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "Restrictions"

    invoke-interface {v2, v1, v3}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    invoke-static {v0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    .line 309
    :goto_1
    return-void

    .line 305
    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "Restrictions"

    invoke-interface {v2, v1}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    invoke-static {v0}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {v1}, Lcom/google/googlenav/a;->a(Lcom/google/googlenav/common/io/n;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/a;->e:Z

    .line 245
    return-void
.end method

.method public final a(Ljava/io/DataInput;)V
    .locals 2

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/a;->b(Ljava/io/DataInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/google/googlenav/a;->c()V

    .line 231
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/a;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "CFR"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a([I)V
    .locals 5

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/a;->d:Z

    .line 179
    invoke-direct {p0}, Lcom/google/googlenav/a;->b()Z

    .line 180
    new-instance v1, Lcom/google/googlenav/c;

    invoke-direct {v1, p0}, Lcom/google/googlenav/c;-><init>(Lcom/google/googlenav/d;)V

    .line 181
    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/c;->setRetryTimeOut(J)V

    .line 182
    const-string v0, "6200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    invoke-virtual {v1, v0}, Lcom/google/googlenav/c;->a(I)V

    .line 184
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 185
    aget v2, p1, v0

    iget-object v3, p0, Lcom/google/googlenav/a;->a:[I

    aget v4, p1, v0

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/c;->a(II)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlenav/c;->a()V

    .line 188
    return-void
.end method
