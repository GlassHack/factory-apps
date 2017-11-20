.class final Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/s;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    iget-object v2, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/bx;

    iget v3, v0, Landroid/support/v7/widget/ab;->b:I

    iget v4, v0, Landroid/support/v7/widget/ab;->c:I

    iget v5, v0, Landroid/support/v7/widget/ab;->d:I

    iget v0, v0, Landroid/support/v7/widget/ab;->e:I

    iget-object v7, v2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    sub-int v3, v5, v3

    sub-int v4, v0, v4

    if-eqz v3, :cond_0

    invoke-static {v7}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/cb;->b(F)Landroid/support/v4/view/cb;

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v7}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    :cond_1
    iget-object v0, v1, Landroid/support/v7/widget/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v5

    iget-wide v8, v1, Landroid/support/v7/widget/bf;->k:J

    invoke-virtual {v5, v8, v9}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    move-result-object v7

    new-instance v0, Landroid/support/v7/widget/x;

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/x;-><init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/bx;IILandroid/support/v4/view/cb;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/cb;->c()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/s;->b:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
