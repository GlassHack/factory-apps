.class final Lcom/google/android/location/fused/ag;
.super Lcom/google/android/location/fused/bg;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ad;Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;)V
    .locals 1

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    .line 541
    new-instance v0, Lcom/google/android/location/fused/c;

    invoke-direct {v0}, Lcom/google/android/location/fused/c;-><init>()V

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/location/fused/bg;-><init>(Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;Lcom/google/android/location/fused/c;)V

    .line 545
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/i;->f()V

    .line 568
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 550
    invoke-virtual {p0}, Lcom/google/android/location/fused/ag;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->d(Lcom/google/android/location/fused/ad;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->e()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 555
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v4}, Lcom/google/android/location/fused/ad;->f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/location/fused/a/i;->a(J)V

    .line 558
    iget-object v4, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v4}, Lcom/google/android/location/fused/ad;->f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/location/fused/a/i;->b()V

    .line 559
    iget-object v4, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v4}, Lcom/google/android/location/fused/ad;->f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;

    move-result-object v4

    if-eqz p1, :cond_2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v4, Lcom/google/android/location/fused/a/h;->g:Z

    .line 561
    iget-object v0, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v1}, Lcom/google/android/location/fused/bl;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/i;->a(Ljava/util/Collection;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/location/fused/ag;->a:Lcom/google/android/location/fused/ad;

    invoke-static {v0}, Lcom/google/android/location/fused/ad;->f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/i;->e()V

    .line 563
    return-void

    :cond_1
    move-wide v0, v2

    .line 553
    goto :goto_0

    .line 559
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
