.class public final Lcom/google/android/gms/analytics/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/aq;


# instance fields
.field public a:Z

.field public b:J

.field c:Z

.field public final synthetic d:Lcom/google/android/gms/analytics/bo;

.field private e:I

.field private f:J

.field private g:Lcom/google/android/gms/common/util/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/bo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    iput-object p1, p0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-boolean v2, p0, Lcom/google/android/gms/analytics/bp;->a:Z

    .line 587
    iput v2, p0, Lcom/google/android/gms/analytics/bp;->e:I

    .line 591
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/bp;->b:J

    .line 594
    iput-boolean v2, p0, Lcom/google/android/gms/analytics/bp;->c:Z

    .line 601
    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bp;->g:Lcom/google/android/gms/common/util/i;

    .line 602
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 673
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->aj:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 674
    iget v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    .line 677
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/analytics/bp;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    .line 679
    iget v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->g:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/bp;->f:J

    .line 682
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 650
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/analytics/al;->ai:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 652
    iget v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->g:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/analytics/bp;->f:J

    const-wide/16 v8, 0x3e8

    iget-wide v10, p0, Lcom/google/android/gms/analytics/bp;->b:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 653
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/bp;->c:Z

    .line 656
    :cond_0
    iget v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/bp;->e:I

    .line 657
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/bp;->a:Z

    if-eqz v0, :cond_1

    .line 658
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 659
    const-string v0, "&t"

    const-string v4, "screenview"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Z)V

    .line 662
    iget-object v4, p0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    const-string v5, "&cd"

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    iget-object v0, v0, Lcom/google/android/gms/analytics/bo;->b:Lcom/google/android/gms/analytics/bq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    iget-object v0, v0, Lcom/google/android/gms/analytics/bo;->b:Lcom/google/android/gms/analytics/bq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/analytics/bq;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/analytics/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/google/android/gms/analytics/bp;->d:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/bo;->a(Ljava/util/Map;)V

    .line 667
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/ak;->a(Z)V

    .line 669
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 652
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 662
    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
