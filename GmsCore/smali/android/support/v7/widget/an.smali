.class public abstract Landroid/support/v7/widget/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:F

.field private final b:I

.field private final c:I

.field private final d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:Z

.field private i:I

.field private final j:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/an;->j:[I

    .line 1236
    iput-object p1, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    .line 1237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/an;->a:F

    .line 1238
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/an;->b:I

    .line 1240
    iget v0, p0, Landroid/support/v7/widget/an;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/an;->c:I

    .line 1241
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/an;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1406
    iget-object v2, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    .line 1407
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->a()Landroid/support/v7/widget/aj;

    move-result-object v3

    .line 1408
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aj;->b()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v0, v1

    .line 1431
    :cond_1
    :goto_0
    return v0

    .line 1412
    :cond_2
    invoke-static {v3}, Landroid/support/v7/widget/aj;->a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;

    move-result-object v3

    .line 1413
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/widget/am;->isShown()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    .line 1414
    goto :goto_0

    .line 1418
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1419
    iget-object v5, p0, Landroid/support/v7/widget/an;->j:[I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v5, v1

    int-to-float v2, v2

    aget v5, v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1420
    iget-object v2, p0, Landroid/support/v7/widget/an;->j:[I

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v2, v1

    neg-int v5, v5

    int-to-float v5, v5

    aget v2, v2, v0

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v4, v5, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1423
    iget v2, p0, Landroid/support/v7/widget/an;->i:I

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/am;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 1424
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 1427
    invoke-static {p1}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1428
    if-eq v2, v0, :cond_6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    move v2, v0

    .line 1431
    :goto_1
    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v2, v1

    .line 1428
    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/widget/an;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1202
    invoke-direct {p0}, Landroid/support/v7/widget/an;->d()V

    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v8, p0, Landroid/support/v7/widget/an;->g:Z

    iput-boolean v8, p0, Landroid/support/v7/widget/an;->h:Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/support/v7/widget/an;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/an;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1369
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/an;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1370
    iget-object v0, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1372
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/widget/aj;
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 1293
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->a()Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 1294
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1295
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()V

    .line 1297
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/widget/an;->a()Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->a()V

    .line 1311
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1257
    iget-boolean v10, p0, Landroid/support/v7/widget/an;->g:Z

    .line 1259
    if-eqz v10, :cond_5

    .line 1260
    iget-boolean v0, p0, Landroid/support/v7/widget/an;->h:Z

    if-eqz v0, :cond_2

    .line 1264
    invoke-direct {p0, p2}, Landroid/support/v7/widget/an;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1281
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/an;->g:Z

    .line 1282
    if-nez v0, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    move v7, v8

    :cond_1
    return v7

    .line 1266
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/an;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->c()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v8

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0

    .line 1269
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    move v0, v7

    :goto_2
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/an;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    move v9, v8

    .line 1271
    :goto_3
    if-eqz v9, :cond_7

    .line 1273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1274
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Landroid/support/v7/widget/an;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1277
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    move v0, v9

    goto :goto_0

    .line 1269
    :pswitch_0
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/an;->i:I

    iput-boolean v7, p0, Landroid/support/v7/widget/an;->h:Z

    iget-object v0, p0, Landroid/support/v7/widget/an;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-direct {v0, p0, v7}, Landroid/support/v7/widget/ao;-><init>(Landroid/support/v7/widget/an;B)V

    iput-object v0, p0, Landroid/support/v7/widget/an;->e:Ljava/lang/Runnable;

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/an;->e:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v7/widget/an;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/support/v7/widget/an;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0, p0, v7}, Landroid/support/v7/widget/ap;-><init>(Landroid/support/v7/widget/an;B)V

    iput-object v0, p0, Landroid/support/v7/widget/an;->f:Ljava/lang/Runnable;

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/an;->f:Ljava/lang/Runnable;

    iget v2, p0, Landroid/support/v7/widget/an;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    iget v0, p0, Landroid/support/v7/widget/an;->i:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/an;->a:F

    neg-float v4, v3

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_a

    neg-float v4, v3

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    move v0, v8

    :goto_4
    if-nez v0, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/an;->d()V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v8

    goto/16 :goto_2

    :cond_a
    move v0, v7

    goto :goto_4

    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/an;->d()V

    goto/16 :goto_1

    :cond_b
    move v9, v7

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
