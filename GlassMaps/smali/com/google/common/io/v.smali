.class public final Lcom/google/common/io/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 5

    .prologue
    .line 235
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 238
    const-wide/16 v0, 0x0

    .line 239
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 240
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 241
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 242
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 243
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 245
    :cond_0
    return-wide v0
.end method

.method static a(Lcom/google/common/io/u;)Lcom/google/common/io/an;
    .locals 1

    .prologue
    .line 497
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v0, Lcom/google/common/io/x;

    invoke-direct {v0, p0}, Lcom/google/common/io/x;-><init>(Lcom/google/common/io/u;)V

    return-object v0
.end method

.method static a(Lcom/google/common/io/t;)Lcom/google/common/io/as;
    .locals 1

    .prologue
    .line 507
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v0, Lcom/google/common/io/y;

    invoke-direct {v0, p0}, Lcom/google/common/io/y;-><init>(Lcom/google/common/io/t;)V

    return-object v0
.end method

.method static a(Lcom/google/common/io/as;)Lcom/google/common/io/t;
    .locals 1

    .prologue
    .line 528
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v0, Lcom/google/common/io/aa;

    invoke-direct {v0, p0}, Lcom/google/common/io/aa;-><init>(Lcom/google/common/io/as;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 464
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 465
    check-cast p0, Ljava/io/Writer;

    .line 467
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/io/a;

    invoke-direct {v0, p0}, Lcom/google/common/io/a;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/google/common/io/an;Lcom/google/common/io/ap;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 382
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 387
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/io/an;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 388
    invoke-static {v0, p1}, Lcom/google/common/io/v;->a(Ljava/lang/Readable;Lcom/google/common/io/ap;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 392
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method private static a(Ljava/lang/Readable;Lcom/google/common/io/ap;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 357
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v0, Lcom/google/common/io/aq;

    invoke-direct {v0, p0}, Lcom/google/common/io/aq;-><init>(Ljava/lang/Readable;)V

    .line 362
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/io/aq;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 363
    invoke-interface {p1, v1}, Lcom/google/common/io/ap;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ap;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-static {p0}, Lcom/google/common/io/v;->c(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/io/an;)Ljava/util/List;
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/google/common/io/ac;->a()Lcom/google/common/io/ac;

    move-result-object v1

    .line 314
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/io/an;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    .line 315
    invoke-static {v0}, Lcom/google/common/io/v;->d(Ljava/lang/Readable;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 319
    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/ac;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/ac;->close()V

    throw v0
.end method

.method static b(Lcom/google/common/io/an;)Lcom/google/common/io/u;
    .locals 1

    .prologue
    .line 517
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v0, Lcom/google/common/io/z;

    invoke-direct {v0, p0}, Lcom/google/common/io/z;-><init>(Lcom/google/common/io/an;)V

    return-object v0
.end method

.method static b(Ljava/lang/Readable;)Ljava/io/Reader;
    .locals 1

    .prologue
    .line 473
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 475
    check-cast p0, Ljava/io/Reader;

    .line 477
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/io/w;

    invoke-direct {v0, p0}, Lcom/google/common/io/w;-><init>(Ljava/lang/Readable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-static {p0, v0}, Lcom/google/common/io/v;->a(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 284
    return-object v0
.end method

.method private static d(Ljava/lang/Readable;)Ljava/util/List;
    .locals 3

    .prologue
    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v1, Lcom/google/common/io/aq;

    invoke-direct {v1, p0}, Lcom/google/common/io/aq;-><init>(Ljava/lang/Readable;)V

    .line 340
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/io/aq;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    return-object v0
.end method
