.class public final Landroid/support/v7/internal/view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/internal/view/menu/j;

.field d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Landroid/support/v7/internal/view/menu/i;

.field private h:I

.field private i:Landroid/support/v7/internal/view/menu/z;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/support/v7/internal/view/menu/h;->f:I

    .line 79
    iput p2, p0, Landroid/support/v7/internal/view/menu/h;->e:I

    .line 80
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/h;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/support/v7/internal/view/menu/h;->h:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/g;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/h;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/support/v7/internal/view/menu/h;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v7/internal/view/menu/h;->e:I

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/h;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/h;->a:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/h;->b:Landroid/view/LayoutInflater;

    .line 93
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/h;->c:Landroid/support/v7/internal/view/menu/j;

    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/h;->a:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/h;->b:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->i:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->i:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/z;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/h;->i:Landroid/support/v7/internal/view/menu/z;

    .line 135
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->notifyDataSetChanged()V

    .line 130
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ae;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 142
    :cond_0
    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/m;-><init>(Landroid/support/v7/internal/view/menu/j;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->a()V

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->i:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->i:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;)Z

    .line 146
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/support/v7/internal/view/menu/h;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/h;->c:Landroid/support/v7/internal/view/menu/j;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/h;->g:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/i;->a(I)Landroid/support/v7/internal/view/menu/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/y;I)Z

    .line 170
    return-void
.end method
