.class final Landroid/support/v7/widget/u;
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
    .line 163
    iput-object p1, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/r;

    iput-object p2, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 166
    iget-object v2, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/r;

    iget-object v3, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    iget-object v4, v2, Landroid/support/v7/widget/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/v4/view/cb;->a(F)Landroid/support/v4/view/cb;

    move-result-object v4

    iget-wide v6, v2, Landroid/support/v7/widget/bf;->i:J

    invoke-virtual {v4, v6, v7}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/w;

    invoke-direct {v5, v2, v0, v3}, Landroid/support/v7/widget/w;-><init>(Landroid/support/v7/widget/r;Landroid/support/v7/widget/bx;Landroid/support/v4/view/cb;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/cb;->c()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/widget/r;

    iget-object v0, v0, Landroid/support/v7/widget/r;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
