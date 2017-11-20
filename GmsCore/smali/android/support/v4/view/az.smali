.class Landroid/support/v4/view/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/bh;


# instance fields
.field a:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/az;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1

    .prologue
    .line 440
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 382
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 679
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 373
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 374
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/support/v4/view/az;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/support/v4/view/az;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x2

    return v0
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 371
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 397
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 436
    :cond_0
    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)Landroid/support/v4/view/cb;
    .locals 1

    .prologue
    .line 586
    new-instance v0, Landroid/support/v4/view/cb;

    invoke-direct {v0, p1}, Landroid/support/v4/view/cb;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method
