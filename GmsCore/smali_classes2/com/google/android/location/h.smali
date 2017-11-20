.class public final Lcom/google/android/location/h;
.super Lcom/google/android/location/a;
.source "SourceFile"


# instance fields
.field i:J

.field j:F

.field k:Z

.field l:Lcom/google/android/location/j;

.field m:Z

.field n:Ljava/util/ArrayList;

.field o:Z

.field p:Lcom/google/android/location/os/ah;

.field q:J

.field r:Lcom/google/android/location/f/bh;

.field s:Lcom/google/android/location/f/bg;

.field t:Z

.field u:Z

.field v:Lcom/google/g/a/b/b/a;

.field w:J

.field x:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;)V
    .locals 8

    .prologue
    .line 101
    const-string v1, "ActiveCollector"

    sget-object v7, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/h;->i:J

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/h;->j:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/h;->k:Z

    .line 72
    sget-object v0, Lcom/google/android/location/j;->a:Lcom/google/android/location/j;

    iput-object v0, p0, Lcom/google/android/location/h;->l:Lcom/google/android/location/j;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/h;->m:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/h;->o:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/h;->u:Z

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/h;->w:J

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/h;->x:J

    .line 105
    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb80

    add-long/2addr v0, v2

    const-wide/32 v2, 0x112a880

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/h;->i:J

    .line 107
    return-void
.end method

.method private static b(Lcom/google/android/location/os/ah;)Z
    .locals 2

    .prologue
    .line 364
    invoke-interface {p0}, Lcom/google/android/location/os/ah;->a()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/location/os/ah;->e()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(J)V
    .locals 5

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/android/location/h;->x:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 297
    iput-wide p1, p0, Lcom/google/android/location/h;->x:J

    .line 298
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/h;->x:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 300
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 304
    sget-object v0, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    .line 305
    iget-object v0, p0, Lcom/google/android/location/h;->l:Lcom/google/android/location/j;

    sget-object v1, Lcom/google/android/location/j;->a:Lcom/google/android/location/j;

    if-eq v0, v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/google/android/location/h;->l:Lcom/google/android/location/j;

    sget-object v1, Lcom/google/android/location/j;->b:Lcom/google/android/location/j;

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    iget-object v1, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    .line 311
    sget-object v0, Lcom/google/android/location/j;->a:Lcom/google/android/location/j;

    iput-object v0, p0, Lcom/google/android/location/h;->l:Lcom/google/android/location/j;

    .line 312
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/h;->i:J

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/h;->j()V

    .line 315
    iput-object v3, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    .line 316
    iput-object v3, p0, Lcom/google/android/location/h;->s:Lcom/google/android/location/f/bg;

    .line 317
    iput-boolean v2, p0, Lcom/google/android/location/h;->t:Z

    .line 318
    return-void
.end method

.method private i(J)Z
    .locals 7

    .prologue
    const-wide/32 v4, 0x1d4c0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    iget-boolean v2, p0, Lcom/google/android/location/h;->f:Z

    if-eqz v2, :cond_0

    .line 324
    sget-object v2, Lcom/google/android/location/i;->a:[I

    iget-object v3, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    invoke-virtual {v3}, Lcom/google/android/location/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 353
    :cond_1
    :goto_0
    return v0

    .line 326
    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    sub-long v2, p1, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 332
    :pswitch_1
    iget-boolean v2, p0, Lcom/google/android/location/h;->o:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 333
    goto :goto_0

    .line 337
    :cond_2
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    sub-long v2, p1, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_4

    :cond_3
    move v0, v1

    .line 338
    goto :goto_0

    .line 347
    :cond_4
    :pswitch_3
    iget-boolean v2, p0, Lcom/google/android/location/h;->m:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/location/h;->u:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/location/h;->v:Lcom/google/g/a/b/b/a;

    if-nez v2, :cond_5

    iget v3, p0, Lcom/google/android/location/h;->j:F

    iget-boolean v2, p0, Lcom/google/android/location/h;->k:Z

    if-eqz v2, :cond_6

    const v2, 0x3e99999a    # 0.3f

    :goto_1
    cmpl-float v2, v3, v2

    if-ltz v2, :cond_7

    move v2, v0

    :goto_2
    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const v2, 0x3f333333    # 0.7f

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .prologue
    .line 357
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    const-string v1, "moved"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/h;->o:Z

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/h;->p:Lcom/google/android/location/os/ah;

    .line 361
    return-void
.end method


# virtual methods
.method final a(IIZ)V
    .locals 2

    .prologue
    .line 446
    iput-boolean p3, p0, Lcom/google/android/location/h;->k:Z

    .line 447
    invoke-static {p1, p2}, Lcom/google/android/location/p/h;->a(II)F

    move-result v0

    .line 448
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 449
    iput v0, p0, Lcom/google/android/location/h;->j:F

    .line 451
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/location/f/ag;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method final a(Lcom/google/android/location/f/bg;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 457
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "dist_cm"

    iget-wide v4, p1, Lcom/google/android/location/f/bg;->j:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 459
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "dist_sd_cm"

    iget-wide v4, p1, Lcom/google/android/location/f/bg;->k:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 461
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "distance_spread_cm"

    iget-wide v4, p1, Lcom/google/android/location/f/bg;->l:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 463
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "rssi"

    iget v4, p1, Lcom/google/android/location/f/bg;->d:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 465
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "rssi_spread"

    iget v4, p1, Lcom/google/android/location/f/bg;->e:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 467
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "rtt_ns"

    iget-wide v4, p1, Lcom/google/android/location/f/bg;->g:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 469
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "rtt_sd_ns"

    iget-wide v4, p1, Lcom/google/android/location/f/bg;->h:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 471
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "rtt_spread_ns"

    iget-wide v4, p1, Lcom/google/android/location/f/bg;->i:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 473
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "status"

    iget v4, p1, Lcom/google/android/location/f/bg;->b:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 475
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    const-string v1, "nlp"

    const-string v2, "wifi_rtt"

    const-string v3, "tx_rate"

    iget v4, p1, Lcom/google/android/location/f/bg;->f:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 478
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    const-string v1, "Received wifi rtt result"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->j:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_1

    .line 480
    iput-object p1, p0, Lcom/google/android/location/h;->s:Lcom/google/android/location/f/bg;

    .line 482
    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/location/f/bh;)V
    .locals 6

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->d:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_0

    .line 428
    const-wide/16 v0, 0x3e8

    iget-wide v2, p1, Lcom/google/android/location/f/bh;->a:J

    iget-wide v4, p0, Lcom/google/android/location/h;->q:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/location/os/ax;->a(Lcom/google/android/location/p/j;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iput-object p1, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    goto :goto_0
.end method

.method final a(Lcom/google/android/location/f/g;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method final a(Lcom/google/android/location/k/k;)V
    .locals 2

    .prologue
    .line 376
    sget-object v0, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    if-ne p1, v0, :cond_0

    .line 377
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/h;->x:J

    .line 379
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/location/os/ah;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 388
    sget-object v0, Lcom/google/android/location/i;->a:[I

    iget-object v1, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    invoke-virtual {v1}, Lcom/google/android/location/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 394
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/location/h;->b(Lcom/google/android/location/os/ah;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/google/android/location/h;->j()V

    .line 403
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/h;->o:Z

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    invoke-static {v0, p1, v3}, Lcom/google/android/location/h;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    :cond_3
    invoke-direct {p0}, Lcom/google/android/location/h;->j()V

    .line 401
    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/location/h;->b(Lcom/google/android/location/os/ah;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    invoke-static {v0, p1, v3}, Lcom/google/android/location/h;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    :cond_4
    invoke-direct {p0}, Lcom/google/android/location/h;->j()V

    goto :goto_0

    .line 414
    :pswitch_3
    invoke-static {p1}, Lcom/google/android/location/h;->b(Lcom/google/android/location/os/ah;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    invoke-static {v0, p1, v3}, Lcom/google/android/location/h;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 416
    :cond_5
    invoke-direct {p0}, Lcom/google/android/location/h;->j()V

    goto :goto_0

    .line 418
    :cond_6
    iput-object p1, p0, Lcom/google/android/location/h;->p:Lcom/google/android/location/os/ah;

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/h;->v:Lcom/google/g/a/b/b/a;

    .line 384
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/google/android/location/h;->m:Z

    if-eq v0, p1, :cond_0

    .line 440
    iput-boolean p1, p0, Lcom/google/android/location/h;->m:Z

    .line 442
    :cond_0
    return-void
.end method

.method protected final a(J)Z
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    .line 116
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method final b(Z)V
    .locals 0

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/google/android/location/h;->u:Z

    .line 495
    return-void
.end method

.method protected final b(J)Z
    .locals 7

    .prologue
    const-wide/32 v4, 0x112a880

    const/4 v0, 0x1

    .line 123
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/google/android/location/h;->i()V

    .line 146
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    sub-long v2, p1, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    .line 136
    iget-object v1, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v1

    sget-object v2, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    .line 137
    sget-object v1, Lcom/google/android/location/j;->b:Lcom/google/android/location/j;

    iput-object v1, p0, Lcom/google/android/location/h;->l:Lcom/google/android/location/j;

    .line 138
    iget-object v1, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/h;->i:J

    .line 139
    iget-object v1, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    iget-object v2, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    .line 140
    sget-object v1, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    iput-object v1, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    goto :goto_0

    .line 144
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/h;->h(J)V

    move v0, v1

    goto :goto_0
.end method

.method final c(Z)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method protected final c(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 151
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/google/android/location/h;->i()V

    .line 170
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/location/h;->o:Z

    if-eqz v2, :cond_1

    .line 161
    iput-wide p1, p0, Lcom/google/android/location/h;->q:J

    .line 162
    iget-object v1, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->g()Lcom/google/android/location/os/ax;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/location/os/ax;->a(Lcom/google/android/location/p/j;)V

    .line 163
    sget-object v1, Lcom/google/android/location/e;->d:Lcom/google/android/location/e;

    iput-object v1, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    goto :goto_0

    .line 167
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/h;->h(J)V

    move v0, v1

    goto :goto_0
.end method

.method protected final d(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 175
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/android/location/h;->i()V

    .line 206
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    if-eqz v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->A()Lcom/google/android/location/os/aw;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/os/aw;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    invoke-virtual {v2}, Lcom/google/android/location/f/bh;->a()I

    move-result v2

    if-lez v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    invoke-virtual {v2, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v1

    .line 190
    iget-wide v2, v1, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v2, v3}, Lcom/google/android/location/f/bi;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_1

    .line 192
    sget-object v3, Lcom/google/android/location/e;->j:Lcom/google/android/location/e;

    iput-object v3, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    .line 193
    iget-object v3, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->A()Lcom/google/android/location/os/aw;

    move-result-object v3

    iget-short v1, v1, Lcom/google/android/location/f/bb;->e:S

    invoke-interface {v3, v2, v1}, Lcom/google/android/location/os/aw;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lcom/google/android/location/e;->e:Lcom/google/android/location/e;

    iput-object v1, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    goto :goto_0

    .line 203
    :cond_2
    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/h;->h(J)V

    move v0, v1

    goto :goto_0
.end method

.method protected final e(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 211
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRttWait: rttFailure="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/google/android/location/h;->t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rttResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/h;->s:Lcom/google/android/location/f/bg;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/google/android/location/h;->i()V

    .line 227
    :goto_0
    return v0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/h;->s:Lcom/google/android/location/f/bg;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/location/h;->t:Z

    if-eqz v1, :cond_3

    .line 221
    :cond_2
    sget-object v1, Lcom/google/android/location/e;->e:Lcom/google/android/location/e;

    iput-object v1, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    goto :goto_0

    .line 225
    :cond_3
    iget-wide v0, p0, Lcom/google/android/location/h;->i:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/h;->h(J)V

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f(J)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 232
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/google/android/location/h;->i()V

    .line 261
    :goto_0
    return v7

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/h;->p:Lcom/google/android/location/os/ah;

    if-eqz v0, :cond_2

    .line 245
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Success: location "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " scan "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    invoke-virtual {v2}, Lcom/google/android/location/f/bh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/h;->p:Lcom/google/android/location/os/ah;

    iget-object v4, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    iget-boolean v5, p0, Lcom/google/android/location/h;->k:Z

    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v0

    const/16 v6, 0xd

    invoke-static/range {v0 .. v6}, Lcom/google/android/location/h;->a(JLcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;ZI)Lcom/google/g/a/b/b/a;

    move-result-object v0

    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    iget-object v0, p0, Lcom/google/android/location/h;->d:Lcom/google/android/location/bd;

    iget-object v2, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/location/bd;->a(Lcom/google/android/location/os/at;Lcom/google/g/a/b/b/a;)V

    iput-object v1, p0, Lcom/google/android/location/h;->v:Lcom/google/g/a/b/b/a;

    .line 250
    iput-wide p1, p0, Lcom/google/android/location/h;->w:J

    .line 251
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/h;->v:Lcom/google/g/a/b/b/a;

    iget-object v2, p0, Lcom/google/android/location/h;->e:Lcom/google/android/location/l/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/a;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/location/h;->g:Lcom/google/android/location/d;

    iget-object v1, p0, Lcom/google/android/location/h;->p:Lcom/google/android/location/os/ah;

    iget-object v2, p0, Lcom/google/android/location/h;->r:Lcom/google/android/location/f/bh;

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/location/d;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;)V

    .line 253
    sget-object v0, Lcom/google/android/location/e;->f:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    .line 254
    iget-object v0, p0, Lcom/google/android/location/h;->b:Lcom/google/android/location/os/at;

    iget-object v1, p0, Lcom/google/android/location/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    .line 255
    sget-object v0, Lcom/google/android/location/j;->c:Lcom/google/android/location/j;

    iput-object v0, p0, Lcom/google/android/location/h;->l:Lcom/google/android/location/j;

    move v0, v7

    :goto_1
    move v7, v0

    .line 261
    goto/16 :goto_0

    .line 259
    :cond_2
    iget-wide v0, p0, Lcom/google/android/location/h;->i:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/h;->h(J)V

    move v0, v8

    goto :goto_1
.end method

.method protected final g(J)Z
    .locals 7

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/h;->i(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/h;->v:Lcom/google/g/a/b/b/a;

    if-nez v1, :cond_1

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/h;->i()V

    .line 284
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/h;->i:J

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/h;->h(J)V

    goto :goto_0
.end method

.method final h()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/location/h;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->j:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_0

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/h;->t:Z

    .line 489
    :cond_0
    return-void
.end method
