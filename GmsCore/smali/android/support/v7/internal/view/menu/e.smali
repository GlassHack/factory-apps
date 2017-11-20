.class public abstract Landroid/support/v7/internal/view/menu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/support/v7/internal/view/menu/j;

.field protected d:Landroid/view/LayoutInflater;

.field protected e:Landroid/view/LayoutInflater;

.field public f:Landroid/support/v7/internal/view/menu/z;

.field protected g:Landroid/support/v7/internal/view/menu/aa;

.field public h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/e;->d:Landroid/view/LayoutInflater;

    .line 59
    iput p2, p0, Landroid/support/v7/internal/view/menu/e;->i:I

    .line 60
    iput p3, p0, Landroid/support/v7/internal/view/menu/e;->j:I

    .line 61
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->g:Landroid/support/v7/internal/view/menu/aa;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/e;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/aa;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/e;->g:Landroid/support/v7/internal/view/menu/aa;

    .line 74
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->g:Landroid/support/v7/internal/view/menu/aa;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/e;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/aa;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->a(Z)V

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->g:Landroid/support/v7/internal/view/menu/aa;

    return-object v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 177
    instance-of v0, p2, Landroid/support/v7/internal/view/menu/ab;

    if-eqz v0, :cond_0

    .line 178
    check-cast p2, Landroid/support/v7/internal/view/menu/ab;

    move-object v0, p2

    .line 182
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/ab;)V

    .line 183
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/e;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ab;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/e;->b:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/e;->e:Landroid/view/LayoutInflater;

    .line 67
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/e;->c:Landroid/support/v7/internal/view/menu/j;

    .line 68
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/ab;)V
.end method

.method public a(Z)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    if-nez v0, :cond_1

    .line 120
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/e;->c:Landroid/support/v7/internal/view/menu/j;

    if-eqz v1, :cond_8

    .line 90
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/e;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->l()V

    .line 91
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/e;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->k()Ljava/util/ArrayList;

    move-result-object v7

    .line 92
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v4, v5

    .line 93
    :goto_0
    if-ge v6, v8, :cond_6

    .line 94
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/n;

    .line 95
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/n;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 96
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 97
    instance-of v2, v3, Landroid/support/v7/internal/view/menu/ab;

    if-eqz v2, :cond_5

    move-object v2, v3

    check-cast v2, Landroid/support/v7/internal/view/menu/ab;

    invoke-interface {v2}, Landroid/support/v7/internal/view/menu/ab;->a()Landroid/support/v7/internal/view/menu/n;

    move-result-object v2

    .line 99
    :goto_1
    invoke-virtual {p0, v1, v3, v0}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 100
    if-eq v1, v2, :cond_2

    .line 102
    invoke-virtual {v9, v5}, Landroid/view/View;->setPressed(Z)V

    .line 106
    :cond_2
    if-eq v9, v3, :cond_4

    .line 107
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/e;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 109
    :cond_4
    add-int/lit8 v1, v4, 0x1

    .line 93
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_0

    .line 97
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 116
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/view/ViewGroup;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/ae;)Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;)Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method
