.class public final Lcom/google/android/location/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/a;


# instance fields
.field final a:Lcom/google/android/location/activity/k;

.field public final b:Lcom/google/android/location/activity/bk;

.field public c:Lcom/google/android/location/activity/an;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    .line 46
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityProvider"

    const-string v1, "ActivityDetectionScheduler instantiated."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/k;

    invoke-direct {v0, p1}, Lcom/google/android/location/activity/k;-><init>(Lcom/google/android/location/os/at;)V

    iput-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    .line 48
    invoke-interface {p1}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iput-object v2, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    .line 50
    new-instance v0, Lcom/google/android/location/activity/an;

    iget-object v1, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/an;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/k;)V

    iput-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    .line 56
    :goto_0
    sget-object v0, Lcom/google/android/location/d/a;->o:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 58
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 59
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/android/location/os/at;->b(J)V

    .line 61
    :cond_1
    return-void

    .line 52
    :cond_2
    new-instance v0, Lcom/google/android/location/activity/bk;

    iget-object v1, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/bk;-><init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/k;)V

    iput-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    .line 53
    iput-object v2, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->D()V

    .line 177
    return-void
.end method

.method public final a(IIIZLcom/google/android/location/p/j;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->d(I)V

    .line 85
    return-void
.end method

.method public final a(IIZ)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public final a(IIZZZLcom/google/android/location/p/j;)V
    .locals 5

    .prologue
    .line 160
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityProvider"

    const-string v1, "setActivityDetectionExternalClientCount, count=%d, minPeriodSec=%d, forceDetectionNow=%s, hasFirstPartyClient=%s, hasOffBodyClient=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1, p2, p3, p6}, Lcom/google/android/location/activity/k;->a(IIZLcom/google/android/location/p/j;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    invoke-virtual {v0, p4}, Lcom/google/android/location/activity/bk;->a(Z)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    invoke-virtual {v0, p5}, Lcom/google/android/location/activity/an;->b(Z)V

    .line 172
    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/bp;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    iget-object v0, v0, Lcom/google/android/location/activity/an;->e:Lcom/google/android/location/activity/ar;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/ar;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 150
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/location/activity/bj;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/location/activity/bj;)V

    .line 137
    return-void
.end method

.method public final a(Lcom/google/android/location/f/ag;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public final a(Lcom/google/android/location/f/bg;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public final a(Lcom/google/android/location/f/g;)V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 5

    .prologue
    .line 95
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityProvider"

    const-string v1, "alarmRing. client=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    sget-object v0, Lcom/google/android/location/l;->a:[I

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/location/k/k;)V

    .line 113
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/google/android/location/k;->b:Lcom/google/android/location/activity/bk;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bk;->a()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    invoke-virtual {v0}, Lcom/google/android/location/activity/an;->a()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/location/k/k;J)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/location/k/k;J)V

    .line 190
    return-void
.end method

.method public final a(Lcom/google/android/location/os/ah;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->b(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/an;->a(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public final a(ZZI)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public final a([Lcom/google/android/location/f/bh;Z)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->E()V

    .line 182
    return-void
.end method

.method public final b(Lcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/location/k;->c:Lcom/google/android/location/activity/an;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/an;->c(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->C()V

    .line 195
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/location/k;->a:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->c(Z)V

    .line 200
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method
