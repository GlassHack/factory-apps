.class final Landroid/support/v7/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v7/widget/q;

.field final b:Landroid/support/v7/widget/p;

.field final c:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    .line 50
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0}, Landroid/support/v7/widget/p;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final a(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 90
    if-gez p1, :cond_1

    move v0, v1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v2

    move v0, p1

    .line 95
    :goto_1
    if-ge v0, v2, :cond_3

    .line 96
    iget-object v3, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/p;->d(I)I

    move-result v3

    .line 97
    sub-int v3, v0, v3

    sub-int v3, p1, v3

    .line 98
    if-nez v3, :cond_2

    .line 99
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_2
    add-int/2addr v0, v3

    .line 106
    goto :goto_1

    :cond_3
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .prologue
    .line 203
    if-gez p2, :cond_0

    .line 204
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v0

    .line 208
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, p1, v0, p3}, Landroid/support/v7/widget/q;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1, v0, p4}, Landroid/support/v7/widget/p;->a(IZ)V

    .line 214
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/o;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method final a(Landroid/view/View;IZ)V
    .locals 2

    .prologue
    .line 74
    if-gez p2, :cond_1

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v0

    .line 79
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/q;->a(Landroid/view/View;I)V

    .line 80
    iget-object v1, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1, v0, p3}, Landroid/support/v7/widget/p;->a(IZ)V

    .line 81
    if-eqz p3, :cond_0

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/o;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v0

    return v0
.end method

.method final b(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result v0

    .line 157
    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
