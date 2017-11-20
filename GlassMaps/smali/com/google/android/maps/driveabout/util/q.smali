.class final Lcom/google/android/maps/driveabout/util/q;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/q;->a:Landroid/content/Context;

    .line 280
    iput-object p2, p0, Lcom/google/android/maps/driveabout/util/q;->b:Ljava/lang/Long;

    .line 281
    iput-object p3, p0, Lcom/google/android/maps/driveabout/util/q;->d:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Lcom/google/android/maps/driveabout/util/q;->c:Ljava/lang/Long;

    .line 283
    iput-object p5, p0, Lcom/google/android/maps/driveabout/util/q;->e:Ljava/lang/String;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/maps/driveabout/util/o;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/util/q;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getRequestType()I
    .locals 1

    .prologue
    .line 288
    const/16 v0, 0x4b

    return v0
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 298
    sget-object v0, Lcom/google/j/b/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 300
    invoke-virtual {v1, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 301
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 302
    invoke-virtual {v1, v9, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 304
    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 306
    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    invoke-virtual {v3, v11}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/google/android/maps/driveabout/util/q;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/util/q;->d:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z

    .line 309
    invoke-virtual {v3, v11}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 311
    const-string v5, "ParameterManager"

    .line 312
    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x33

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Updating nav parameters. Hash: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v3, Lcom/google/android/maps/driveabout/util/l;

    invoke-direct {v3, v4}, Lcom/google/android/maps/driveabout/util/l;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/n;->a(Lcom/google/android/maps/driveabout/util/l;)Lcom/google/android/maps/driveabout/util/l;

    .line 301
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 316
    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    invoke-virtual {v3, v12}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    iget-object v4, p0, Lcom/google/android/maps/driveabout/util/q;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/util/q;->e:Ljava/lang/String;

    invoke-static {v4, v3, v5}, Lcom/google/android/maps/driveabout/b;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z

    .line 319
    invoke-virtual {v3, v12}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 321
    const-string v5, "ParameterManager"

    .line 322
    invoke-virtual {v3, v10}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Updating tile zoom progression. Hash: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/vector/e;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/n;->a(Lcom/google/android/maps/driveabout/vector/e;)Lcom/google/android/maps/driveabout/vector/e;

    goto :goto_1

    .line 326
    :cond_2
    invoke-static {v9}, Lcom/google/android/maps/driveabout/util/n;->b(Z)Z

    .line 329
    const-class v1, Lcom/google/android/maps/driveabout/util/n;

    monitor-enter v1

    .line 330
    :try_start_0
    const-class v0, Lcom/google/android/maps/driveabout/util/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 331
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    return v9

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final retryOnFailure()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 337
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 338
    invoke-virtual {v0, v4, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 339
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/q;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/q;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 342
    :cond_0
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/e;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 343
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 345
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v2, Lcom/google/j/b/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 346
    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 348
    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/q;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/q;->c:Ljava/lang/Long;

    .line 350
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 349
    invoke-virtual {v0, v5, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 352
    :cond_1
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 354
    invoke-static {v1}, Lcom/google/googlenav/b/c;->a(Lcom/google/googlenav/common/io/b/a;)V

    .line 356
    invoke-virtual {v1}, Lcom/google/googlenav/common/io/b/a;->b()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 357
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V

    .line 358
    return-void
.end method
