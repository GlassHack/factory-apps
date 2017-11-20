.class final Lcom/google/android/location/fused/ae;
.super Lcom/google/android/location/fused/bg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ad;Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;)V
    .locals 1

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    .line 437
    new-instance v0, Lcom/google/android/location/fused/c;

    invoke-direct {v0}, Lcom/google/android/location/fused/c;-><init>()V

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/location/fused/bg;-><init>(Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;Lcom/google/android/location/fused/c;)V

    .line 441
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/e;->f()V

    .line 478
    iget-object v0, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/a;->f()V

    .line 479
    iget-object v0, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->c(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/p;->f()V

    .line 480
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    iget-object v2, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v2}, Lcom/google/android/location/fused/bl;->e()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 446
    iget v2, p0, Lcom/google/android/location/fused/bg;->g:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v3}, Lcom/google/android/location/fused/bl;->e()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/location/fused/a/e;->a(J)V

    .line 448
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v3}, Lcom/google/android/location/fused/bl;->f()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/fused/a/e;->a(Ljava/util/Collection;)V

    .line 449
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;

    move-result-object v2

    iput-boolean p1, v2, Lcom/google/android/location/fused/a/h;->g:Z

    .line 450
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/location/fused/a/e;->e()V

    .line 455
    :goto_1
    iget v2, p0, Lcom/google/android/location/fused/bg;->g:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    .line 456
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v3}, Lcom/google/android/location/fused/bl;->e()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/location/fused/a/a;->a(J)V

    .line 457
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;

    move-result-object v2

    iput-boolean p1, v2, Lcom/google/android/location/fused/a/h;->g:Z

    .line 458
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v3}, Lcom/google/android/location/fused/bl;->f()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/fused/a/a;->a(Ljava/util/Collection;)V

    .line 459
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/location/fused/a/a;->e()V

    .line 464
    :goto_3
    iget v2, p0, Lcom/google/android/location/fused/bg;->g:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    :goto_4
    if-eqz v0, :cond_5

    .line 465
    iget-object v0, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->c(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v1}, Lcom/google/android/location/fused/bl;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/p;->a(Ljava/util/Collection;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->c(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/p;->e()V

    .line 473
    :goto_5
    return-void

    :cond_0
    move v2, v1

    .line 446
    goto/16 :goto_0

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/location/fused/a/e;->f()V

    goto :goto_1

    :cond_2
    move v2, v1

    .line 455
    goto :goto_2

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v2}, Lcom/google/android/location/fused/ad;->b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/location/fused/a/a;->f()V

    goto :goto_3

    :cond_4
    move v0, v1

    .line 464
    goto :goto_4

    .line 468
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/fused/ae;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->c(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/p;->f()V

    goto :goto_5

    .line 471
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/location/fused/ae;->a()V

    goto :goto_5
.end method
