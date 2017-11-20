.class public final Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/e;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/o;


# instance fields
.field private A:Landroid/support/v7/widget/b;

.field i:Landroid/view/View;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field q:Z

.field r:Landroid/support/v7/widget/f;

.field s:Landroid/support/v7/widget/a;

.field t:Landroid/support/v7/widget/c;

.field final u:Landroid/support/v7/widget/g;

.field v:I

.field private w:I

.field private x:I

.field private final y:Landroid/util/SparseBooleanArray;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    sget v0, Landroid/support/v7/b/g;->c:I

    sget v1, Landroid/support/v7/b/g;->b:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/content/Context;II)V

    .line 73
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v0, Landroid/support/v7/widget/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/g;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/support/v7/widget/g;

    .line 88
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/j;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/aa;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/j;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/aa;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;

    move-result-object v1

    move-object v0, v1

    .line 163
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 164
    return-object v1
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 177
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    invoke-static {v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_2
    return-object v0

    .line 173
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v3

    .line 97
    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    if-nez v4, :cond_1

    .line 98
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_5

    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    .line 101
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    if-nez v0, :cond_2

    .line 102
    iget-object v0, v3, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 106
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    if-nez v0, :cond_3

    .line 107
    iget-object v0, v3, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/b/f;->a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:I

    .line 110
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    .line 111
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_6

    .line 112
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v3, :cond_4

    .line 113
    new-instance v3, Landroid/support/v7/widget/d;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    .line 114
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 115
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 117
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 122
    :goto_1
    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->w:I

    .line 124
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->x:I

    .line 127
    iput-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    .line 128
    return-void

    .line 98
    :cond_5
    iget-object v4, v3, Landroid/support/v7/internal/view/a;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/view/bi;->a(Landroid/view/ViewConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 119
    :cond_6
    iput-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 0

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    .line 516
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    .line 517
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/ab;)V
    .locals 2

    .prologue
    .line 185
    invoke-interface {p2, p1}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/support/v7/internal/view/menu/n;)V

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 188
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 189
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/l;)V

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/support/v7/widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/b;

    .line 194
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->A:Landroid/support/v7/widget/b;

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/d;)V

    .line 195
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 549
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 551
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 205
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/e;->a(Z)V

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->m()Ljava/util/ArrayList;

    move-result-object v4

    .line 214
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 215
    :goto_0
    if-ge v3, v5, :cond_1

    .line 216
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->l()Landroid/support/v4/view/n;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iput-object p0, v0, Landroid/support/v4/view/n;->b:Landroid/support/v4/view/o;

    .line 215
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 229
    if-ne v3, v1, :cond_8

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    .line 236
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_3

    .line 238
    new-instance v0, Landroid/support/v7/widget/d;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    .line 240
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 241
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    if-eq v0, v1, :cond_5

    .line 242
    if-eqz v0, :cond_4

    .line 243
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 245
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 246
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->b()Landroid/support/v7/widget/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Z)V

    .line 253
    return-void

    .line 223
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 230
    goto :goto_2

    .line 232
    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    .line 248
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    if-ne v0, v1, :cond_5

    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public final a()Z
    .locals 21

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/j;->k()Ljava/util/ArrayList;

    move-result-object v13

    .line 381
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 382
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->m:I

    .line 383
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->w:I

    .line 384
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v2, Landroid/view/ViewGroup;

    .line 387
    const/4 v6, 0x0

    .line 388
    const/4 v5, 0x0

    .line 389
    const/4 v8, 0x0

    .line 390
    const/4 v4, 0x0

    .line 391
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 392
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/n;

    .line 393
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->j()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 394
    add-int/lit8 v6, v6, 0x1

    .line 400
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 403
    const/4 v3, 0x0

    .line 391
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->i()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 398
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 408
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 410
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 412
    :cond_4
    sub-int v10, v7, v6

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->y:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 415
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 417
    const/4 v4, 0x0

    .line 418
    const/4 v3, 0x0

    .line 419
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v5, :cond_1d

    .line 420
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:I

    div-int v3, v9, v3

    .line 421
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:I

    rem-int v4, v9, v4

    .line 422
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->x:I

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    move v5, v4

    .line 426
    :goto_3
    const/4 v4, 0x0

    move v12, v4

    move v7, v8

    move v4, v3

    :goto_4
    if-ge v12, v14, :cond_17

    .line 427
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/n;

    .line 429
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->j()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 430
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 431
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    if-nez v8, :cond_5

    .line 432
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    .line 434
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v8, :cond_7

    .line 435
    const/4 v8, 0x0

    invoke-static {v6, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v8

    sub-int/2addr v4, v8

    .line 440
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 441
    sub-int v8, v9, v6

    .line 442
    if-nez v7, :cond_1c

    .line 445
    :goto_6
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->getGroupId()I

    move-result v7

    .line 446
    if-eqz v7, :cond_6

    .line 447
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 449
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/internal/view/menu/n;->d(Z)V

    move v3, v8

    move v7, v10

    .line 426
    :goto_7
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v3

    move v10, v7

    move v7, v6

    goto :goto_4

    .line 438
    :cond_7
    invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 450
    :cond_8
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->i()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 453
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->getGroupId()I

    move-result v17

    .line 454
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 455
    if-gtz v10, :cond_9

    if-eqz v18, :cond_e

    :cond_9
    if-lez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v6, :cond_a

    if-lez v4, :cond_e

    :cond_a
    const/4 v6, 0x1

    .line 458
    :goto_8
    if-eqz v6, :cond_1b

    .line 459
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 460
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    if-nez v8, :cond_b

    .line 461
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->z:Landroid/view/View;

    .line 463
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v8, :cond_f

    .line 464
    const/4 v8, 0x0

    invoke-static {v11, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v19

    .line 466
    sub-int v8, v4, v19

    .line 467
    if-nez v19, :cond_1a

    .line 468
    const/4 v4, 0x0

    :goto_9
    move v6, v8

    .line 473
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 474
    sub-int/2addr v9, v8

    .line 475
    if-nez v7, :cond_c

    move v7, v8

    .line 479
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    if-eqz v8, :cond_11

    .line 480
    if-ltz v9, :cond_10

    const/4 v8, 0x1

    :goto_b
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    .line 487
    :goto_c
    if-eqz v11, :cond_13

    if-eqz v17, :cond_13

    .line 488
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v10

    .line 502
    :goto_d
    if-eqz v11, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 504
    :cond_d
    invoke-virtual {v3, v11}, Landroid/support/v7/internal/view/menu/n;->d(Z)V

    move v6, v8

    move v3, v9

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 505
    goto :goto_7

    .line 455
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 471
    :cond_f
    invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 480
    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    .line 483
    :cond_11
    add-int v8, v9, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    :goto_e
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_e

    .line 489
    :cond_13
    if-eqz v18, :cond_19

    .line 491
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 492
    const/4 v4, 0x0

    move v6, v10

    move v10, v4

    :goto_f
    if-ge v10, v12, :cond_18

    .line 493
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/n;

    .line 494
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/n;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 496
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/n;->h()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v6, v6, 0x1

    .line 497
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/internal/view/menu/n;->d(Z)V

    .line 492
    :cond_15
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_f

    .line 507
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/view/menu/n;->d(Z)V

    move v6, v7

    move v3, v9

    move v7, v10

    goto/16 :goto_7

    .line 510
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v4, v6

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_d

    :cond_1a
    move v4, v6

    goto/16 :goto_9

    :cond_1b
    move v11, v6

    move v8, v7

    move v7, v4

    goto :goto_c

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ae;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 279
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 265
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ae;->u()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    if-eq v1, v2, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ae;->u()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ae;

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ae;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroid/support/v7/internal/view/menu/ab;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/support/v7/internal/view/menu/ab;

    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/ab;->a()Landroid/support/v7/internal/view/menu/n;

    move-result-object v1

    if-ne v1, v5, :cond_2

    move-object v0, v2

    .line 269
    :goto_3
    if-nez v0, :cond_5

    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    .line 268
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 271
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    .line 274
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ae;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->v:I

    .line 275
    new-instance v1, Landroid/support/v7/widget/a;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/ae;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    .line 276
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/a;->a(Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->b()V

    .line 278
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/ae;)Z

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->h()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/f;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:I

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 138
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 302
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/internal/view/menu/j;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/f;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;)V

    .line 305
    new-instance v1, Landroid/support/v7/widget/c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/c;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/f;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 311
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/ae;)Z

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/internal/view/menu/aa;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    move v0, v1

    .line 335
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/f;

    .line 331
    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/w;->e()V

    move v0, v1

    .line 333
    goto :goto_0

    .line 335
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    move-result v0

    .line 344
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    move-result v1

    or-int/2addr v0, v1

    .line 345
    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->e()V

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
