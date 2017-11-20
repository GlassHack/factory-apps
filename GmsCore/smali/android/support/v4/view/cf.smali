.class final Landroid/support/v4/view/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/co;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ce;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ce;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->e:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 512
    :goto_0
    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->c:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 516
    :goto_1
    if-eqz v0, :cond_1

    .line 517
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 518
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/co;

    .line 522
    :goto_2
    if-eqz v0, :cond_2

    .line 523
    invoke-interface {v0, p1}, Landroid/support/v4/view/co;->a(Landroid/view/View;)V

    .line 525
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 511
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 515
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 520
    goto :goto_2
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->e:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 529
    :goto_0
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 531
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/co;

    .line 535
    :goto_1
    if-eqz v0, :cond_1

    .line 536
    invoke-interface {v0, p1}, Landroid/support/v4/view/co;->b(Landroid/view/View;)V

    .line 538
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->b:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 539
    :goto_2
    if-eqz v0, :cond_2

    .line 540
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 541
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 528
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 533
    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 538
    goto :goto_2
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/cf;->a:Landroid/support/v4/view/ce;

    iget-object v0, v0, Landroid/support/v4/view/ce;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/co;

    .line 549
    :goto_0
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0, p1}, Landroid/support/v4/view/co;->c(Landroid/view/View;)V

    .line 552
    :cond_0
    return-void

    .line 547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
