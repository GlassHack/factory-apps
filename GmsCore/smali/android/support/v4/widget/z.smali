.class public final Landroid/support/v4/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/support/v4/widget/aa;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 264
    new-instance v0, Landroid/support/v4/widget/ad;

    invoke-direct {v0}, Landroid/support/v4/widget/ad;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    .line 270
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/aa;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    .line 271
    return-void

    .line 265
    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    .line 266
    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-direct {v0}, Landroid/support/v4/widget/ac;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    goto :goto_0

    .line 268
    :cond_1
    new-instance v0, Landroid/support/v4/widget/ab;

    invoke-direct {v0}, Landroid/support/v4/widget/ab;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/widget/z;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 256
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/z;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Landroid/support/v4/widget/z;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/z;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final a(IIII)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/aa;->a(Ljava/lang/Object;IIIIIIII)V

    .line 394
    return-void
.end method

.method public final a(IIIII)V
    .locals 7

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/aa;->a(Ljava/lang/Object;IIIII)V

    .line 370
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->f(Ljava/lang/Object;)V

    .line 431
    return-void
.end method
