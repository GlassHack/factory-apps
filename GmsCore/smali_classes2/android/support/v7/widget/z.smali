.class final Landroid/support/v7/widget/z;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/aa;

.field final synthetic b:Landroid/support/v4/view/cb;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/aa;Landroid/support/v4/view/cb;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Landroid/support/v7/widget/z;->d:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/aa;

    iput-object p3, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v4/view/cb;

    iput-object p4, p0, Landroid/support/v7/widget/z;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ac;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/support/v7/widget/r;

    iget-object v0, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    .line 367
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v4/view/cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 372
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/aa;

    iget-object v1, v1, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->g(Landroid/support/v7/widget/bx;)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/aa;

    iget-object v1, v1, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/z;->d:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()V

    .line 377
    return-void
.end method
