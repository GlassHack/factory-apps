.class public final Lcom/google/android/location/p;
.super Lcom/google/android/location/a;
.source "SourceFile"


# static fields
.field public static i:Z


# instance fields
.field public A:Lcom/google/android/location/os/ah;

.field B:Z

.field C:Lcom/google/android/location/m;

.field D:J

.field private E:J

.field private F:J

.field j:J

.field public k:J

.field l:Lcom/google/android/location/os/ah;

.field m:J

.field n:I

.field o:Z

.field p:Z

.field q:Z

.field r:Lcom/google/android/location/f/g;

.field s:Lcom/google/android/location/f/bh;

.field public t:Lcom/google/android/location/r;

.field u:Lcom/google/g/a/b/b/a;

.field v:Z

.field w:J

.field x:Z

.field y:J

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/p;->i:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/activity/k;)V
    .locals 8

    .prologue
    .line 183
    const-string v1, "BurstCollector"

    sget-object v7, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 96
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/location/p;->E:J

    .line 99
    const-wide/32 v0, 0x75300

    iput-wide v0, p0, Lcom/google/android/location/p;->F:J

    .line 104
    const-wide/32 v0, 0x222e0

    iput-wide v0, p0, Lcom/google/android/location/p;->j:J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/p;->k:J

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/p;->m:J

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/p;->n:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->o:Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->p:Z

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->q:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p;->r:Lcom/google/android/location/f/g;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p;->s:Lcom/google/android/location/f/bh;

    .line 137
    new-instance v0, Lcom/google/android/location/r;

    invoke-direct {v0}, Lcom/google/android/location/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->v:Z

    .line 152
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/p;->w:J

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->x:Z

    .line 161
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/p;->y:J

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->z:Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p;->A:Lcom/google/android/location/os/ah;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->B:Z

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/p;->D:J

    .line 184
    new-instance v0, Lcom/google/android/location/m;

    iget-object v1, p2, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-direct {v0, p1, p3, v1, p6}, Lcom/google/android/location/m;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/l/a;Lcom/google/android/location/f/ag;Lcom/google/android/location/activity/k;)V

    iput-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    .line 186
    return-void
.end method

.method private h(J)Z
    .locals 7

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/location/p;->p:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/location/p;->F:J

    .line 191
    :goto_0
    iget-wide v2, p0, Lcom/google/android/location/p;->m:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/location/p;->m:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 189
    :cond_1
    iget-wide v0, p0, Lcom/google/android/location/p;->E:J

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/google/android/location/p;->x:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/p;->x:Z

    .line 399
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    .line 401
    :cond_0
    return-void
.end method

.method private i(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/google/android/location/p;->f:Z

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    sget-object v0, Lcom/google/android/location/q;->a:[I

    iget-object v3, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    invoke-virtual {v3}, Lcom/google/android/location/e;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v1

    .line 414
    goto :goto_0

    .line 418
    :pswitch_1
    iget-wide v4, p0, Lcom/google/android/location/p;->y:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/location/p;->y:J

    sub-long v4, p1, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    .line 419
    :goto_1
    iget-wide v4, p0, Lcom/google/android/location/p;->k:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/google/android/location/p;->j:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_8

    move v3, v1

    .line 420
    :goto_2
    iget-object v4, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-eqz v3, :cond_9

    .line 421
    :cond_2
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v5, "gpsTimeout: %s, burstTimeout: %s."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 418
    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    invoke-virtual {v0}, Lcom/google/android/location/r;->a()Lcom/google/android/location/os/ah;

    move-result-object v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v3, "Invalid state in GPS time out. Returning false."

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x55f0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v3, v2

    .line 419
    goto :goto_2

    .line 427
    :cond_9
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/location/p;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/p;->o:Z

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j(J)V
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->f:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_2

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/p;->A:Lcom/google/android/location/os/ah;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/google/android/location/p;->A:Lcom/google/android/location/os/ah;

    iget-object v1, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/google/android/location/p;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget v0, p0, Lcom/google/android/location/p;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/p;->n:I

    .line 473
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/google/android/location/p;->m:J

    .line 476
    :cond_2
    iput-object v4, p0, Lcom/google/android/location/p;->A:Lcom/google/android/location/os/ah;

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/p;->k:J

    .line 478
    sget-object v0, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    .line 479
    iput-object v4, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    .line 480
    iput-boolean v3, p0, Lcom/google/android/location/p;->B:Z

    .line 481
    iput-wide v6, p0, Lcom/google/android/location/p;->D:J

    .line 482
    iput-wide v6, p0, Lcom/google/android/location/p;->y:J

    .line 483
    iput-boolean v3, p0, Lcom/google/android/location/p;->z:Z

    .line 484
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 485
    return-void

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/p;->A:Lcom/google/android/location/os/ah;

    iput-object v0, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/p;->n:I

    goto :goto_0
.end method


# virtual methods
.method final a(IIZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 574
    invoke-static {p1, p2}, Lcom/google/android/location/p/h;->a(II)F

    move-result v3

    .line 575
    cmpl-float v0, v3, v8

    if-ltz v0, :cond_1

    .line 576
    if-nez p3, :cond_0

    float-to-double v4, v3

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/p;->o:Z

    .line 577
    if-eqz p3, :cond_6

    float-to-double v4, v3

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_6

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/location/p;->p:Z

    .line 579
    :cond_1
    iput-boolean p3, p0, Lcom/google/android/location/p;->q:Z

    .line 580
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    invoke-static {p1, p2}, Lcom/google/android/location/p/h;->a(II)F

    move-result v3

    cmpl-float v4, v3, v8

    if-ltz v4, :cond_4

    if-eqz p3, :cond_2

    float-to-double v4, v3

    const-wide v6, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpl-double v4, v4, v6

    if-gez v4, :cond_3

    :cond_2
    if-nez p3, :cond_7

    float-to-double v4, v3

    const-wide v6, 0x3fe3333340000000L    # 0.6000000238418579

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_7

    :cond_3
    :goto_2
    iput-boolean v2, v0, Lcom/google/android/location/m;->e:Z

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/location/m;->a()V

    .line 581
    return-void

    :cond_5
    move v0, v1

    .line 576
    goto :goto_0

    :cond_6
    move v0, v1

    .line 577
    goto :goto_1

    :cond_7
    move v2, v1

    .line 580
    goto :goto_2
.end method

.method final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 3

    .prologue
    .line 604
    invoke-super {p0, p1}, Lcom/google/android/location/a;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 605
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    iget-object v1, v0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v2, Lcom/google/android/location/o;->b:Lcom/google/android/location/o;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v2, Lcom/google/android/location/o;->c:Lcom/google/android/location/o;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v2, Lcom/google/android/location/o;->d:Lcom/google/android/location/o;

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/m;->j:I

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "BurstCollectionTrigger"

    const-string v2, "IN_CAR detected!"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/location/m;->i:Z

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/location/m;->a()V

    .line 606
    :cond_3
    return-void
.end method

.method final a(Lcom/google/android/location/f/ag;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x3e8

    .line 591
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Idle time collection: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/google/android/location/p;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/p;->c:Lcom/google/android/location/b/w;

    iget-object v0, v0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    invoke-virtual {v0}, Lcom/google/android/location/m;->b()V

    .line 594
    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->m()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/location/p;->E:J

    .line 595
    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->n()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/location/p;->F:J

    .line 596
    invoke-virtual {p1}, Lcom/google/android/location/f/ag;->o()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/location/p;->j:J

    .line 597
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v3, "Burst collector params: minIdleTimeOnBattery=%d, minIdleTimeOnExtPower=%d, maxBurstTime=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/location/p;->E:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-wide v6, p0, Lcom/google/android/location/p;->F:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget-wide v6, p0, Lcom/google/android/location/p;->j:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 591
    goto :goto_0
.end method

.method final a(Lcom/google/android/location/f/bh;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/android/location/p;->s:Lcom/google/android/location/f/bh;

    .line 565
    return-void
.end method

.method final a(Lcom/google/android/location/f/g;)V
    .locals 1

    .prologue
    .line 499
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/location/f/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iput-object p1, p0, Lcom/google/android/location/p;->r:Lcom/google/android/location/f/g;

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p;->r:Lcom/google/android/location/f/g;

    goto :goto_0
.end method

.method final a(Lcom/google/android/location/k/k;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/location/m;->a()V

    .line 495
    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/location/os/ah;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 513
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/p;->c:Lcom/google/android/location/b/w;

    iget-object v0, v0, Lcom/google/android/location/b/w;->c:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/google/android/location/p;->i:Z

    if-eqz v0, :cond_7

    move v0, v2

    .line 521
    :goto_1
    if-eqz v0, :cond_8

    move v0, v2

    .line 523
    :goto_2
    iget-object v1, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    sget-object v4, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-ne v1, v4, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_0

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    const/16 v1, 0x19

    invoke-static {v0, p1, v1}, Lcom/google/android/location/p;->a(Lcom/google/android/location/os/ah;Lcom/google/android/location/os/ah;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/location/p;->n:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 531
    :cond_4
    iget-object v4, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    if-eqz p1, :cond_6

    iget-object v0, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, v2, :cond_9

    iget-object v0, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "BurstCollector"

    const-string v1, "Added location@ %d to buffer."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    iget-object v0, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, v4, Lcom/google/android/location/r;->e:I

    if-le v0, v1, :cond_6

    invoke-virtual {v4, v3}, Lcom/google/android/location/r;->a(I)V

    .line 532
    :cond_6
    iput-boolean v2, p0, Lcom/google/android/location/p;->B:Z

    .line 535
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/p;->y:J

    goto :goto_0

    :cond_7
    move v0, v3

    .line 519
    goto :goto_1

    .line 521
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/p;->h(J)Z

    move-result v0

    goto :goto_2

    .line 531
    :cond_9
    iget-object v0, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    iget-object v0, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/ah;

    iget-object v1, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    add-int/lit8 v6, v5, -0x2

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/os/ah;

    invoke-interface {v0}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v6

    invoke-interface {v1}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long v10, v6, v8

    iget v1, v4, Lcom/google/android/location/r;->f:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-long v12, v1

    cmp-long v1, v10, v12

    if-lez v1, :cond_a

    iget v1, v4, Lcom/google/android/location/r;->g:I

    int-to-long v10, v1

    cmp-long v1, v6, v10

    if-ltz v1, :cond_b

    iget v1, v4, Lcom/google/android/location/r;->g:I

    int-to-long v6, v1

    cmp-long v1, v8, v6

    if-ltz v1, :cond_b

    :cond_a
    iget-object v1, v4, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v4, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v4, v0}, Lcom/google/android/location/r;->a(I)V

    :cond_b
    iget-object v0, v4, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    const-string v0, "BurstCollector"

    const-string v1, "Added location@ %d to buffer."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0, p1, p2}, Lcom/google/android/location/a;->a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->b:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/p;->D:J

    .line 549
    :goto_0
    return-void

    .line 545
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v1, "Ignoring active burst collection because passive burst collector is running."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    invoke-virtual {v0}, Lcom/google/android/location/m;->c()V

    goto :goto_0
.end method

.method final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    .line 509
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method final b(Z)V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    iput-boolean p1, v0, Lcom/google/android/location/m;->d:Z

    invoke-virtual {v0}, Lcom/google/android/location/m;->a()V

    .line 554
    return-void
.end method

.method protected final b(J)Z
    .locals 13

    .prologue
    const-wide/32 v10, 0xea60

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 207
    .line 210
    iget-object v2, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    invoke-virtual {v2}, Lcom/google/android/location/r;->a()Lcom/google/android/location/os/ah;

    move-result-object v6

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/p;->i(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-wide v2, p0, Lcom/google/android/location/p;->D:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/location/p;->D:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v10

    if-gtz v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 216
    iput-wide v4, p0, Lcom/google/android/location/p;->D:J

    .line 220
    iget-object v2, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    iget-object v3, v2, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v6, Lcom/google/android/location/o;->d:Lcom/google/android/location/o;

    if-ne v3, v6, :cond_4

    iget-object v3, v2, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v1, v2, Lcom/google/android/location/m;->h:Z

    invoke-virtual {v2}, Lcom/google/android/location/m;->a()V

    move v2, v1

    .line 221
    :goto_1
    if-eqz v2, :cond_5

    .line 222
    iput-wide p1, p0, Lcom/google/android/location/p;->y:J

    .line 223
    iput-boolean v1, p0, Lcom/google/android/location/p;->z:Z

    move v0, v1

    .line 237
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 238
    sget-object v1, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    iput-object v1, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    .line 239
    iput-wide p1, p0, Lcom/google/android/location/p;->k:J

    .line 245
    :cond_1
    iget-wide v2, p0, Lcom/google/android/location/p;->D:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/location/p;->D:J

    sub-long v2, p1, v2

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    if-nez v0, :cond_2

    .line 248
    iput-wide v4, p0, Lcom/google/android/location/p;->D:J

    .line 249
    iget-object v1, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    invoke-virtual {v1}, Lcom/google/android/location/m;->c()V

    .line 251
    :cond_2
    return v0

    :cond_3
    move v2, v0

    .line 215
    goto :goto_0

    :cond_4
    move v2, v0

    .line 220
    goto :goto_1

    .line 226
    :cond_5
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v2, "Unable to turn on GPS due to bad device conditions."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    invoke-virtual {v1}, Lcom/google/android/location/m;->c()V

    goto :goto_2

    .line 230
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/p;->h(J)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v6, :cond_a

    invoke-interface {v6}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v8, 0x7530

    cmp-long v2, v2, v8

    if-gez v2, :cond_a

    invoke-interface {v6}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v8

    iget-object v2, p0, Lcom/google/android/location/p;->g:Lcom/google/android/location/d;

    iget-object v3, v2, Lcom/google/android/location/d;->a:Lcom/google/android/location/os/ah;

    if-nez v3, :cond_9

    move-wide v2, v4

    :goto_3
    cmp-long v2, v8, v2

    if-lez v2, :cond_a

    move v2, v1

    :goto_4
    if-eqz v2, :cond_0

    .line 232
    iput-wide v4, p0, Lcom/google/android/location/p;->y:J

    .line 233
    iput-boolean v0, p0, Lcom/google/android/location/p;->z:Z

    .line 234
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v3, "Started a new burst at %d with location at %d."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-interface {v6}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v0, v1

    goto/16 :goto_2

    .line 230
    :cond_9
    iget-object v2, v2, Lcom/google/android/location/d;->a:Lcom/google/android/location/os/ah;

    invoke-interface {v2}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v2

    goto :goto_3

    :cond_a
    move v2, v0

    goto :goto_4
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/google/android/location/p;->v:Z

    .line 586
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    iput-boolean p1, v0, Lcom/google/android/location/m;->c:Z

    invoke-virtual {v0}, Lcom/google/android/location/m;->a()V

    .line 587
    return-void
.end method

.method protected final c(J)Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 292
    .line 294
    iget-object v0, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    invoke-virtual {v0}, Lcom/google/android/location/r;->a()Lcom/google/android/location/os/ah;

    move-result-object v10

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/p;->i(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    invoke-virtual {v0}, Lcom/google/android/location/m;->c()V

    .line 302
    iget-object v0, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    iget-boolean v1, p0, Lcom/google/android/location/p;->z:Z

    iget-object v2, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/p;->k:J

    iget-boolean v6, p0, Lcom/google/android/location/p;->q:Z

    iget-object v7, p0, Lcom/google/android/location/p;->l:Lcom/google/android/location/os/ah;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/r;->a(ZJJZLcom/google/android/location/os/ah;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    iget-object v0, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/p;->d:Lcom/google/android/location/bd;

    iget-object v1, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    iget-object v2, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/bd;->a(Lcom/google/android/location/os/at;Lcom/google/g/a/b/b/a;)V

    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->B()Lcom/google/android/location/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    iget-object v2, p0, Lcom/google/android/location/p;->e:Lcom/google/android/location/l/a;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/a;)V

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v1, "Sent %d locations."

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    iget-object v3, v3, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/location/e;->f:Lcom/google/android/location/e;

    iput-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1, v11}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    iput-boolean v8, p0, Lcom/google/android/location/p;->x:Z

    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/p;->w:J

    iget-object v0, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    invoke-virtual {v0}, Lcom/google/android/location/r;->a()Lcom/google/android/location/os/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/p;->A:Lcom/google/android/location/os/ah;

    move v0, v8

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    iget-object v2, v1, Lcom/google/android/location/r;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, v1, Lcom/google/android/location/r;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lcom/google/android/location/r;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/location/r;->d:J

    .line 303
    if-nez v0, :cond_1

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/p;->j(J)V

    .line 305
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v1, "Burst terminated early."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/p;->h:Lcom/google/android/location/e;

    sget-object v1, Lcom/google/android/location/e;->c:Lcom/google/android/location/e;

    if-ne v0, v1, :cond_2

    .line 320
    iget-wide v0, p0, Lcom/google/android/location/p;->y:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    invoke-interface {v10}, Lcom/google/android/location/os/ah;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x55f0

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3, v11}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 330
    :cond_2
    :goto_2
    iput-boolean v9, p0, Lcom/google/android/location/p;->B:Z

    .line 331
    return v8

    .line 308
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/location/p;->B:Z

    if-eqz v0, :cond_4

    .line 311
    iget-object v1, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    iget-object v0, p0, Lcom/google/android/location/p;->t:Lcom/google/android/location/r;

    invoke-virtual {v0}, Lcom/google/android/location/r;->a()Lcom/google/android/location/os/ah;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/p;->g:Lcom/google/android/location/d;

    iget-object v6, p0, Lcom/google/android/location/p;->r:Lcom/google/android/location/f/g;

    iget-object v7, p0, Lcom/google/android/location/p;->s:Lcom/google/android/location/f/bh;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/r;->a(JLcom/google/android/location/os/ah;Lcom/google/android/location/d;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;)Z

    move-result v0

    .line 313
    if-eqz v0, :cond_4

    .line 315
    iput-object v11, p0, Lcom/google/android/location/p;->s:Lcom/google/android/location/f/bh;

    :cond_4
    move v8, v9

    goto :goto_1

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/p;->y:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3, v11}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_0
.end method

.method final f()V
    .locals 2

    .prologue
    .line 558
    invoke-super {p0}, Lcom/google/android/location/a;->f()V

    .line 559
    iget-object v0, p0, Lcom/google/android/location/p;->C:Lcom/google/android/location/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/location/m;->f:Z

    invoke-virtual {v0}, Lcom/google/android/location/m;->a()V

    .line 560
    return-void
.end method

.method protected final g(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x3a98

    .line 373
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/google/android/location/p;->u:Lcom/google/g/a/b/b/a;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/location/p;->f:Z

    if-nez v1, :cond_2

    .line 375
    :cond_0
    const/4 v0, 0x1

    .line 376
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/p;->a:Ljava/lang/String;

    const-string v2, "Finished a burst or network location disabled."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/p;->j(J)V

    .line 378
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/location/p;->w:J

    .line 379
    invoke-direct {p0}, Lcom/google/android/location/p;->i()V

    .line 389
    :goto_0
    return v0

    .line 382
    :cond_2
    iget-wide v2, p0, Lcom/google/android/location/p;->w:J

    sub-long v2, p1, v2

    cmp-long v1, v2, v6

    if-ltz v1, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/google/android/location/p;->i()V

    goto :goto_0

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/p;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v1

    sget-object v2, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    iget-wide v4, p0, Lcom/google/android/location/p;->w:J

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    goto :goto_0
.end method
