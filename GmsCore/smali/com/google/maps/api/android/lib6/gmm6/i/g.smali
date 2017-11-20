.class public final Lcom/google/maps/api/android/lib6/gmm6/i/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/i/n;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/gmm6/i/m;)V
    .locals 1

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;

    invoke-direct {v0, p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/i/k;-><init>(Landroid/content/Context;Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 12

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v5, v1, 0x8

    iget-boolean v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    if-nez v1, :cond_14

    const/4 v1, 0x5

    if-eq v3, v1, :cond_0

    const/16 v1, 0x105

    if-eq v3, v1, :cond_0

    if-nez v3, :cond_9

    :cond_0
    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v5, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->v:F

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->w:F

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->v:F

    sub-float/2addr v1, v3

    iput v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->x:F

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b(Landroid/view/MotionEvent;)V

    iget v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->v:F

    iget v5, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->w:F

    iget v6, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v8}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {p1, v9}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b(Landroid/view/MotionEvent;I)F

    move-result v9

    cmpg-float v10, v3, v1

    if-ltz v10, :cond_1

    cmpg-float v10, v7, v1

    if-ltz v10, :cond_1

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_1

    cmpl-float v3, v7, v6

    if-lez v3, :cond_4

    :cond_1
    move v3, v2

    :goto_0
    cmpg-float v7, v8, v1

    if-ltz v7, :cond_2

    cmpg-float v1, v9, v1

    if-ltz v1, :cond_2

    cmpl-float v1, v8, v5

    if-gtz v1, :cond_2

    cmpl-float v1, v9, v6

    if-lez v1, :cond_5

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    iput v11, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    iput v11, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    iput-boolean v2, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    :cond_3
    :goto_2
    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->B:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->a(Landroid/view/MotionEvent;)Z

    return v2

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    iput-boolean v2, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    iput-boolean v2, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    goto :goto_2

    :cond_8
    iput-boolean v2, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    goto :goto_2

    :cond_9
    const/4 v1, 0x2

    if-ne v3, v1, :cond_11

    iget-boolean v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    if-eqz v1, :cond_11

    iget v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->v:F

    iget v5, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->w:F

    iget v6, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v8}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {p1, v9}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b(Landroid/view/MotionEvent;I)F

    move-result v9

    cmpg-float v10, v3, v1

    if-ltz v10, :cond_a

    cmpg-float v10, v7, v1

    if-ltz v10, :cond_a

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_a

    cmpl-float v3, v7, v6

    if-lez v3, :cond_c

    :cond_a
    move v3, v2

    :goto_3
    cmpg-float v7, v8, v1

    if-ltz v7, :cond_b

    cmpg-float v1, v9, v1

    if-ltz v1, :cond_b

    cmpl-float v1, v8, v5

    if-gtz v1, :cond_b

    cmpl-float v1, v9, v6

    if-lez v1, :cond_d

    :cond_b
    move v1, v2

    :goto_4
    if-eqz v3, :cond_e

    if-eqz v1, :cond_e

    iput v11, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    iput v11, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    goto/16 :goto_2

    :cond_c
    move v3, v0

    goto :goto_3

    :cond_d
    move v1, v0

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    goto/16 :goto_2

    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    goto/16 :goto_2

    :cond_10
    iput-boolean v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    iput-boolean v2, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x6

    if-eq v3, v1, :cond_12

    const/16 v1, 0x106

    if-eq v3, v1, :cond_12

    if-ne v3, v2, :cond_3

    :cond_12
    iget-boolean v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    if-eqz v1, :cond_3

    if-nez v5, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    goto/16 :goto_2

    :cond_14
    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_5
    if-nez v1, :cond_16

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_15
    move v1, v0

    goto :goto_5

    :cond_16
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b(Landroid/view/MotionEvent;)V

    if-nez v5, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    iget-boolean v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    if-nez v0, :cond_18

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a()V

    :cond_18
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b()V

    goto/16 :goto_2

    :sswitch_1
    iget-boolean v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    if-nez v0, :cond_19

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a()V

    :cond_19
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b()V

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b(Landroid/view/MotionEvent;)V

    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Landroid/view/MotionEvent;)V

    iget v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->t:F

    iget v3, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->u:F

    div-float/2addr v1, v3

    const v3, 0x3f2b851f    # 0.67f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->e(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_1a
    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
        0x106 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/d;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/u;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/i/k;Z)Z
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/d;

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/d;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->c:Z

    :cond_0
    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/i/k;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/i/c;

    invoke-direct {v2, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/q;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->c:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/d;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/u;)Z

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/i/k;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/q;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/c;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/q;)Z

    goto :goto_0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/b;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z

    move-result v0

    return v0
.end method

.method public final e(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/b;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z

    move-result v0

    return v0
.end method

.method public final f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/b;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z

    return-void
.end method

.method public final g(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/s;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/s;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z

    move-result v0

    return v0
.end method

.method public final h(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/s;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/s;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z

    move-result v0

    return v0
.end method

.method public final i(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/s;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/s;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->a(Lcom/google/maps/api/android/lib6/gmm6/i/o;)Z

    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/g;->a:Lcom/google/maps/api/android/lib6/gmm6/i/m;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/m;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
