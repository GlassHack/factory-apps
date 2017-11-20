.class final Landroid/support/v7/widget/x;
.super Landroid/support/v7/widget/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bx;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/cb;

.field final synthetic e:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/bx;IILandroid/support/v4/view/cb;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/bx;

    iput p3, p0, Landroid/support/v7/widget/x;->b:I

    iput p4, p0, Landroid/support/v7/widget/x;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v4/view/cb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ac;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/r;

    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/bx;

    .line 288
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/x;->d:Landroid/support/v4/view/cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->e(Landroid/support/v7/widget/bx;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/x;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()V

    .line 304
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget v0, p0, Landroid/support/v7/widget/x;->b:I

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    .line 294
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/x;->c:I

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p1, v1}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 297
    :cond_1
    return-void
.end method
