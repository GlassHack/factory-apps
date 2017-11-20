.class final Landroid/support/v7/widget/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/bg;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 7271
    iput-object p1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 7271
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/bx;)V
    .locals 2

    .prologue
    .line 7275
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 7276
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 7277
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 7278
    return-void
.end method

.method public final b(Landroid/support/v7/widget/bx;)V
    .locals 2

    .prologue
    .line 7282
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 7283
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7284
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 7286
    :cond_0
    return-void
.end method

.method public final c(Landroid/support/v7/widget/bx;)V
    .locals 2

    .prologue
    .line 7290
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 7291
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7292
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 7294
    :cond_0
    return-void
.end method

.method public final d(Landroid/support/v7/widget/bx;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7298
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 7326
    iget-object v0, p1, Landroid/support/v7/widget/bx;->g:Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    if-nez v0, :cond_0

    .line 7327
    iput-object v2, p1, Landroid/support/v7/widget/bx;->g:Landroid/support/v7/widget/bx;

    .line 7328
    const/16 v0, -0x41

    iget v1, p1, Landroid/support/v7/widget/bx;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/bx;->a(II)V

    .line 7332
    :cond_0
    iput-object v2, p1, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    .line 7333
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7334
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 7336
    :cond_1
    return-void
.end method
