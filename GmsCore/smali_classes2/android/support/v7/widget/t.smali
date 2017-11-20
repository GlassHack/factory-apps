.class final Landroid/support/v7/widget/t;
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
    .line 140
    iput-object p1, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/t;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aa;

    .line 144
    iget-object v3, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/r;

    iget-object v1, v0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    iget-object v4, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    iget-object v1, v0, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    :goto_1
    iget-object v5, v3, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    iget-object v6, v0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v4

    iget-wide v6, v3, Landroid/support/v7/widget/bf;->l:J

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    move-result-object v4

    iget v5, v0, Landroid/support/v7/widget/aa;->e:I

    iget v6, v0, Landroid/support/v7/widget/aa;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/cb;->b(F)Landroid/support/v4/view/cb;

    iget v5, v0, Landroid/support/v7/widget/aa;->f:I

    iget v6, v0, Landroid/support/v7/widget/aa;->d:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/cb;->a(F)Landroid/support/v4/view/cb;

    move-result-object v5

    new-instance v6, Landroid/support/v7/widget/y;

    invoke-direct {v6, v3, v0, v4}, Landroid/support/v7/widget/y;-><init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/aa;Landroid/support/v4/view/cb;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/cb;->c()V

    if-eqz v1, :cond_0

    iget-object v4, v3, Landroid/support/v7/widget/r;->g:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/support/v7/widget/aa;->b:Landroid/support/v7/widget/bx;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/support/v4/view/cb;->b(F)Landroid/support/v4/view/cb;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v5

    iget-wide v6, v3, Landroid/support/v7/widget/bf;->l:J

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/support/v4/view/cb;->a(F)Landroid/support/v4/view/cb;

    move-result-object v5

    new-instance v6, Landroid/support/v7/widget/z;

    invoke-direct {v6, v3, v0, v4, v1}, Landroid/support/v7/widget/z;-><init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/aa;Landroid/support/v4/view/cb;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/cb;->c()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
