.class public Landroid/support/v7/widget/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Landroid/graphics/Rect;

.field private C:Z

.field private D:I

.field b:I

.field public c:I

.field public d:Landroid/view/View;

.field public e:Landroid/widget/AdapterView$OnItemClickListener;

.field private f:Landroid/content/Context;

.field private g:Landroid/widget/PopupWindow;

.field private h:Landroid/widget/ListAdapter;

.field private i:Landroid/support/v7/widget/am;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Landroid/view/View;

.field private s:Landroid/database/DataSetObserver;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final v:Landroid/support/v7/widget/au;

.field private final w:Landroid/support/v7/widget/at;

.field private final x:Landroid/support/v7/widget/as;

.field private final y:Landroid/support/v7/widget/aq;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 82
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/aj;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Landroid/support/v7/widget/aj;->j:I

    .line 95
    iput v0, p0, Landroid/support/v7/widget/aj;->k:I

    .line 100
    iput v2, p0, Landroid/support/v7/widget/aj;->o:I

    .line 102
    iput-boolean v2, p0, Landroid/support/v7/widget/aj;->p:Z

    .line 103
    iput-boolean v2, p0, Landroid/support/v7/widget/aj;->q:Z

    .line 104
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/aj;->b:I

    .line 107
    iput v2, p0, Landroid/support/v7/widget/aj;->c:I

    .line 118
    new-instance v0, Landroid/support/v7/widget/au;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/au;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->v:Landroid/support/v7/widget/au;

    .line 119
    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/at;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->w:Landroid/support/v7/widget/at;

    .line 120
    new-instance v0, Landroid/support/v7/widget/as;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->x:Landroid/support/v7/widget/as;

    .line 121
    new-instance v0, Landroid/support/v7/widget/aq;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/aq;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->y:Landroid/support/v7/widget/aq;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->A:Landroid/os/Handler;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    .line 217
    iput-object p1, p0, Landroid/support/v7/widget/aj;->f:Landroid/content/Context;

    .line 219
    sget-object v0, Landroid/support/v7/b/j;->W:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    sget v1, Landroid/support/v7/b/j;->X:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aj;->l:I

    .line 223
    sget v1, Landroid/support/v7/b/j;->Y:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aj;->m:I

    .line 225
    iget v1, p0, Landroid/support/v7/widget/aj;->m:I

    if-eqz v1, :cond_0

    .line 226
    iput-boolean v3, p0, Landroid/support/v7/widget/aj;->n:Z

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    new-instance v0, Landroid/support/v7/internal/widget/s;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/aj;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 234
    invoke-static {v0}, Landroid/support/v4/e/f;->a(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aj;->D:I

    .line 235
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/aj;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/au;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->v:Landroid/support/v7/widget/au;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/aj;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->A:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/aj;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aj;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 662
    iput-object v2, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    .line 663
    iget-object v0, p0, Landroid/support/v7/widget/aj;->A:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->v:Landroid/support/v7/widget/au;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 664
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 469
    iput p1, p0, Landroid/support/v7/widget/aj;->o:I

    .line 470
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    .line 424
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 530
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/aj;->s:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 245
    new-instance v0, Landroid/support/v7/widget/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ar;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->s:Landroid/database/DataSetObserver;

    .line 249
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/aj;->h:Landroid/widget/ListAdapter;

    .line 250
    iget-object v0, p0, Landroid/support/v7/widget/aj;->h:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Landroid/support/v7/widget/aj;->s:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 254
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->h:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/am;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    :cond_2
    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aj;->h:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/aj;->h:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->s:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 673
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    iget-object v1, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aj;->k:I

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/aj;->k:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 11

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    if-nez v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/aj;->f:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/widget/ak;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ak;-><init>(Landroid/support/v7/widget/aj;)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->z:Ljava/lang/Runnable;

    new-instance v3, Landroid/support/v7/widget/am;

    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->C:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v0}, Landroid/support/v7/widget/am;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v0, p0, Landroid/support/v7/widget/aj;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->h:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/am;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/am;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    new-instance v3, Landroid/support/v7/widget/al;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/al;-><init>(Landroid/support/v7/widget/aj;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->x:Landroid/support/v7/widget/as;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/aj;->u:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->u:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    iget-object v6, p0, Landroid/support/v7/widget/aj;->r:Landroid/view/View;

    if-eqz v6, :cond_1d

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Landroid/support/v7/widget/aj;->c:I

    packed-switch v7, :pswitch_data_0

    const-string v0, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid hint position "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/support/v7/widget/aj;->c:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v0, p0, Landroid/support/v7/widget/aj;->k:I

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Landroid/support/v7/widget/aj;->n:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/aj;->m:I

    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    iget-object v4, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    iget v7, p0, Landroid/support/v7/widget/aj;->m:I

    invoke-virtual {v4, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v6

    iget-boolean v4, p0, Landroid/support/v7/widget/aj;->p:Z

    if-nez v4, :cond_3

    iget v4, p0, Landroid/support/v7/widget/aj;->j:I

    if-ne v4, v5, :cond_8

    :cond_3
    add-int v0, v6, v3

    .line 577
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->h()Z

    move-result v6

    .line 579
    iget-object v3, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 580
    iget v3, p0, Landroid/support/v7/widget/aj;->k:I

    if-ne v3, v5, :cond_a

    move v4, v5

    .line 590
    :goto_6
    iget v3, p0, Landroid/support/v7/widget/aj;->j:I

    if-ne v3, v5, :cond_10

    .line 593
    if-eqz v6, :cond_c

    move v3, v0

    .line 594
    :goto_7
    if-eqz v6, :cond_e

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/support/v7/widget/aj;->k:I

    if-ne v6, v5, :cond_d

    :goto_8
    invoke-virtual {v0, v5, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    move v5, v3

    .line 610
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/aj;->q:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/support/v7/widget/aj;->p:Z

    if-nez v3, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/aj;->l:I

    iget v3, p0, Landroid/support/v7/widget/aj;->m:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 653
    :cond_4
    :goto_b
    return-void

    :cond_5
    move v0, v2

    .line 572
    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->r:Landroid/view/View;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    goto/16 :goto_3

    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v2

    goto/16 :goto_4

    :cond_8
    iget v4, p0, Landroid/support/v7/widget/aj;->k:I

    packed-switch v4, :pswitch_data_1

    iget v4, p0, Landroid/support/v7/widget/aj;->k:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_c
    iget-object v7, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    sub-int/2addr v6, v0

    invoke-virtual {v7, v4, v6}, Landroid/support/v7/widget/am;->a(II)I

    move-result v4

    if-lez v4, :cond_9

    add-int/2addr v0, v3

    :cond_9
    add-int/2addr v0, v4

    goto/16 :goto_5

    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/aj;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/aj;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/widget/aj;->B:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_c

    .line 584
    :cond_a
    iget v3, p0, Landroid/support/v7/widget/aj;->k:I

    if-ne v3, v9, :cond_b

    .line 585
    iget-object v3, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_6

    .line 587
    :cond_b
    iget v4, p0, Landroid/support/v7/widget/aj;->k:I

    goto/16 :goto_6

    :cond_c
    move v3, v5

    .line 593
    goto/16 :goto_7

    :cond_d
    move v5, v2

    .line 595
    goto/16 :goto_8

    .line 599
    :cond_e
    iget-object v6, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/aj;->k:I

    if-ne v0, v5, :cond_f

    move v0, v5

    :goto_d
    invoke-virtual {v6, v0, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    move v5, v3

    goto/16 :goto_9

    :cond_f
    move v0, v2

    goto :goto_d

    .line 604
    :cond_10
    iget v3, p0, Landroid/support/v7/widget/aj;->j:I

    if-ne v3, v9, :cond_11

    move v5, v0

    .line 605
    goto/16 :goto_9

    .line 607
    :cond_11
    iget v5, p0, Landroid/support/v7/widget/aj;->j:I

    goto/16 :goto_9

    :cond_12
    move v1, v2

    .line 610
    goto/16 :goto_a

    .line 615
    :cond_13
    iget v3, p0, Landroid/support/v7/widget/aj;->k:I

    if-ne v3, v5, :cond_17

    move v3, v5

    .line 625
    :goto_e
    iget v4, p0, Landroid/support/v7/widget/aj;->j:I

    if-ne v4, v5, :cond_19

    move v0, v5

    .line 635
    :goto_f
    iget-object v4, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 636
    sget-object v0, Landroid/support/v7/widget/aj;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/aj;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_14
    :goto_10
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/widget/aj;->q:Z

    if-nez v3, :cond_1b

    iget-boolean v3, p0, Landroid/support/v7/widget/aj;->p:Z

    if-nez v3, :cond_1b

    :goto_11
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->w:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 642
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/aj;->l:I

    iget v3, p0, Landroid/support/v7/widget/aj;->m:I

    iget v4, p0, Landroid/support/v7/widget/aj;->o:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/u;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/am;->setSelection(I)V

    .line 646
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->C:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 647
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->g()V

    .line 649
    :cond_16
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->C:Z

    if-nez v0, :cond_4

    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/aj;->A:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->y:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    .line 618
    :cond_17
    iget v3, p0, Landroid/support/v7/widget/aj;->k:I

    if-ne v3, v9, :cond_18

    .line 619
    iget-object v3, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_e

    .line 621
    :cond_18
    iget-object v3, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/aj;->k:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_e

    .line 628
    :cond_19
    iget v4, p0, Landroid/support/v7/widget/aj;->j:I

    if-ne v4, v9, :cond_1a

    .line 629
    iget-object v4, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_f

    .line 631
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/aj;->j:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_f

    .line 636
    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v3, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1b
    move v1, v2

    .line 640
    goto :goto_11

    :cond_1c
    move v0, v2

    goto/16 :goto_3

    :cond_1d
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    iput-boolean v1, p0, Landroid/support/v7/widget/aj;->C:Z

    .line 293
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 294
    return-void
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/view/View;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 699
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    .line 736
    if-eqz v0, :cond_0

    .line 738
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/am;Z)Z

    .line 740
    invoke-virtual {v0}, Landroid/support/v7/widget/am;->requestLayout()V

    .line 742
    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/support/v7/widget/aj;->i:Landroid/support/v7/widget/am;

    return-object v0
.end method
