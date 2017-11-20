.class public Landroid/support/v7/widget/bk;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/bx;

.field final b:Landroid/graphics/Rect;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 6488
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 6477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    .line 6481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->d:Z

    .line 6489
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 6484
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 6477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    .line 6481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->d:Z

    .line 6485
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/bk;)V
    .locals 1

    .prologue
    .line 6500
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 6477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    .line 6481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->d:Z

    .line 6501
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 6496
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 6477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    .line 6481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->d:Z

    .line 6497
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 6492
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 6476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 6477
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->c:Z

    .line 6481
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bk;->d:Z

    .line 6493
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 6531
    iget-object v0, p0, Landroid/support/v7/widget/bk;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 6542
    iget-object v0, p0, Landroid/support/v7/widget/bk;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->j()Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 6551
    iget-object v0, p0, Landroid/support/v7/widget/bk;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v0

    return v0
.end method
