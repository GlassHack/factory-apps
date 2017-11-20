.class public final Lcom/google/googlenav/datarequest/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private g:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/googlenav/common/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    .line 141
    iput-object v1, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 183
    iput-object p2, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    .line 184
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    const-string v0, "s"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private a(Ljava/lang/String;III)V
    .locals 3

    .prologue
    .line 351
    const-string v0, "|d="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    const-string v1, "u"

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 362
    const-string v0, "|d="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v1, "o"

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 357
    const-string v0, "|r="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v1, "ns"

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 371
    const-string v0, "|s="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "|"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    const/16 v1, 0x40

    invoke-static {v1, p0, v0}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    .line 375
    return-void

    .line 373
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    const-string v0, "f"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 237
    iget-object v3, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 238
    invoke-virtual {v3}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->k()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlenav/datarequest/c;->f:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->j()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 239
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 244
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 252
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 255
    monitor-exit p0

    .line 295
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 266
    iget v2, p0, Lcom/google/googlenav/datarequest/c;->a:I

    packed-switch v2, :pswitch_data_0

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    .line 290
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    .line 291
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/google/googlenav/common/h;->a()Lcom/google/googlenav/common/h;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/h;->a(Z)V

    goto :goto_0

    .line 269
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    const-string v1, "d"

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/c;->b:Ljava/lang/String;

    .line 271
    monitor-exit p0

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/googlenav/datarequest/c;->d:J

    sub-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;J)V

    goto :goto_1

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/datarequest/c;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/c;->c()V

    .line 223
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 306
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    .line 307
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/datarequest/c;->d:J

    .line 313
    :cond_0
    :goto_0
    monitor-exit p0

    .line 314
    return-void

    .line 308
    :cond_1
    iget v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    if-ne v0, v2, :cond_0

    .line 310
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    .line 311
    iput-object p1, p0, Lcom/google/googlenav/datarequest/c;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;JII)V
    .locals 4

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->e:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 333
    :cond_0
    monitor-exit p0

    .line 343
    :goto_0
    return-void

    .line 335
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/datarequest/c;->a:I

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/datarequest/c;->c:Ljava/lang/String;

    .line 337
    iget-wide v1, p0, Lcom/google/googlenav/datarequest/c;->d:J

    .line 338
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/googlenav/datarequest/c;->e:Ljava/lang/Object;

    .line 339
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    sub-long v1, p2, v1

    long-to-int v1, v1

    .line 342
    invoke-direct {p0, v0, v1, p4, p5}, Lcom/google/googlenav/datarequest/c;->a(Ljava/lang/String;III)V

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
