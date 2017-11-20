.class public final Lcom/google/maps/api/android/lib6/gmm6/i/k;
.super Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Lcom/google/maps/api/android/lib6/gmm6/i/h;

.field private final C:Ljava/util/List;

.field private final D:Lcom/google/maps/api/android/lib6/gmm6/i/e;

.field private final E:Ljava/util/LinkedList;

.field private F:J

.field private G:F

.field private H:Z

.field a:Landroid/content/Context;

.field b:Landroid/view/MotionEvent;

.field c:Landroid/view/MotionEvent;

.field final d:Ljava/util/List;

.field final e:Lcom/google/maps/api/android/lib6/gmm6/i/e;

.field final f:Lcom/google/maps/api/android/lib6/gmm6/i/e;

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:F

.field q:F

.field r:F

.field s:F

.field t:F

.field u:F

.field v:F

.field w:F

.field x:F

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/maps/api/android/lib6/gmm6/i/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->v:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/v;

    invoke-direct {v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/v;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->f:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/p;

    invoke-direct {v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->D:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MD"

    const-string v1, "T"

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/r;

    invoke-direct {v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->e:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/x;

    invoke-direct {v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-direct {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/h;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->B:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->B:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->B:Lcom/google/maps/api/android/lib6/gmm6/i/h;

    invoke-virtual {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/h;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/i/t;

    invoke-direct {v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/t;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->D:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MD"

    const-string v1, "F"

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/view/MotionEvent;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method static a(Lcom/google/maps/api/android/lib6/gmm6/i/e;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/view/MotionEvent;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->c(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->F:J

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/i/a;

    invoke-direct {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/a;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->e()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/16 v8, 0xfa

    cmp-long v0, v2, v8

    if-ltz v0, :cond_2

    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->e()V

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    sparse-switch v1, :sswitch_data_0

    :goto_2
    move v5, v7

    :sswitch_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/i/e;

    iget-boolean v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    if-nez v2, :cond_4

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/i/l;->a:[I

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->F:J

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a(JLjava/util/LinkedList;ZLjava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/i/f;->ordinal()I

    move-result v2

    aget v2, v8, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :cond_5
    :pswitch_1
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a()V

    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    :cond_6
    return-void

    :sswitch_1
    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
        0x106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final b()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->y:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->A:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->E:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/e;

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->c(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method final b(Landroid/view/MotionEvent;)V
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->n:F

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->o:F

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->r:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->s:F

    iput-boolean v9, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->z:Z

    iput-boolean v9, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->H:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v3, v1

    sub-float/2addr v4, v2

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->j:F

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->k:F

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->l:F

    iput v8, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->m:F

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->p:F

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->q:F

    mul-float v2, v7, v10

    add-float/2addr v2, v5

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    mul-float v2, v8, v10

    add-float/2addr v2, v6

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    mul-float v2, v3, v10

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->t:F

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->u:F

    return-void
.end method

.method public final c()F
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->D:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Lcom/google/maps/api/android/lib6/gmm6/i/e;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->H:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->a(FFFF)F

    move-result v1

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->G:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->H:Z

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->G:F

    goto :goto_0
.end method
