.class public Landroid/support/v7/internal/view/menu/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final a:I


# instance fields
.field public b:Landroid/view/View;

.field public c:Landroid/support/v7/internal/view/menu/z;

.field public d:Z

.field public e:I

.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/LayoutInflater;

.field private final h:Landroid/support/v7/internal/view/menu/j;

.field private final i:Landroid/support/v7/internal/view/menu/x;

.field private final j:Z

.field private final k:I

.field private final l:I

.field private m:Landroid/support/v7/widget/aj;

.field private n:Landroid/view/ViewTreeObserver;

.field private o:Landroid/view/ViewGroup;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget v0, Landroid/support/v7/b/g;->j:I

    sput v0, Landroid/support/v7/internal/view/menu/w;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 83
    const/4 v4, 0x0

    sget v5, Landroid/support/v7/b/b;->n:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;ZI)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;ZI)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/w;->e:I

    .line 88
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/w;->f:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->g:Landroid/view/LayoutInflater;

    .line 90
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/w;->h:Landroid/support/v7/internal/view/menu/j;

    .line 91
    new-instance v0, Landroid/support/v7/internal/view/menu/x;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/w;->h:Landroid/support/v7/internal/view/menu/j;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/x;-><init>(Landroid/support/v7/internal/view/menu/w;Landroid/support/v7/internal/view/menu/j;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->i:Landroid/support/v7/internal/view/menu/x;

    .line 92
    iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/w;->j:Z

    .line 93
    iput p5, p0, Landroid/support/v7/internal/view/menu/w;->l:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/b/d;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/w;->k:I

    .line 99
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    .line 102
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/w;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/w;->j:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/w;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/w;)Landroid/support/v7/internal/view/menu/j;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->h:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->h:Landroid/support/v7/internal/view/menu/j;

    if-eq p1, v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->e()V

    .line 296
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    .line 107
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/w;->p:Z

    .line 253
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->i:Landroid/support/v7/internal/view/menu/x;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->i:Landroid/support/v7/internal/view/menu/x;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/x;->notifyDataSetChanged()V

    .line 256
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ae;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    new-instance v3, Landroid/support/v7/internal/view/menu/w;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->f:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    iput-object v0, v3, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    .line 270
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ae;->size()I

    move-result v4

    move v0, v2

    .line 271
    :goto_0
    if-ge v0, v4, :cond_3

    .line 272
    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ae;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 273
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 278
    :goto_1
    iput-boolean v0, v3, Landroid/support/v7/internal/view/menu/w;->d:Z

    .line 280
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/w;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;)Z

    .line 287
    :cond_0
    :goto_2
    return v1

    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 287
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    return-object v0
.end method

.method public final c(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Landroid/support/v7/widget/aj;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/w;->f:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/internal/view/menu/w;->l:I

    invoke-direct {v0, v3, v4, v5}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/aj;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 130
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/aj;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/w;->i:Landroid/support/v7/internal/view/menu/x;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/aj;->a(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->d()V

    .line 134
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    .line 135
    if-eqz v3, :cond_5

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_4

    move v0, v1

    .line 137
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    .line 138
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 139
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    iget v3, p0, Landroid/support/v7/internal/view/menu/w;->e:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/aj;->a(I)V

    .line 145
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/w;->p:Z

    if-nez v0, :cond_3

    .line 146
    iget-object v7, p0, Landroid/support/v7/internal/view/menu/w;->i:Landroid/support/v7/internal/view/menu/x;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    move v6, v2

    move v3, v2

    move-object v5, v4

    :goto_1
    if-ge v6, v10, :cond_2

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v3, :cond_7

    move v3, v0

    move-object v0, v4

    :goto_2
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/w;->o:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v11, p0, Landroid/support/v7/internal/view/menu/w;->f:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/internal/view/menu/w;->o:Landroid/view/ViewGroup;

    :cond_1
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/w;->o:Landroid/view/ViewGroup;

    invoke-interface {v7, v6, v0, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v11, p0, Landroid/support/v7/internal/view/menu/w;->k:I

    if-lt v0, v11, :cond_6

    iget v2, p0, Landroid/support/v7/internal/view/menu/w;->k:I

    :cond_2
    iput v2, p0, Landroid/support/v7/internal/view/menu/w;->q:I

    .line 147
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/w;->p:Z

    .line 150
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    iget v2, p0, Landroid/support/v7/internal/view/menu/w;->q:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/aj;->b(I)V

    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->f()V

    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()V

    .line 153
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->i()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 154
    :goto_3
    return v1

    :cond_4
    move v0, v2

    .line 136
    goto :goto_0

    :cond_5
    move v1, v2

    .line 142
    goto :goto_3

    .line 146
    :cond_6
    if-le v0, v2, :cond_8

    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v0

    goto :goto_1

    :cond_7
    move-object v0, v5

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->a()V

    .line 161
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->h:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->close()V

    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/w;->n:Landroid/view/ViewTreeObserver;

    .line 171
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    .line 230
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->e()V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->m:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->i:Landroid/support/v7/internal/view/menu/x;

    .line 180
    invoke-static {v0}, Landroid/support/v7/internal/view/menu/x;->a(Landroid/support/v7/internal/view/menu/x;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/x;->a(I)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/MenuItem;I)Z

    .line 181
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/w;->e()V

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
