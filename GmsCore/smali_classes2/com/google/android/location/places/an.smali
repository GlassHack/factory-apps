.class final Lcom/google/android/location/places/an;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/places/ai;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/google/android/location/places/ai;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 499
    iput-object p2, p0, Lcom/google/android/location/places/an;->a:Lcom/google/android/location/places/ai;

    .line 500
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide v12, 0x416312d000000000L    # 1.0E7

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 510
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/location/Location;

    .line 507
    iget-object v9, p0, Lcom/google/android/location/places/an;->a:Lcom/google/android/location/places/ai;

    invoke-static {v8}, Lcom/google/android/location/o/w;->g(Landroid/location/Location;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/location/reporting/a/i;

    iget-boolean v0, v1, Lcom/google/android/location/reporting/a/i;->c:Z

    if-eqz v0, :cond_0

    iget v3, v1, Lcom/google/android/location/reporting/a/i;->d:I

    :goto_2
    new-instance v0, Lcom/google/android/location/f/bb;

    iget-wide v1, v1, Lcom/google/android/location/reporting/a/i;->b:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/f/bb;-><init>(JILjava/lang/String;SJ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/16 v3, -0x64

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/location/f/bh;

    invoke-direct {v0, v6, v7, v10}, Lcom/google/android/location/f/bh;-><init>(JLjava/util/ArrayList;)V

    iget-object v1, v9, Lcom/google/android/location/places/ai;->e:Lcom/google/android/location/places/x;

    invoke-virtual {v1, v0}, Lcom/google/android/location/places/x;->a(Lcom/google/android/location/f/bh;)V

    :goto_3
    new-instance v0, Lcom/google/android/location/f/ak;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v12

    double-to-int v1, v2

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v12

    double-to-int v2, v2

    invoke-virtual {v8}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/f/ak;-><init>(III)V

    iget-object v1, v9, Lcom/google/android/location/places/ai;->e:Lcom/google/android/location/places/x;

    invoke-virtual {v1, v0}, Lcom/google/android/location/places/x;->a(Lcom/google/android/location/f/ak;)V

    goto :goto_0

    :cond_2
    iget-object v0, v9, Lcom/google/android/location/places/ai;->e:Lcom/google/android/location/places/x;

    invoke-virtual {v0, v4}, Lcom/google/android/location/places/x;->a(Lcom/google/android/location/f/bh;)V

    goto :goto_3

    .line 504
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
