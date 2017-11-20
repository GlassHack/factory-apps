.class final Landroid/support/v7/widget/y;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/aa;

.field final synthetic b:Landroid/support/v4/view/cb;

.field final synthetic c:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/aa;Landroid/support/v4/view/cb;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/aa;

    iput-object p3, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v4/view/cb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ac;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/r;

    iget-object v0, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/aa;

    iget-object v0, v0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    .line 347
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v4/view/cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 351
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 352
    invoke-static {p1, v2}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 353
    invoke-static {p1, v2}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/aa;

    iget-object v1, v1, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->g(Landroid/support/v7/widget/bx;)V

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/aa;

    iget-object v1, v1, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()V

    .line 357
    return-void
.end method
