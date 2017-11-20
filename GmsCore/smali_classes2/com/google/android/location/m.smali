.class public final Lcom/google/android/location/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/location/os/at;

.field public b:Lcom/google/android/location/o;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:J

.field public l:J

.field public m:Z

.field public n:I

.field public o:Z

.field public p:J

.field public q:Lcom/google/android/location/l/e;

.field private final r:Ljava/util/List;

.field private final s:Lcom/google/android/location/activity/k;

.field private final t:Lcom/google/android/location/l/a;

.field private final u:Lcom/google/android/location/f/ag;

.field private final v:Ljava/util/Random;

.field private final w:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/l/a;Lcom/google/android/location/f/ag;Lcom/google/android/location/activity/k;)V
    .locals 6

    .prologue
    .line 168
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/m;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/l/a;Lcom/google/android/location/f/ag;Lcom/google/android/location/activity/k;Ljava/util/Random;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/l/a;Lcom/google/android/location/f/ag;Lcom/google/android/location/activity/k;Ljava/util/Random;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    .line 95
    sget-object v0, Lcom/google/android/location/o;->a:Lcom/google/android/location/o;

    iput-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    .line 96
    iput-boolean v1, p0, Lcom/google/android/location/m;->c:Z

    .line 97
    iput-boolean v5, p0, Lcom/google/android/location/m;->d:Z

    .line 98
    iput-boolean v1, p0, Lcom/google/android/location/m;->e:Z

    .line 99
    iput-boolean v5, p0, Lcom/google/android/location/m;->f:Z

    .line 106
    iput-boolean v1, p0, Lcom/google/android/location/m;->g:Z

    .line 113
    iput-boolean v1, p0, Lcom/google/android/location/m;->h:Z

    .line 116
    iput-boolean v1, p0, Lcom/google/android/location/m;->i:Z

    .line 118
    iput v4, p0, Lcom/google/android/location/m;->j:I

    .line 121
    iput-wide v2, p0, Lcom/google/android/location/m;->k:J

    .line 125
    iput-wide v2, p0, Lcom/google/android/location/m;->l:J

    .line 128
    iput-boolean v1, p0, Lcom/google/android/location/m;->m:Z

    .line 131
    iput v4, p0, Lcom/google/android/location/m;->n:I

    .line 135
    iput-boolean v1, p0, Lcom/google/android/location/m;->o:Z

    .line 139
    iput-wide v2, p0, Lcom/google/android/location/m;->p:J

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m;->q:Lcom/google/android/location/l/e;

    .line 155
    iput-object p4, p0, Lcom/google/android/location/m;->s:Lcom/google/android/location/activity/k;

    .line 156
    iput-object p1, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    .line 157
    iput-object p3, p0, Lcom/google/android/location/m;->u:Lcom/google/android/location/f/ag;

    .line 158
    iput-object p2, p0, Lcom/google/android/location/m;->t:Lcom/google/android/location/l/a;

    .line 159
    iput-object p5, p0, Lcom/google/android/location/m;->v:Ljava/util/Random;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    new-instance v1, Lcom/google/android/location/p/f;

    const/4 v2, 0x6

    const/16 v3, 0x2d

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/location/p/f;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/google/android/location/p/f;

    const/16 v2, 0xf

    const/16 v3, 0x1e

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/location/p/f;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    .line 164
    return-void
.end method

.method private a(JJ)V
    .locals 7

    .prologue
    .line 528
    iput-wide p1, p0, Lcom/google/android/location/m;->k:J

    .line 529
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/m;->k:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 531
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "BurstCollectionTrigger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alarm scheduled at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/location/m;->k:J

    add-long/2addr v4, p3

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Calendar;J)V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    iget-wide v0, v0, Lcom/google/android/location/p/f;->a:J

    invoke-static {p1, v0, v1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    .line 316
    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 317
    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/location/m;->b(Ljava/util/Calendar;J)V

    .line 318
    return-void
.end method

.method private a(Ljava/util/Calendar;Lcom/google/android/location/p/f;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 273
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-wide v0, p2, Lcom/google/android/location/p/f;->a:J

    invoke-static {p1, v0, v1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    .line 276
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/m;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/location/m;->b(Ljava/util/Calendar;J)V

    .line 295
    :goto_1
    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 281
    iget-wide v2, p0, Lcom/google/android/location/m;->l:J

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    .line 282
    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 284
    add-long v0, p3, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    :cond_2
    invoke-virtual {p2, p1}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/location/m;->b(Ljava/util/Calendar;J)V

    goto :goto_1

    .line 291
    :cond_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "BurstCollectionTrigger"

    const-string v1, "Skipping to next rush hours."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    iget-wide v0, v0, Lcom/google/android/location/p/f;->a:J

    invoke-static {p1, v0, v1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    iget-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    move-object p2, v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/location/m;->a(Ljava/util/Calendar;J)V

    goto :goto_1
.end method

.method private a(J)Z
    .locals 5

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/android/location/m;->k:J

    const-wide/16 v2, 0x7d0

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(JZ)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->h()Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/location/m;->u:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->i()Z

    move-result v4

    iget-boolean v0, p0, Lcom/google/android/location/m;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/m;->f:Z

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/m;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v5, Lcom/google/android/location/n;->a:[I

    iget-object v6, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    invoke-virtual {v6}, Lcom/google/android/location/o;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_0

    const-string v5, "BurstCollectionTrigger"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[fullCollectionEnabled="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/google/android/location/m;->c:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", screenOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/location/m;->d:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBatteryHealthy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/location/m;->e:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", collectionCanceled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/location/m;->g:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", clientEnabled=true, serverEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", gpsEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_a

    .line 471
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/m;->b(JZ)V

    .line 474
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 470
    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/location/m;->g:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/location/m;->j:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/location/m;->j:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/location/m;->g:Z

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :pswitch_3
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/location/m;->g:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/location/m;->d:Z

    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v1, v2

    .line 474
    goto :goto_2

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(JZ)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    .line 479
    iput-wide v4, p0, Lcom/google/android/location/m;->k:J

    .line 480
    invoke-direct {p0}, Lcom/google/android/location/m;->f()V

    .line 481
    iput-boolean v2, p0, Lcom/google/android/location/m;->i:Z

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m;->j:I

    .line 483
    iput-boolean v2, p0, Lcom/google/android/location/m;->g:Z

    .line 484
    iput-boolean v2, p0, Lcom/google/android/location/m;->h:Z

    .line 485
    if-eqz p3, :cond_0

    .line 486
    iput-wide v4, p0, Lcom/google/android/location/m;->p:J

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m;->q:Lcom/google/android/location/l/e;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v1, Lcom/google/android/location/o;->a:Lcom/google/android/location/o;

    if-eq v0, v1, :cond_1

    .line 490
    sget-object v0, Lcom/google/android/location/o;->a:Lcom/google/android/location/o;

    iput-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    .line 491
    iput-wide p1, p0, Lcom/google/android/location/m;->l:J

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/m;->e()V

    .line 494
    return-void
.end method

.method private b(Ljava/util/Calendar;J)V
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/location/m;->a(JJ)V

    .line 525
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/google/android/location/m;->o:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m;->o:Z

    .line 429
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/android/location/m;->o:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;)V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/m;->o:Z

    .line 440
    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 514
    iget-boolean v0, p0, Lcom/google/android/location/m;->m:Z

    if-eqz v0, :cond_0

    .line 515
    iget v0, p0, Lcom/google/android/location/m;->n:I

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/location/p/h;->b(Z)V

    .line 516
    iget-object v0, p0, Lcom/google/android/location/m;->s:Lcom/google/android/location/activity/k;

    iget v2, p0, Lcom/google/android/location/m;->n:I

    invoke-virtual {v0, v2}, Lcom/google/android/location/activity/k;->a(I)V

    .line 518
    iput-boolean v1, p0, Lcom/google/android/location/m;->m:Z

    .line 519
    iput v3, p0, Lcom/google/android/location/m;->n:I

    .line 521
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 515
    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    :cond_0
    iget-object v7, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    .line 538
    iget-object v1, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    .line 539
    sget-object v1, Lcom/google/android/location/n;->a:[I

    iget-object v4, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    invoke-virtual {v4}, Lcom/google/android/location/o;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 556
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    if-eq v7, v1, :cond_1

    .line 557
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "BurstCollectionTrigger"

    const-string v2, "collector state changed from %s to %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_1
    if-nez v0, :cond_0

    .line 560
    return-void

    .line 541
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->a(JZ)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v8

    iget-wide v0, p0, Lcom/google/android/location/m;->k:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    invoke-direct {p0, v2, v3}, Lcom/google/android/location/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    iget-wide v4, p0, Lcom/google/android/location/m;->k:J

    add-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->b(JZ)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/location/m;->d()V

    iget-boolean v0, p0, Lcom/google/android/location/m;->m:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/location/m;->n:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/location/p/h;->b(Z)V

    iget-object v0, p0, Lcom/google/android/location/m;->u:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->k()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/m;->n:I

    iget-object v0, p0, Lcom/google/android/location/m;->s:Lcom/google/android/location/activity/k;

    iget v2, p0, Lcom/google/android/location/m;->n:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->a(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m;->m:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    iget-wide v2, v1, Lcom/google/android/location/p/f;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-direct {p0, v0, v1, v8, v9}, Lcom/google/android/location/m;->a(JJ)V

    sget-object v0, Lcom/google/android/location/o;->b:Lcom/google/android/location/o;

    iput-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    invoke-direct {p0}, Lcom/google/android/location/m;->e()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/m;->k:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    :cond_8
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/m;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    iget-object v3, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Lcom/google/android/location/p/f;->a(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_4
    iget-object v4, p0, Lcom/google/android/location/m;->t:Lcom/google/android/location/l/a;

    iget-object v1, v4, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    iget-object v1, v1, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    const-wide/32 v2, 0xe290

    iget-object v4, v4, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/l/d;->a(JJZ)Z

    move-result v1

    if-eqz v0, :cond_b

    if-nez v1, :cond_e

    :cond_b
    if-nez v1, :cond_c

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_c

    const-string v1, "BurstCollectionTrigger"

    const-string v2, "Insufficient GPS budget."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-nez v0, :cond_d

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_d

    const-string v0, "BurstCollectionTrigger"

    const-string v1, "After the last rush hours."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/location/m;->a(Ljava/util/Calendar;J)V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m;->w:Ljava/util/Calendar;

    invoke-direct {p0, v1, v0, v8, v9}, Lcom/google/android/location/m;->a(Ljava/util/Calendar;Lcom/google/android/location/p/f;J)V

    goto :goto_3

    .line 544
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/location/m;->i:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/location/m;->v:Ljava/util/Random;

    iget-object v1, p0, Lcom/google/android/location/m;->u:Lcom/google/android/location/f/ag;

    invoke-virtual {v1}, Lcom/google/android/location/f/ag;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_10

    const-string v1, "BurstCollectionTrigger"

    const-string v4, "Will wait for %d ms before turning on GPS."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/m;->a(JJ)V

    sget-object v0, Lcom/google/android/location/o;->c:Lcom/google/android/location/o;

    iput-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0, v2, v3}, Lcom/google/android/location/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->b(JZ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/m;->k:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 547
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-direct {p0, v2, v3}, Lcom/google/android/location/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    sget-object v1, Lcom/google/android/location/os/av;->a:Lcom/google/android/location/os/av;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(Lcom/google/android/location/os/av;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/location/m;->f()V

    sget-object v0, Lcom/google/android/location/o;->d:Lcom/google/android/location/o;

    iput-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/m;->k:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 550
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_15
    iget-boolean v0, p0, Lcom/google/android/location/m;->h:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/location/m;->d:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_16

    const-string v0, "BurstCollectionTrigger"

    const-string v1, "Screen is on when GPS is asked to be turned on."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->b(JZ)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_17
    iget-boolean v0, p0, Lcom/google/android/location/m;->h:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/location/m;->d:Z

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/google/android/location/m;->d()V

    iget-object v0, p0, Lcom/google/android/location/m;->t:Lcom/google/android/location/l/a;

    iget-object v1, v0, Lcom/google/android/location/l/a;->a:Lcom/google/android/location/l/b;

    iget-object v1, v1, Lcom/google/android/location/l/b;->e:Lcom/google/android/location/l/d;

    iget-object v0, v0, Lcom/google/android/location/l/a;->f:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/location/l/d;->b(J)J

    move-result-wide v0

    const-wide/32 v4, 0x1d4c0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v4, 0xe290

    cmp-long v4, v0, v4

    if-gez v4, :cond_19

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_18

    const-string v0, "BurstCollectionTrigger"

    const-string v1, "Not enough GPS budgets, going off."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->b(JZ)V

    invoke-direct {p0}, Lcom/google/android/location/m;->e()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_19
    iget-object v4, p0, Lcom/google/android/location/m;->t:Lcom/google/android/location/l/a;

    iget-object v5, v4, Lcom/google/android/location/l/a;->e:Lcom/google/android/location/l/d;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/google/android/location/l/a;->a(Lcom/google/android/location/l/d;JZ)Lcom/google/android/location/l/e;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/location/m;->q:Lcom/google/android/location/l/e;

    iget-object v4, p0, Lcom/google/android/location/m;->q:Lcom/google/android/location/l/e;

    if-nez v4, :cond_1b

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1a

    const-string v0, "BurstCollectionTrigger"

    const-string v1, "No Gps budgets, going off."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->b(JZ)V

    invoke-direct {p0}, Lcom/google/android/location/m;->e()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/m;->p:J

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1c

    const-string v0, "BurstCollectionTrigger"

    const-string v1, "Turning GPS on."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    const-string v1, "BurstCollectionTrigger"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/location/m;->p:J

    iget-object v2, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/m;->a(JJ)V

    sget-object v0, Lcom/google/android/location/o;->e:Lcom/google/android/location/o;

    iput-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 553
    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/m;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Lcom/google/android/location/m;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    iget-object v2, p0, Lcom/google/android/location/m;->t:Lcom/google/android/location/l/a;

    iget-object v3, p0, Lcom/google/android/location/m;->q:Lcom/google/android/location/l/e;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/l/a;->a(Lcom/google/android/location/l/e;J)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    const-string v1, "BurstCollectionTrigger"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Z)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/m;->p:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/m;->q:Lcom/google/android/location/l/e;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/location/m;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    iget-wide v2, p0, Lcom/google/android/location/m;->k:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_20
    move-object v0, v1

    goto/16 :goto_4

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/android/location/m;->a()V

    .line 654
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v1, Lcom/google/android/location/o;->d:Lcom/google/android/location/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/m;->b:Lcom/google/android/location/o;

    sget-object v1, Lcom/google/android/location/o;->e:Lcom/google/android/location/o;

    if-ne v0, v1, :cond_1

    .line 662
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/m;->g:Z

    .line 663
    invoke-virtual {p0}, Lcom/google/android/location/m;->a()V

    .line 665
    :cond_1
    return-void
.end method
