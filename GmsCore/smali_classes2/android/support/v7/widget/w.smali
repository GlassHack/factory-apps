.class final Landroid/support/v7/widget/w;
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
    .line 226
    iput-object p1, p0, Landroid/support/v7/widget/w;->c:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/bx;

    iput-object p3, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v4/view/cb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ac;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/support/v7/widget/r;

    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/bx;

    .line 230
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v4/view/cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->f(Landroid/support/v7/widget/bx;)V

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/w;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()V

    .line 242
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;F)V

    .line 234
    return-void
.end method
