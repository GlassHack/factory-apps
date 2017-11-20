.class public abstract Lcom/google/android/youtube/core/ui/BasePagedView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/f;


# instance fields
.field protected final a:Landroid/view/ViewGroup;

.field protected final b:Landroid/view/ViewGroup;

.field protected final c:Landroid/widget/TextView;

.field protected final d:Landroid/view/View;

.field protected final e:Landroid/view/ViewGroup;

.field protected final f:Landroid/widget/TextView;

.field protected final g:Landroid/widget/Button;

.field protected h:Landroid/view/View;

.field protected i:Landroid/widget/ListAdapter;

.field protected final j:Lcom/google/android/youtube/core/ui/h;

.field protected k:Ljava/lang/String;

.field protected l:Lcom/google/android/youtube/core/ui/g;

.field protected m:Landroid/widget/AdapterView$OnItemClickListener;

.field protected n:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final o:Ljava/util/List;

.field private final p:Z

.field private q:Z

.field private final r:I

.field private final s:I

.field private t:Landroid/widget/FrameLayout;

.field private u:Lcom/google/android/youtube/core/ui/d;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    .line 70
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    sget-object v0, Lcom/google/android/youtube/R$styleable;->BasePagedView:[I

    invoke-virtual {p2, p3, v0, v2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    .line 82
    if-nez p6, :cond_1

    .line 83
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    .line 88
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOrientation(I)V

    .line 89
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->t:Landroid/widget/FrameLayout;

    .line 90
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    iget-object v4, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 95
    invoke-virtual {v4, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->t:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    if-gez p5, :cond_0

    .line 99
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    .line 102
    :cond_0
    if-lez p5, :cond_2

    move v0, v1

    :goto_1
    const-string v5, "no statusView provided"

    invoke-static {v0, v5}, Lcom/google/android/youtube/core/utils/f;->b(ZLjava/lang/Object;)V

    .line 103
    new-instance v0, Lcom/google/android/youtube/core/ui/e;

    invoke-virtual {v4, p5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/youtube/core/ui/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->j:Lcom/google/android/youtube/core/ui/h;

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    const-string v4, "error_message_view"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    if-nez v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->f:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->a:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    .line 122
    const v0, 0x7fffffff

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->r:I

    .line 123
    const v0, 0x7fffffff

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->s:I

    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingLeft()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingTop()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingRight()I

    move-result v4

    .line 128
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getPaddingBottom()I

    move-result v5

    .line 129
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;IIII)V

    .line 130
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;IIII)V

    .line 131
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    invoke-static {v6, v0, v1, v4, v5}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;IIII)V

    .line 132
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/google/android/youtube/core/ui/BasePagedView;->setPadding(IIII)V

    .line 134
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    new-instance v0, Lcom/google/android/youtube/core/ui/d;

    invoke-direct {v0, p0, v8}, Lcom/google/android/youtube/core/ui/d;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;Lcom/google/android/youtube/core/ui/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->u:Lcom/google/android/youtube/core/ui/d;

    .line 137
    return-void

    .line 85
    :cond_1
    iput-object p6, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 102
    goto/16 :goto_1

    .line 115
    :cond_3
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    const-string v4, "error_message"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->f:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    const-string v4, "retry_button"

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    goto :goto_2
.end method

.method private static a(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 328
    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, p3

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, p4

    .line 328
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 333
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 251
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    if-ne v0, p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->e:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    if-ne v3, p1, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void

    :cond_0
    move v0, v2

    .line 251
    goto :goto_0

    :cond_1
    move v0, v2

    .line 252
    goto :goto_1

    :cond_2
    move v0, v2

    .line 253
    goto :goto_2

    :cond_3
    move v1, v2

    .line 254
    goto :goto_3
.end method

.method private d()V
    .locals 6

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    goto :goto_0

    .line 266
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 267
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->b(Landroid/view/View;)V

    .line 268
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/youtube/core/ui/BasePagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->p:Z

    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->q:Z

    goto :goto_0

    .line 277
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 278
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->removeView(Landroid/view/View;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->a(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->b:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->c(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->d()V

    .line 213
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->c(Landroid/view/View;)V

    .line 225
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->e()V

    .line 226
    return-void
.end method

.method protected abstract b(Landroid/view/View;)V
.end method

.method protected abstract c()Z
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->i:Landroid/widget/ListAdapter;

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->i:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->u:Lcom/google/android/youtube/core/ui/d;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 176
    return-void
.end method

.method public setEmptyText(I)V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/BasePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 317
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 310
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->k:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 196
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->n:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 201
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 206
    return-void
.end method

.method public final setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method public final setOnScrollListener(Lcom/google/android/youtube/core/ui/g;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView;->l:Lcom/google/android/youtube/core/ui/g;

    .line 186
    return-void
.end method
