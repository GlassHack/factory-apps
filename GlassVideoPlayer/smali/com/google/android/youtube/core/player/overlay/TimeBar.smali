.class public Lcom/google/android/youtube/core/player/overlay/TimeBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private final d:Lcom/google/android/youtube/core/player/overlay/s;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/drawable/StateListDrawable;

.field private final m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a:[I

    .line 32
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->b:[I

    .line 33
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c:[I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/overlay/s;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/s;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d:Lcom/google/android/youtube/core/player/overlay/s;

    .line 71
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->r:Z

    .line 72
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->s:Z

    .line 73
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->t:Z

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->h:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->h:Landroid/graphics/Paint;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->i:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->j:Landroid/graphics/Paint;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 86
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v0, v2

    .line 87
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    .line 88
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    const-string v2, "0:00:00"

    const/4 v3, 0x0

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 94
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->y:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/youtube/R$drawable;->scrubber:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/google/android/youtube/core/player/overlay/TimeBar;->b:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 98
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->m:I

    .line 99
    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 333
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 334
    rem-int/lit8 v1, v0, 0x3c

    .line 335
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 336
    div-int/lit16 v0, v0, 0xe10

    .line 338
    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    const v4, 0x36ee80

    if-lt v3, v4, :cond_0

    .line 339
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 207
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 208
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    .line 209
    float-to-int v3, p1

    sub-int v0, v3, v0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    .line 210
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    .line 211
    return-void
.end method

.method private a(FF)Z
    .locals 4

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->o:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 200
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 201
    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->o:I

    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->m:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    .line 202
    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->m:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 201
    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->w:I

    .line 106
    :goto_0
    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    if-lez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->x:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 108
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    .line 109
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-long v3, v3

    iget v5, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->v:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget v5, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 108
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 110
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 111
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    .line 117
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->invalidate()V

    .line 118
    return-void

    .line 105
    :cond_0
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->v:I

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->p:Z

    .line 122
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->p:Z

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f()V

    .line 124
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 129
    :goto_1
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_1

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->p:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a:[I

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->b:[I

    goto :goto_2
.end method

.method private e()I
    .locals 4

    .prologue
    .line 214
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 215
    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    int-to-long v2, v2

    .line 214
    mul-long/2addr v0, v2

    .line 215
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    .line 214
    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    .line 328
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d()V

    .line 329
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->invalidate()V

    .line 330
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 249
    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V

    .line 250
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 254
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->t:Z

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 260
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->s:Z

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    .line 262
    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    .line 263
    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->o:I

    .line 264
    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->n:I

    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 265
    iget v4, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->o:I

    iget-object v5, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 261
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 266
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->r:Z

    if-eqz v0, :cond_2

    .line 271
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->w:I

    :goto_0
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 273
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 274
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    .line 270
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->y:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 278
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 279
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->k:Landroid/graphics/Paint;

    .line 275
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    :cond_2
    return-void

    .line 271
    :cond_3
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->v:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a()I

    move-result v0

    .line 230
    :goto_0
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getDefaultSize(II)I

    move-result v2

    .line 231
    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->resolveSize(II)I

    move-result v0

    .line 232
    invoke-virtual {p0, v2, v0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setMeasuredDimension(II)V

    .line 234
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->r:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->s:Z

    if-nez v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    :goto_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 245
    return-void

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 238
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->z:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->m:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->o:I

    .line 239
    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->o:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 240
    iget-object v3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int v0, v2, v0

    add-int/lit8 v2, v1, 0x4

    .line 240
    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 286
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->p:Z

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 323
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 292
    :pswitch_0
    int-to-float v3, v1

    int-to-float v2, v2

    invoke-direct {p0, v3, v2}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    .line 294
    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a(F)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->w:I

    .line 296
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d:Lcom/google/android/youtube/core/player/overlay/s;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/overlay/s;->d()V

    .line 297
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 299
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->invalidate()V

    goto :goto_0

    .line 304
    :pswitch_1
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v2, :cond_0

    .line 305
    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a(F)V

    .line 306
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->w:I

    .line 307
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->invalidate()V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->f()V

    .line 316
    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->w:I

    iput v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->v:I

    .line 317
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d:Lcom/google/android/youtube/core/player/overlay/s;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/overlay/s;->a(I)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBufferedPercent(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->x:I

    .line 167
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 168
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d()V

    .line 135
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 140
    return-void
.end method

.method public setScrubberTime(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->w:I

    .line 186
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 187
    return-void
.end method

.method public setScrubbing(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    .line 191
    return-void
.end method

.method public setShowBuffered(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->t:Z

    .line 181
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 182
    return-void
.end method

.method public setShowScrubber(Z)V
    .locals 2

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->s:Z

    .line 172
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d:Lcom/google/android/youtube/core/player/overlay/s;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->e()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/s;->a(I)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->q:Z

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->requestLayout()V

    .line 177
    return-void
.end method

.method public setShowTimes(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->r:Z

    .line 158
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->requestLayout()V

    .line 159
    return-void
.end method

.method public setTime(III)V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->v:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    if-ne v0, p2, :cond_0

    .line 144
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->x:I

    if-eq v0, p3, :cond_2

    .line 145
    :cond_0
    iget v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    if-eq v0, p2, :cond_1

    .line 146
    iput p2, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->u:I

    .line 147
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->y:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->d()V

    .line 150
    :cond_1
    iput p1, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->v:I

    .line 151
    iput p3, p0, Lcom/google/android/youtube/core/player/overlay/TimeBar;->x:I

    .line 152
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->c()V

    .line 154
    :cond_2
    return-void
.end method
