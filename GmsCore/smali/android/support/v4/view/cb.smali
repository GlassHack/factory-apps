.class public final Landroid/support/v4/view/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/cj;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 591
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 592
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 593
    new-instance v0, Landroid/support/v4/view/ci;

    invoke-direct {v0}, Landroid/support/v4/view/ci;-><init>()V

    sput-object v0, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 595
    new-instance v0, Landroid/support/v4/view/cg;

    invoke-direct {v0}, Landroid/support/v4/view/cg;-><init>()V

    sput-object v0, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    goto :goto_0

    .line 596
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 597
    new-instance v0, Landroid/support/v4/view/ch;

    invoke-direct {v0}, Landroid/support/v4/view/ch;-><init>()V

    sput-object v0, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    goto :goto_0

    .line 598
    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 599
    new-instance v0, Landroid/support/v4/view/ce;

    invoke-direct {v0}, Landroid/support/v4/view/ce;-><init>()V

    sput-object v0, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    goto :goto_0

    .line 601
    :cond_3
    new-instance v0, Landroid/support/v4/view/cc;

    invoke-direct {v0}, Landroid/support/v4/view/cc;-><init>()V

    sput-object v0, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/view/cb;
    .locals 3

    .prologue
    .line 964
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 965
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v0, v2}, Landroid/support/v4/view/cj;->d(Landroid/view/View;F)V

    .line 967
    :cond_0
    return-object p0
.end method

.method public final a(F)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 636
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/cj;->a(Landroid/view/View;F)V

    .line 638
    :cond_0
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/view/cb;
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 619
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1, p2}, Landroid/support/v4/view/cj;->a(Landroid/view/View;J)V

    .line 621
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1191
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/cj;->a(Landroid/view/View;Landroid/support/v4/view/co;)V

    .line 1193
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/cq;)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1210
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/cj;->a(Landroid/view/View;Landroid/support/v4/view/cq;)V

    .line 1212
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 759
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/cj;->a(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 761
    :cond_0
    return-object p0
.end method

.method public final b(F)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 670
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/cj;->b(Landroid/view/View;F)V

    .line 672
    :cond_0
    return-object p0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 993
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0}, Landroid/support/v4/view/cj;->a(Landroid/view/View;)V

    .line 995
    :cond_0
    return-void
.end method

.method public final c(F)Landroid/support/v4/view/cb;
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 687
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/cj;->c(Landroid/view/View;F)V

    .line 689
    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Landroid/support/v4/view/cb;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1111
    sget-object v1, Landroid/support/v4/view/cb;->a:Landroid/support/v4/view/cj;

    invoke-interface {v1, v0}, Landroid/support/v4/view/cj;->b(Landroid/view/View;)V

    .line 1113
    :cond_0
    return-void
.end method
