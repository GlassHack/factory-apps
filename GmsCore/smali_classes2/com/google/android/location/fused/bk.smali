.class Lcom/google/android/location/fused/bk;
.super Lcom/google/android/location/fused/bl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/ba;


# instance fields
.field private a:J

.field final synthetic b:Lcom/google/android/location/fused/bg;


# direct methods
.method private constructor <init>(Lcom/google/android/location/fused/bg;)V
    .locals 1

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/fused/bl;-><init>(Lcom/google/android/location/fused/bg;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/fused/bg;B)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/bk;-><init>(Lcom/google/android/location/fused/bg;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    invoke-static {v0}, Lcom/google/android/location/fused/bg;->a(Lcom/google/android/location/fused/bg;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/google/android/location/fused/bh;

    iget-object v1, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/fused/bh;-><init>(Lcom/google/android/location/fused/bg;B)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bk;->a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;

    .line 372
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/fused/bk;->d()V

    .line 370
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/bg;->a(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/bk;->a:J

    .line 377
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->b:Lcom/google/android/location/fused/a/n;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/n;->f()V

    .line 382
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->b:Lcom/google/android/location/fused/a/n;

    iput-object p0, v0, Lcom/google/android/location/fused/a/n;->a:Lcom/google/android/location/activity/ba;

    .line 425
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->b:Lcom/google/android/location/fused/a/n;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/n;->e()V

    .line 426
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v0, v0, Lcom/google/android/location/fused/av;->c:J

    return-wide v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-object v0, v0, Lcom/google/android/location/fused/av;->g:Ljava/util/Collection;

    return-object v0
.end method

.method public final k()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/fused/bk;->a:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v4, v0, Lcom/google/android/location/fused/av;->b:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/google/android/location/fused/bh;

    iget-object v3, p0, Lcom/google/android/location/fused/bk;->b:Lcom/google/android/location/fused/bg;

    invoke-direct {v2, v3, v1}, Lcom/google/android/location/fused/bh;-><init>(Lcom/google/android/location/fused/bg;B)V

    invoke-virtual {p0, v2}, Lcom/google/android/location/fused/bk;->a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/location/fused/bl;->a(Z)V

    .line 409
    return-void

    :cond_0
    move v0, v1

    .line 408
    goto :goto_0
.end method
