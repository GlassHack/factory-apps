.class final Landroid/support/v7/widget/v;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bx;

.field final synthetic b:Landroid/support/v4/view/cb;

.field final synthetic c:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/bx;Landroid/support/v4/view/cb;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Landroid/support/v7/widget/v;->c:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/bx;

    iput-object p3, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v4/view/cb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ac;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Landroid/support/v7/widget/r;

    iget-object v0, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/bx;

    .line 200
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/v;->b:Landroid/support/v4/view/cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->d(Landroid/support/v7/widget/bx;)V

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/v;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/v;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()V

    .line 208
    return-void
.end method
