.class final Lcom/google/android/location/fused/af;
.super Lcom/google/android/location/fused/bg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ad;Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;)V
    .locals 1

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    .line 490
    new-instance v0, Lcom/google/android/location/fused/c;

    invoke-direct {v0}, Lcom/google/android/location/fused/c;-><init>()V

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/location/fused/bg;-><init>(Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;Lcom/google/android/location/fused/c;)V

    .line 494
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/j;->f()V

    .line 531
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/32 v2, 0x5265c00

    .line 499
    iget v0, p0, Lcom/google/android/location/fused/bg;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/fused/af;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->d(Lcom/google/android/location/fused/ad;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->e()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 504
    :goto_1
    iget-object v6, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v6}, Lcom/google/android/location/fused/ad;->e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/google/android/location/fused/a/j;->a(J)V

    .line 507
    iget-object v6, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v6}, Lcom/google/android/location/fused/ad;->e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/location/fused/a/j;->b()V

    .line 508
    iget-object v6, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v6}, Lcom/google/android/location/fused/ad;->e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;

    move-result-object v6

    if-eqz p1, :cond_3

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v4

    :goto_2
    iput-boolean v0, v6, Lcom/google/android/location/fused/a/h;->g:Z

    .line 510
    iget-object v0, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v1}, Lcom/google/android/location/fused/bl;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/j;->a(Ljava/util/Collection;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/location/fused/af;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/j;->e()V

    .line 523
    return-void

    :cond_1
    move v0, v5

    .line 499
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 502
    goto :goto_1

    :cond_3
    move v0, v5

    .line 508
    goto :goto_2
.end method
