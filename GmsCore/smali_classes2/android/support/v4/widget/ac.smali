.class Landroid/support/v4/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/aa;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;IIIII)V
    .locals 6

    .prologue
    .line 189
    move-object v0, p1

    check-cast v0, Landroid/widget/OverScroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 190
    return-void
.end method

.method public final a(Ljava/lang/Object;IIIIIIII)V
    .locals 9

    .prologue
    .line 195
    move-object v0, p1

    check-cast v0, Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 197
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 158
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 163
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 168
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 178
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 208
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 209
    return-void
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 229
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 234
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    return v0
.end method
