.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final V:Landroid/view/animation/Interpolator;

.field private static final i:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/support/v4/widget/n;

.field private D:Landroid/support/v4/widget/n;

.field private E:Landroid/support/v4/widget/n;

.field private F:Landroid/support/v4/widget/n;

.field private G:I

.field private H:I

.field private I:Landroid/view/VelocityTracker;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:Landroid/support/v7/widget/bw;

.field private R:Landroid/support/v7/widget/bm;

.field private S:Landroid/support/v7/widget/bg;

.field private T:Z

.field private U:Ljava/lang/Runnable;

.field final a:Landroid/support/v7/widget/bo;

.field b:Landroid/support/v7/widget/l;

.field c:Landroid/support/v7/widget/o;

.field final d:Ljava/util/List;

.field e:Landroid/support/v7/widget/bf;

.field final f:Landroid/support/v7/widget/bu;

.field g:Z

.field h:Z

.field private final j:Landroid/support/v7/widget/bq;

.field private k:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private l:Z

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/graphics/Rect;

.field private o:Landroid/support/v7/widget/bd;

.field private p:Landroid/support/v7/widget/bj;

.field private q:Landroid/support/v7/widget/bp;

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljava/util/ArrayList;

.field private t:Landroid/support/v7/widget/bl;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    .line 246
    new-instance v0, Landroid/support/v7/widget/ba;

    invoke-direct {v0}, Landroid/support/v7/widget/ba;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/view/animation/Interpolator;

    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Landroid/support/v7/widget/bq;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/bq;

    .line 107
    new-instance v0, Landroid/support/v7/widget/bo;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bo;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    .line 130
    new-instance v0, Landroid/support/v7/widget/ay;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ay;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    .line 174
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 184
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 188
    new-instance v0, Landroid/support/v7/widget/r;

    invoke-direct {v0}, Landroid/support/v7/widget/r;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    .line 213
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 224
    new-instance v0, Landroid/support/v7/widget/bw;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/bw;

    .line 226
    new-instance v0, Landroid/support/v7/widget/bu;

    invoke-direct {v0}, Landroid/support/v7/widget/bu;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    .line 231
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 232
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 233
    new-instance v0, Landroid/support/v7/widget/bh;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/bh;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/bg;

    .line 235
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    .line 236
    new-instance v0, Landroid/support/v7/widget/az;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/az;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Ljava/lang/Runnable;

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 265
    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 269
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 271
    invoke-static {p0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/bg;

    iput-object v1, v0, Landroid/support/v7/widget/bf;->h:Landroid/support/v7/widget/bg;

    .line 274
    new-instance v0, Landroid/support/v7/widget/l;

    new-instance v1, Landroid/support/v7/widget/bc;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bc;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/l;-><init>(Landroid/support/v7/widget/m;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    .line 275
    new-instance v0, Landroid/support/v7/widget/o;

    new-instance v1, Landroid/support/v7/widget/bb;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bb;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/q;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    .line 276
    return-void

    :cond_0
    move v0, v2

    .line 265
    goto :goto_0

    :cond_1
    move v1, v2

    .line 271
    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/bx;)J
    .locals 2

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    iget-boolean v0, v0, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/support/v7/widget/bx;->d:J

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/bx;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method private a(Landroid/support/v4/f/a;)V
    .locals 8

    .prologue
    .line 1995
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 1996
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_3

    .line 1997
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 1998
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v1

    .line 1999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    .line 2000
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v2, v2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v2, :cond_0

    .line 2001
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v2, v2, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    :cond_0
    invoke-virtual {p1, v5}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2004
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;Landroid/support/v7/widget/bo;)V

    .line 1996
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 2007
    :cond_1
    if-eqz v0, :cond_2

    .line 2008
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bi;)V

    goto :goto_1

    .line 2011
    :cond_2
    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bi;-><init>(Landroid/support/v7/widget/bx;IIII)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bi;)V

    goto :goto_1

    .line 2015
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2016
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/bi;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2045
    iget-object v0, p1, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 2046
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 2047
    iget v2, p1, Landroid/support/v7/widget/bi;->b:I

    .line 2048
    iget v3, p1, Landroid/support/v7/widget/bi;->c:I

    .line 2049
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2050
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2051
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 2052
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 2053
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 2060
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget-object v1, p1, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bf;->a(Landroid/support/v7/widget/bx;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2062
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 2074
    :cond_1
    :goto_0
    return-void

    .line 2069
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 2070
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget-object v1, p1, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bf;->a(Landroid/support/v7/widget/bx;)Z

    .line 2071
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 1608
    invoke-static {p1}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1609
    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    if-ne v1, v2, :cond_0

    .line 1611
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1612
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 1613
    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1614
    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1616
    :cond_0
    return-void

    .line 1611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    return p1
.end method

.method static b(Landroid/view/View;)Landroid/support/v7/widget/bx;
    .locals 1

    .prologue
    .line 2445
    if-nez p0, :cond_0

    .line 2446
    const/4 v0, 0x0

    .line 2448
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->a:Landroid/support/v7/widget/bx;

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2458
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    .line 2459
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    return v0
.end method

.method static synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->V:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-ne p1, v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 708
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    .line 709
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 710
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 712
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/bm;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/bm;

    .line 715
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->e(I)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 607
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 608
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/bo;->b(Landroid/support/v7/widget/bx;)V

    .line 609
    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/o;->a(Landroid/view/View;IZ)V

    .line 614
    :goto_1
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    iget-object v1, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/q;->a(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/p;->a(I)V

    iget-object v0, v0, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 860
    :cond_0
    return-void
.end method

.method private f(II)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 866
    .line 868
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v0, :cond_10

    .line 870
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 872
    if-eqz p1, :cond_f

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, p1, v2, v3}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v3

    .line 874
    sub-int v4, p1, v3

    .line 876
    :goto_0
    if-eqz p2, :cond_e

    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, p2, v2, v5}, Landroid/support/v7/widget/bj;->b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    .line 878
    sub-int v2, p2, v0

    .line 880
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 882
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v5}, Landroid/support/v7/widget/o;->a()I

    move-result v7

    move v6, v1

    .line 883
    :goto_2
    if-ge v6, v7, :cond_3

    .line 884
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v8

    .line 885
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v5

    .line 886
    if-eqz v5, :cond_1

    iget-object v9, v5, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    if-eqz v9, :cond_1

    .line 887
    iget-object v5, v5, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    .line 888
    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 889
    :goto_3
    if-eqz v5, :cond_1

    .line 890
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 891
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 892
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    if-eq v8, v10, :cond_1

    .line 893
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v5, v9, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 883
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    .line 888
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 901
    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 902
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    move v1, v3

    move v3, v4

    .line 904
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 905
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 907
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    .line 908
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 909
    if-gez v3, :cond_c

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/n;->a(F)Z

    :cond_5
    :goto_5
    if-gez v2, :cond_d

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/n;->a(F)Z

    :cond_6
    :goto_6
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    invoke-static {p0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;)V

    .line 911
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/bm;

    if-eqz v2, :cond_a

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    .line 912
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/bm;

    .line 914
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_b

    .line 915
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 917
    :cond_b
    return-void

    .line 909
    :cond_c
    if-lez v3, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/n;->a(F)Z

    goto :goto_5

    :cond_d
    if-lez v2, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/n;->a(F)Z

    goto :goto_6

    :cond_e
    move v0, v1

    move v2, v1

    goto/16 :goto_1

    :cond_f
    move v3, v1

    move v4, v1

    goto/16 :goto_0

    :cond_10
    move v0, v1

    move v2, v1

    move v3, v1

    goto/16 :goto_4
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/bw;

    invoke-virtual {v0}, Landroid/support/v7/widget/bw;->a()V

    .line 1110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->p()V

    .line 1111
    return-void
.end method

.method private g(II)V
    .locals 2

    .prologue
    .line 1150
    const/4 v0, 0x0

    .line 1151
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1152
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {v0}, Landroid/support/v4/widget/n;->c()Z

    move-result v0

    .line 1154
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1155
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1157
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1158
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1160
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1161
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1163
    :cond_3
    if-eqz v0, :cond_4

    .line 1164
    invoke-static {p0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;)V

    .line 1166
    :cond_4
    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1139
    const/4 v0, 0x0

    .line 1140
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {v0}, Landroid/support/v4/widget/n;->c()Z

    move-result v0

    .line 1141
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1142
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1143
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {v1}, Landroid/support/v4/widget/n;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1144
    :cond_3
    if-eqz v0, :cond_4

    .line 1145
    invoke-static {p0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;)V

    .line 1147
    :cond_4
    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    iget-object v3, v2, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v3, p1}, Landroid/support/v7/widget/q;->a(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/bo;->b(Landroid/support/v7/widget/bx;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/bo;->a(Landroid/support/v7/widget/bx;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    return-void

    :cond_1
    iget-object v4, v2, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/p;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/p;->c(I)Z

    iget-object v4, v2, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/q;->a(I)V

    iget-object v2, v2, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 1194
    :cond_0
    new-instance v0, Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    .line 1195
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bm;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/bm;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1207
    :cond_0
    new-instance v0, Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    .line 1208
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 1217
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1220
    :cond_0
    new-instance v0, Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    .line 1221
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0

    .line 1225
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bp;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/bp;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 1231
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1234
    :cond_0
    new-instance v0, Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    .line 1235
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0

    .line 1239
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/n;->a(II)V

    goto :goto_0
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bw;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/bw;

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    .line 1245
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1603
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 1604
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 1605
    return-void
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget-boolean v0, v0, Landroid/support/v7/widget/bf;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1701
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1703
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    .line 1705
    :cond_0
    return-void
.end method

.method private q()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1718
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_9

    .line 1721
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    iget-object v3, v0, Landroid/support/v7/widget/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/l;->a(Ljava/util/List;)V

    iget-object v3, v0, Landroid/support/v7/widget/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/l;->a(Ljava/util/List;)V

    .line 1722
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/bx;->b()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/bx;->a(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iput-boolean v2, v0, Landroid/support/v7/widget/bk;->c:Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v4, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v1

    :goto_2
    if-ge v3, v5, :cond_4

    iget-object v0, v4, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_3

    iput-boolean v2, v0, Landroid/support/v7/widget/bk;->c:Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v4, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v0, :cond_6

    iget-object v0, v4, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    iget-boolean v0, v0, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, v4, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_8

    iget-object v0, v4, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/bx;->a(I)V

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_6
    iget-object v0, v4, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_8

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/bo;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v4, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/bx;->a(I)V

    :cond_7
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    .line 1723
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->o()V

    .line 1728
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1729
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->a()V

    .line 1733
    :goto_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_b

    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    move v0, v2

    .line 1735
    :goto_6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v3, :cond_c

    if-nez v0, :cond_c

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-static {v3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bj;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_c
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    iget-boolean v3, v3, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v3, :cond_10

    :cond_d
    move v3, v2

    :goto_7
    iput-boolean v3, v4, Landroid/support/v7/widget/bu;->j:Z

    .line 1739
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v4, v4, Landroid/support/v7/widget/bu;->j:Z

    if-eqz v4, :cond_12

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_8
    if-eqz v0, :cond_12

    :goto_9
    iput-boolean v2, v3, Landroid/support/v7/widget/bu;->k:Z

    .line 1742
    return-void

    .line 1731
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->d()V

    goto :goto_5

    :cond_f
    move v0, v1

    .line 1733
    goto :goto_6

    :cond_10
    move v3, v1

    .line 1735
    goto :goto_7

    :cond_11
    move v0, v1

    .line 1739
    goto :goto_8

    :cond_12
    move v2, v1

    goto :goto_9
.end method

.method private r()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2244
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v2

    move v0, v1

    .line 2245
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2246
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    .line 2247
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2248
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->a()V

    .line 2245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2251
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v3, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, v3, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, v3, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v3, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v0, v3, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2252
    :cond_4
    return-void
.end method


# virtual methods
.method final a(I)Landroid/support/v7/widget/bx;
    .locals 4

    .prologue
    .line 2487
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v2

    .line 2488
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2489
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    .line 2490
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2491
    iget v3, v0, Landroid/support/v7/widget/bx;->b:I

    if-ne v3, p1, :cond_0

    .line 2503
    :goto_1
    return-object v0

    .line 2495
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2503
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)Landroid/support/v7/widget/bx;
    .locals 3

    .prologue
    .line 2436
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2437
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2441
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    return-object v0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 1054
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 1074
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/bw;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bw;->b(II)V

    .line 1077
    :cond_1
    return-void
.end method

.method final a(IIZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2307
    add-int v2, p1, p2

    .line 2308
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v1

    .line 2309
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 2310
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    .line 2311
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2312
    iget v4, v3, Landroid/support/v7/widget/bx;->b:I

    if-lt v4, v2, :cond_1

    .line 2318
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/bx;->a(IZ)V

    .line 2319
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v5, v3, Landroid/support/v7/widget/bu;->h:Z

    .line 2309
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2320
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/bx;->b:I

    if-lt v4, p1, :cond_0

    .line 2325
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/bx;->a(I)V

    .line 2326
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v5, v4, Landroid/support/v7/widget/bu;->h:Z

    .line 2327
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/bx;->a(IZ)V

    goto :goto_1

    .line 2331
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v3, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v0, v3, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v4

    if-lt v4, v2, :cond_4

    neg-int v4, p2

    invoke-virtual {v0, v4, p3}, Landroid/support/v7/widget/bx;->a(IZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v4

    if-lt v4, p1, :cond_3

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/bo;->b(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bx;->a(I)V

    goto :goto_3

    .line 2332
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2333
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1341
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    if-eqz v0, :cond_1

    .line 1342
    if-nez p1, :cond_0

    .line 1343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1057
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_1

    .line 1058
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1062
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 1063
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 1065
    :cond_1
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    .line 1284
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1286
    return-void
.end method

.method final b()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1767
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-nez v0, :cond_0

    .line 1768
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :goto_0
    return-void

    .line 1771
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1772
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1773
    iput-boolean v9, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 1775
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 1777
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    :goto_1
    iput-object v0, v1, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    .line 1779
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 1781
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v1, v1, Landroid/support/v7/widget/bu;->k:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/bu;->i:Z

    .line 1782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    invoke-virtual {v1}, Landroid/support/v7/widget/bd;->b()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/bu;->e:I

    .line 1784
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->j:Z

    if-eqz v0, :cond_4

    .line 1786
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->clear()V

    .line 1787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->clear()V

    .line 1788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v10

    move v6, v8

    .line 1789
    :goto_2
    if-ge v6, v10, :cond_4

    .line 1790
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v1

    .line 1791
    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    iget-boolean v0, v0, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v0, :cond_2

    .line 1792
    :cond_1
    iget-object v5, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 1795
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v11, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bi;-><init>(Landroid/support/v7/widget/bx;IIII)V

    invoke-virtual {v11, v1, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    move-object v0, v7

    .line 1777
    goto :goto_1

    .line 1799
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->k:Z

    if-eqz v0, :cond_e

    .line 1806
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v1

    move v0, v8

    :goto_3
    if-ge v0, v1, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->b()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v2, Landroid/support/v7/widget/bx;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iget v3, v2, Landroid/support/v7/widget/bx;->b:I

    iput v3, v2, Landroid/support/v7/widget/bx;->c:I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1808
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    if-eqz v0, :cond_8

    .line 1809
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v1

    move v0, v8

    .line 1810
    :goto_4
    if-ge v0, v1, :cond_8

    .line 1811
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v2

    .line 1812
    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->j()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->l()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->b()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1813
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bx;)J

    move-result-wide v4

    .line 1814
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v3, v3, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v3, v3, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1820
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->h:Z

    .line 1821
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v8, v1, Landroid/support/v7/widget/bu;->h:Z

    .line 1823
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)V

    .line 1824
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v0, v1, Landroid/support/v7/widget/bu;->h:Z

    .line 1826
    new-instance v4, Landroid/support/v4/f/a;

    invoke-direct {v4}, Landroid/support/v4/f/a;-><init>()V

    move v1, v8

    .line 1827
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 1829
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v5

    .line 1830
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->b()Z

    move-result v0

    if-nez v0, :cond_b

    move v2, v8

    move v3, v8

    .line 1831
    :goto_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 1834
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, v2}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 1835
    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    if-ne v0, v5, :cond_9

    move v3, v9

    .line 1837
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 1840
    :cond_a
    if-nez v3, :cond_b

    .line 1841
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v3, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1846
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 1847
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->b()V

    move-object v6, v4

    .line 1864
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    invoke-virtual {v1}, Landroid/support/v7/widget/bd;->b()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/bu;->e:I

    .line 1865
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput v8, v0, Landroid/support/v7/widget/bu;->g:I

    .line 1868
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v8, v0, Landroid/support/v7/widget/bu;->i:Z

    .line 1869
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)V

    .line 1871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v8, v0, Landroid/support/v7/widget/bu;->h:Z

    .line 1872
    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1875
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->j:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v0, :cond_10

    move v0, v9

    :goto_8
    iput-boolean v0, v1, Landroid/support/v7/widget/bu;->j:Z

    .line 1877
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->j:Z

    if-eqz v0, :cond_23

    .line 1879
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    if-eqz v0, :cond_11

    new-instance v0, Landroid/support/v4/f/a;

    invoke-direct {v0}, Landroid/support/v4/f/a;-><init>()V

    move-object v10, v0

    .line 1881
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v12

    move v11, v8

    .line 1882
    :goto_a
    if-ge v11, v12, :cond_13

    .line 1883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v1

    .line 1884
    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1885
    iget-object v5, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 1888
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bx;)J

    move-result-wide v2

    .line 1889
    if-eqz v10, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1890
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0, v1}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    :cond_d
    :goto_b
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_a

    .line 1849
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 1851
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->d()V

    .line 1852
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    if-eqz v0, :cond_26

    .line 1853
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v1

    move v0, v8

    .line 1854
    :goto_c
    if-ge v0, v1, :cond_26

    .line 1855
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v2

    .line 1856
    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->j()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->l()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->b()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1857
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bx;)J

    move-result-wide v4

    .line 1858
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v3, v3, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v3, v3, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v3, v2}, Landroid/support/v4/f/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_10
    move v0, v8

    .line 1875
    goto/16 :goto_8

    :cond_11
    move-object v10, v7

    .line 1879
    goto/16 :goto_9

    .line 1892
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v13, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    new-instance v0, Landroid/support/v7/widget/bi;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bi;-><init>(Landroid/support/v7/widget/bx;IIII)V

    invoke-virtual {v13, v1, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1896
    :cond_13
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v4/f/a;)V

    .line 1898
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->size()I

    move-result v0

    .line 1899
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_15

    .line 1900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 1901
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v2, v2, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/f/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1902
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    .line 1903
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v2, v2, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->d(I)Ljava/lang/Object;

    .line 1905
    iget-object v2, v0, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    iget-object v2, v2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 1906
    invoke-virtual {p0, v2, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 1907
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v3, v0, Landroid/support/v7/widget/bi;->a:Landroid/support/v7/widget/bx;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/bo;->b(Landroid/support/v7/widget/bx;)V

    .line 1909
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bi;)V

    .line 1899
    :cond_14
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 1913
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->size()I

    move-result v0

    .line 1914
    if-lez v0, :cond_1b

    .line 1915
    add-int/lit8 v0, v0, -0x1

    move v11, v0

    :goto_e
    if-ltz v11, :cond_1b

    .line 1916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0, v11}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bx;

    .line 1917
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0, v11}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    .line 1918
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v2, v2, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v2}, Landroid/support/v4/f/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v2, v2, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1920
    :cond_16
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v2, v2, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v2, v11}, Landroid/support/v4/f/a;->d(I)Ljava/lang/Object;

    .line 1921
    if-eqz v6, :cond_19

    iget-object v2, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v3, v2

    .line 1923
    :goto_f
    iget v4, v0, Landroid/support/v7/widget/bi;->b:I

    iget v5, v0, Landroid/support/v7/widget/bi;->c:I

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    if-eqz v3, :cond_1a

    iget v0, v3, Landroid/graphics/Rect;->left:I

    if-ne v0, v4, :cond_17

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v5, :cond_1a

    :cond_17
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/bx;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bf;->a(Landroid/support/v7/widget/bx;IIII)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 1915
    :cond_18
    :goto_10
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto :goto_e

    :cond_19
    move-object v3, v7

    .line 1921
    goto :goto_f

    .line 1923
    :cond_1a
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/bx;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bf;->b(Landroid/support/v7/widget/bx;)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    goto :goto_10

    .line 1929
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->size()I

    move-result v11

    move v6, v8

    .line 1930
    :goto_11
    if-ge v6, v11, :cond_1e

    .line 1931
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0, v6}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bx;

    .line 1932
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->c:Landroid/support/v4/f/a;

    invoke-virtual {v0, v6}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/bi;

    .line 1933
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->b:Landroid/support/v4/f/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/bi;

    .line 1934
    if-eqz v3, :cond_1d

    if-eqz v5, :cond_1d

    .line 1935
    iget v0, v3, Landroid/support/v7/widget/bi;->b:I

    iget v2, v5, Landroid/support/v7/widget/bi;->b:I

    if-ne v0, v2, :cond_1c

    iget v0, v3, Landroid/support/v7/widget/bi;->c:I

    iget v2, v5, Landroid/support/v7/widget/bi;->c:I

    if-eq v0, v2, :cond_1d

    .line 1936
    :cond_1c
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/bx;->a(Z)V

    .line 1941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget v2, v3, Landroid/support/v7/widget/bi;->b:I

    iget v3, v3, Landroid/support/v7/widget/bi;->c:I

    iget v4, v5, Landroid/support/v7/widget/bi;->b:I

    iget v5, v5, Landroid/support/v7/widget/bi;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bf;->a(Landroid/support/v7/widget/bx;IIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1943
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 1930
    :cond_1d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_11

    .line 1949
    :cond_1e
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-virtual {v0}, Landroid/support/v4/f/a;->size()I

    move-result v0

    .line 1951
    :goto_12
    add-int/lit8 v0, v0, -0x1

    move v11, v0

    :goto_13
    if-ltz v11, :cond_23

    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-virtual {v0, v11}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bx;

    .line 1954
    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 1955
    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->b()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1956
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1962
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/bx;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/bx;->a(Z)V

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    iput-object v2, v1, Landroid/support/v7/widget/bx;->g:Landroid/support/v7/widget/bx;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->b(Landroid/support/v7/widget/bx;)V

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    move v6, v4

    move v5, v3

    :goto_14
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/bf;->a(Landroid/support/v7/widget/bx;Landroid/support/v7/widget/bx;IIII)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 1951
    :cond_20
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto :goto_13

    :cond_21
    move v0, v8

    .line 1949
    goto :goto_12

    .line 1962
    :cond_22
    iget-object v0, v2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v0, v2, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/bx;->a(Z)V

    iput-object v1, v2, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    goto :goto_14

    .line 1968
    :cond_23
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v2, v2, Landroid/support/v7/widget/bu;->k:Z

    if-nez v2, :cond_25

    :goto_15
    invoke-virtual {v0, v1, v9}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bo;Z)V

    .line 1970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget v1, v1, Landroid/support/v7/widget/bu;->e:I

    iput v1, v0, Landroid/support/v7/widget/bu;->f:I

    .line 1971
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v8, v0, Landroid/support/v7/widget/bu;->j:Z

    .line 1973
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v8, v0, Landroid/support/v7/widget/bu;->k:Z

    .line 1974
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 1975
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-static {v0}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/bj;)Z

    .line 1976
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 1977
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1979
    :cond_24
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-object v7, v0, Landroid/support/v7/widget/bu;->d:Landroid/support/v4/f/a;

    goto/16 :goto_0

    :cond_25
    move v9, v8

    .line 1969
    goto :goto_15

    :cond_26
    move-object v6, v7

    goto/16 :goto_7
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 2558
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v1

    .line 2559
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2560
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2562
    :cond_0
    return-void
.end method

.method final b(II)V
    .locals 2

    .prologue
    .line 1169
    if-gez p1, :cond_4

    .line 1170
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 1171
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->a(I)Z

    .line 1177
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1178
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1179
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->a(I)Z

    .line 1185
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1186
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;)V

    .line 1188
    :cond_3
    return-void

    .line 1172
    :cond_4
    if-lez p1, :cond_0

    .line 1173
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 1174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/n;->a(I)Z

    goto :goto_0

    .line 1180
    :cond_5
    if-lez p2, :cond_1

    .line 1181
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1182
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/n;->a(I)Z

    goto :goto_1
.end method

.method final c()V
    .locals 5

    .prologue
    .line 2366
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v1

    .line 2367
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_6

    .line 2368
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v2

    .line 2370
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2371
    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->l()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2374
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2367
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2375
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2376
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    iget v3, v2, Landroid/support/v7/widget/bx;->b:I

    .line 2377
    iget v3, v2, Landroid/support/v7/widget/bx;->e:I

    if-nez v3, :cond_5

    .line 2379
    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2380
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    iget v4, v2, Landroid/support/v7/widget/bx;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/bd;->a(Landroid/support/v7/widget/bx;I)V

    goto :goto_1

    .line 2385
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2390
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/bx;->a(I)V

    .line 2391
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2395
    :cond_6
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    .line 2596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v1

    .line 2597
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2598
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2600
    :cond_0
    return-void
.end method

.method final c(II)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2255
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v7

    .line 2257
    if-ge p1, p2, :cond_1

    move v0, v1

    move v3, p2

    move v4, p1

    :goto_0
    move v6, v5

    .line 2267
    :goto_1
    if-ge v6, v7, :cond_3

    .line 2268
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v8

    .line 2269
    if-eqz v8, :cond_0

    iget v9, v8, Landroid/support/v7/widget/bx;->b:I

    if-lt v9, v4, :cond_0

    iget v9, v8, Landroid/support/v7/widget/bx;->b:I

    if-gt v9, v3, :cond_0

    .line 2270
    iget v9, v8, Landroid/support/v7/widget/bx;->b:I

    if-ne v9, p1, :cond_2

    .line 2277
    sub-int v9, p2, p1

    invoke-virtual {v8, v9, v5}, Landroid/support/v7/widget/bx;->a(IZ)V

    .line 2282
    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v2, v8, Landroid/support/v7/widget/bu;->h:Z

    .line 2267
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    move v3, p1

    move v4, p2

    .line 2264
    goto :goto_0

    .line 2279
    :cond_2
    invoke-virtual {v8, v0, v5}, Landroid/support/v7/widget/bx;->a(IZ)V

    goto :goto_2

    .line 2284
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    if-ge p1, p2, :cond_5

    move v2, p2

    move v3, p1

    :goto_3
    iget-object v0, v6, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v5

    :goto_4
    if-ge v4, v7, :cond_7

    iget-object v0, v6, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_4

    iget v8, v0, Landroid/support/v7/widget/bx;->b:I

    if-lt v8, v3, :cond_4

    iget v8, v0, Landroid/support/v7/widget/bx;->b:I

    if-gt v8, v2, :cond_4

    iget v8, v0, Landroid/support/v7/widget/bx;->b:I

    if-ne v8, p1, :cond_6

    sub-int v8, p2, p1

    invoke-virtual {v0, v8, v5}, Landroid/support/v7/widget/bx;->a(IZ)V

    :cond_4
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_5
    move v1, v2

    move v3, p2

    move v2, p1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/bx;->a(IZ)V

    goto :goto_5

    .line 2285
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2286
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2202
    instance-of v0, p1, Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    check-cast p1, Landroid/support/v7/widget/bk;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bk;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->c(Landroid/support/v7/widget/bu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->e(Landroid/support/v7/widget/bu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->d(Landroid/support/v7/widget/bu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->b(Landroid/support/v7/widget/bu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->f(Landroid/support/v7/widget/bu;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2603
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 2604
    iget-boolean v1, v0, Landroid/support/v7/widget/bk;->c:Z

    if-nez v1, :cond_0

    .line 2605
    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 2620
    :goto_0
    return-object v0

    .line 2608
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 2609
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2610
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 2611
    :goto_1
    if-ge v3, v5, :cond_1

    .line 2612
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2613
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bk;

    invoke-virtual {v1}, Landroid/support/v7/widget/bk;->c()I

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2614
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2615
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 2616
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 2617
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 2611
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 2619
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/widget/bk;->c:Z

    move-object v0, v2

    .line 2620
    goto :goto_0
.end method

.method final d(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 2289
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v1}, Landroid/support/v7/widget/o;->b()I

    move-result v2

    move v1, v0

    .line 2290
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2291
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    .line 2292
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->b()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/bx;->b:I

    if-lt v4, p1, :cond_0

    .line 2297
    invoke-virtual {v3, p2, v0}, Landroid/support/v7/widget/bx;->a(IZ)V

    .line 2298
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v5, v3, Landroid/support/v7/widget/bu;->h:Z

    .line 2290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2301
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v1, v2, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v0, v2, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v4

    if-lt v4, p1, :cond_2

    invoke-virtual {v0, p2, v5}, Landroid/support/v7/widget/bx;->a(IZ)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2302
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2303
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    .line 2134
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2135
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    .line 2134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {v0}, Landroid/support/v4/widget/n;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2142
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 2143
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2144
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2145
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v4/widget/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/n;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 2146
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2148
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {v3}, Landroid/support/v4/widget/n;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2150
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v3, :cond_1

    .line 2151
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2153
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v4/widget/n;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/n;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 2154
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2156
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {v3}, Landroid/support/v4/widget/n;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2158
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 2159
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 2160
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2161
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2162
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/n;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/n;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 2163
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2165
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {v3}, Landroid/support/v4/widget/n;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2167
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2168
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v4, :cond_c

    .line 2169
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2173
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/n;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/n;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 2174
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2180
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    invoke-virtual {v1}, Landroid/support/v7/widget/bf;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2185
    :goto_8
    if-eqz v2, :cond_6

    .line 2186
    invoke-static {p0}, Landroid/support/v4/view/ax;->c(Landroid/view/View;)V

    .line 2188
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 2142
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 2145
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 2153
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 2159
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 2162
    goto :goto_6

    .line 2171
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method final e(II)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 2342
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()I

    move-result v3

    .line 2343
    add-int v4, p1, p2

    move v2, v1

    .line 2345
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/o;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2347
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v5

    .line 2348
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/bx;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2349
    iget v6, v5, Landroid/support/v7/widget/bx;->b:I

    if-lt v6, p1, :cond_1

    iget v6, v5, Landroid/support/v7/widget/bx;->b:I

    if-ge v6, v4, :cond_1

    .line 2354
    invoke-virtual {v5, v7}, Landroid/support/v7/widget/bx;->a(I)V

    .line 2355
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2356
    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/bx;->a(I)V

    .line 2359
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/support/v7/widget/bk;->c:Z

    .line 2345
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2362
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v0, v2, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, v2, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v5

    if-lt v5, p1, :cond_3

    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/bx;->a(I)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2363
    :cond_4
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1251
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    .line 1252
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1256
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1257
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v1, :cond_0

    .line 1258
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1259
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/bj;->c(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)Landroid/view/View;

    move-result-object v0

    .line 1260
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1262
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2207
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-nez v0, :cond_0

    .line 2208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2210
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->a()Landroid/support/v7/widget/bk;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2215
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-nez v0, :cond_0

    .line 2216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/bj;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/bk;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-nez v0, :cond_0

    .line 2224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2226
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/bk;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1290
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 1292
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    .line 1296
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Z

    .line 1297
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1301
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1302
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    invoke-virtual {v0}, Landroid/support/v7/widget/bf;->d()V

    .line 1305
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 1307
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1308
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 1309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bo;)V

    .line 1312
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1313
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 2192
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2194
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2195
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2196
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    .line 2195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2198
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    .line 1428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v9, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bl;

    invoke-interface {v0}, Landroid/support/v7/widget/bl;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v5, v9, :cond_3

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 1429
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 1503
    :cond_2
    :goto_2
    return v2

    .line 1428
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    .line 1433
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->c()Z

    move-result v0

    .line 1434
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v4}, Landroid/support/v7/widget/bj;->d()Z

    move-result v4

    .line 1436
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    if-nez v5, :cond_6

    .line 1437
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    .line 1439
    :cond_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1441
    invoke-static {p1}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1442
    invoke-static {p1}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1444
    packed-switch v5, :pswitch_data_0

    .line 1503
    :cond_7
    :goto_3
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-eq v0, v2, :cond_2

    move v2, v3

    goto :goto_2

    .line 1446
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 1447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 1450
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1451
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1452
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    goto :goto_3

    .line 1457
    :pswitch_2
    invoke-static {p1, v6}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 1458
    invoke-static {p1, v6}, Landroid/support/v4/view/ao;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1459
    invoke-static {p1, v6}, Landroid/support/v4/view/ao;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    goto :goto_3

    .line 1463
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    invoke-static {p1, v5}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1464
    if-gez v5, :cond_8

    .line 1465
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1467
    goto/16 :goto_2

    .line 1470
    :cond_8
    invoke-static {p1, v5}, Landroid/support/v4/view/ao;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 1471
    invoke-static {p1, v5}, Landroid/support/v4/view/ao;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 1472
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-eq v7, v2, :cond_7

    .line 1473
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    sub-int/2addr v6, v7

    .line 1474
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    sub-int/2addr v5, v7

    .line 1476
    if-eqz v0, :cond_c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-le v0, v7, :cond_c

    .line 1477
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-gez v6, :cond_a

    move v0, v1

    :goto_4
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    move v0, v2

    .line 1480
    :goto_5
    if-eqz v4, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-le v4, v6, :cond_9

    .line 1481
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-gez v5, :cond_b

    :goto_6
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    move v0, v2

    .line 1484
    :cond_9
    if-eqz v0, :cond_7

    .line 1485
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1486
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 1477
    goto :goto_4

    :cond_b
    move v1, v2

    .line 1481
    goto :goto_6

    .line 1492
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1496
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    .line 1500
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    goto/16 :goto_3

    :cond_c
    move v0, v3

    goto :goto_5

    .line 1444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2106
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 2109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1620
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    if-eqz v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 1622
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 1624
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->k:Z

    if-eqz v0, :cond_1

    .line 1629
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bu;->i:Z

    .line 1635
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    .line 1636
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1639
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    if-eqz v0, :cond_2

    .line 1640
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/bd;

    invoke-virtual {v1}, Landroid/support/v7/widget/bd;->b()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/bu;->e:I

    .line 1645
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bj;->e(II)V

    .line 1646
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v2, v0, Landroid/support/v7/widget/bu;->i:Z

    .line 1647
    return-void

    .line 1632
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->d()V

    .line 1633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput-boolean v2, v0, Landroid/support/v7/widget/bu;->i:Z

    goto :goto_0

    .line 1642
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput v2, v0, Landroid/support/v7/widget/bu;->e:I

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 591
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bj;->a(Landroid/os/Parcelable;)V

    .line 596
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 577
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 578
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 586
    :goto_0
    return-object v0

    .line 580
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->b()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 583
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1651
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1652
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1653
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 1655
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    :cond_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    :goto_0
    if-ge v5, v6, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bl;

    invoke-interface {v0}, Landroid/support/v7/widget/bl;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 1509
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 1596
    :goto_2
    return v2

    .line 1508
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/bl;

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    .line 1513
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->c()Z

    move-result v5

    .line 1514
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->d()Z

    move-result v6

    .line 1516
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1517
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    .line 1519
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1521
    invoke-static {p1}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1522
    invoke-static {p1}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;)I

    move-result v7

    .line 1524
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1526
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 1527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    goto :goto_2

    .line 1532
    :pswitch_2
    invoke-static {p1, v7}, Landroid/support/v4/view/ao;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 1533
    invoke-static {p1, v7}, Landroid/support/v4/view/ao;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1534
    invoke-static {p1, v7}, Landroid/support/v4/view/ao;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    goto :goto_2

    .line 1538
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1539
    if-gez v0, :cond_8

    .line 1540
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1542
    goto/16 :goto_2

    .line 1545
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 1546
    invoke-static {p1, v0}, Landroid/support/v4/view/ao;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v7, v0

    .line 1547
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-eq v0, v2, :cond_a

    .line 1548
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    sub-int v0, v4, v0

    .line 1549
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    sub-int v8, v7, v8

    .line 1551
    if-eqz v5, :cond_19

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-le v9, v10, :cond_19

    .line 1552
    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-gez v0, :cond_c

    move v0, v1

    :goto_3
    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    move v0, v2

    .line 1555
    :goto_4
    if-eqz v6, :cond_9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-le v9, v10, :cond_9

    .line 1556
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    if-gez v8, :cond_d

    :goto_5
    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    move v0, v2

    .line 1559
    :cond_9
    if-eqz v0, :cond_a

    .line 1560
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1561
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 1564
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-ne v0, v2, :cond_b

    .line 1565
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    sub-int v0, v4, v0

    .line 1566
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int v8, v7, v1

    .line 1567
    if-eqz v5, :cond_e

    neg-int v0, v0

    move v1, v0

    :goto_6
    if-eqz v6, :cond_f

    neg-int v0, v8

    :goto_7
    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    .line 1570
    :cond_b
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1571
    iput v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto/16 :goto_2

    :cond_c
    move v0, v2

    .line 1552
    goto :goto_3

    :cond_d
    move v1, v2

    .line 1556
    goto :goto_5

    :cond_e
    move v1, v3

    .line 1567
    goto :goto_6

    :cond_f
    move v0, v3

    goto :goto_7

    .line 1575
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1579
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    int-to-float v7, v7

    invoke-virtual {v0, v1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1580
    if-eqz v5, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    invoke-static {v0, v1}, Landroid/support/v4/view/at;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v5, v0

    .line 1582
    :goto_8
    if-eqz v6, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    invoke-static {v0, v1}, Landroid/support/v4/view/at;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v1, v0

    .line 1584
    :goto_9
    cmpl-float v0, v5, v4

    if-nez v0, :cond_10

    cmpl-float v0, v1, v4

    if-eqz v0, :cond_14

    :cond_10
    float-to-int v0, v5

    float-to-int v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    if-ge v4, v5, :cond_11

    move v0, v3

    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    if-ge v4, v5, :cond_12

    move v1, v3

    :cond_12
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    neg-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    neg-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v0, :cond_13

    if-eqz v1, :cond_18

    :cond_13
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/bw;

    invoke-virtual {v4, v0, v1}, Landroid/support/v7/widget/bw;->a(II)V

    move v0, v2

    :goto_a
    if-nez v0, :cond_15

    .line 1585
    :cond_14
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    .line 1587
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1588
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    goto/16 :goto_2

    :cond_16
    move v5, v4

    .line 1580
    goto :goto_8

    :cond_17
    move v1, v4

    .line 1582
    goto :goto_9

    :cond_18
    move v0, v3

    .line 1584
    goto :goto_a

    .line 1592
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    goto/16 :goto_2

    :cond_19
    move v0, v3

    goto/16 :goto_4

    .line 1524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1267
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    if-eqz p2, :cond_1

    .line 1268
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1269
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1270
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1271
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1273
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1274
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2113
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    .line 2114
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2118
    :goto_0
    return-void

    .line 2116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 837
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    if-nez v1, :cond_0

    .line 838
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->c()Z

    move-result v1

    .line 842
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bj;

    invoke-virtual {v2}, Landroid/support/v7/widget/bj;->d()Z

    move-result v2

    .line 843
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 844
    :cond_1
    if-eqz v1, :cond_3

    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    .line 846
    :cond_2
    return-void

    :cond_3
    move p1, v0

    .line 844
    goto :goto_0

    :cond_4
    move p2, v0

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 831
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eq p1, v0, :cond_0

    .line 427
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 429
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    .line 430
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 431
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 434
    :cond_1
    return-void
.end method
