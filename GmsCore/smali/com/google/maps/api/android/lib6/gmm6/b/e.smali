.class public final Lcom/google/maps/api/android/lib6/gmm6/b/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/gmm6/b/i;


# direct methods
.method public constructor <init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;)V
    .locals 9

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v8, v7

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;II)V

    return-void
.end method

.method public constructor <init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;II)V
    .locals 11

    const/high16 v9, 0x10000

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/b/i;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/b/c;

    long-to-float v4, p1

    add-long v6, p1, p3

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/b/c;-><init>(F)V

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/b/i;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    add-long v4, p1, p3

    invoke-virtual {v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->setDuration(J)V

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/b/f;->a:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/maps/api/android/lib6/gmm6/b/g;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2, v8}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2, v9}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2, v9}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2, v8}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/b/g;)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(JJLcom/google/maps/api/android/lib6/gmm6/b/g;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->e()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->hasStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->start()V

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b()V

    :cond_1
    return v0
.end method
