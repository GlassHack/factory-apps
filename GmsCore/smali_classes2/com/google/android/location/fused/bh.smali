.class final Lcom/google/android/location/fused/bh;
.super Lcom/google/android/location/fused/bl;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/bg;

.field private b:Landroid/location/Location;

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method private constructor <init>(Lcom/google/android/location/fused/bg;)V
    .locals 1

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/fused/bl;-><init>(Lcom/google/android/location/fused/bg;B)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/bh;->b:Landroid/location/Location;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/fused/bg;B)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/location/fused/bh;-><init>(Lcom/google/android/location/fused/bg;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 314
    iget v0, p0, Lcom/google/android/location/fused/bh;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/fused/bh;->f:I

    .line 315
    iget-object v0, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    invoke-static {p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/fused/bh;->e:J

    sub-long/2addr v0, v2

    .line 317
    iget-object v2, p0, Lcom/google/android/location/fused/bh;->b:Landroid/location/Location;

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3

    iget-object v4, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    iget-object v4, v4, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v4, v4, Lcom/google/android/location/fused/av;->b:J

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/bh;->b:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/fused/bh;->f:I

    .line 321
    iput-object p1, p0, Lcom/google/android/location/fused/bh;->b:Landroid/location/Location;

    .line 322
    iget-object v0, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    invoke-static {p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/bh;->d:J

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    invoke-static {p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/bh;->e:J

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bh;->a(Z)V

    .line 330
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v0, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/fused/bh;->d:J

    sub-long/2addr v0, v2

    .line 293
    iget-object v2, p0, Lcom/google/android/location/fused/bh;->b:Landroid/location/Location;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/location/fused/bh;->f:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const-wide v2, 0x4a817c800L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    invoke-static {v0}, Lcom/google/android/location/fused/bg;->a(Lcom/google/android/location/fused/bg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/google/android/location/x;->G:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 299
    :pswitch_0
    new-instance v0, Lcom/google/android/location/fused/bj;

    iget-object v1, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/fused/bj;-><init>(Lcom/google/android/location/fused/bg;B)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bh;->a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/bl;->a(Z)V

    goto :goto_0

    .line 302
    :pswitch_1
    new-instance v0, Lcom/google/android/location/fused/bk;

    iget-object v1, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/fused/bk;-><init>(Lcom/google/android/location/fused/bg;B)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/bh;->a(Lcom/google/android/location/fused/bl;)Lcom/google/android/location/fused/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/bl;->a(Z)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/bh;->a:Lcom/google/android/location/fused/bg;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/bg;->a(Z)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
