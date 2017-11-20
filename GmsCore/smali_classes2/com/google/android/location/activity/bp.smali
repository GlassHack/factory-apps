.class public abstract Lcom/google/android/location/activity/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/location/activity/bk;


# direct methods
.method constructor <init>(Lcom/google/android/location/activity/bk;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/location/activity/bp;->b:Lcom/google/android/location/activity/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method protected a(Lcom/google/android/location/activity/bp;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 277
    iget-object v0, p0, Lcom/google/android/location/activity/bp;->b:Lcom/google/android/location/activity/bk;

    iget-wide v2, v0, Lcom/google/android/location/activity/bk;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "VehExitDetector"

    const-string v2, "Alarm canceled"

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v1

    sget-object v2, Lcom/google/android/location/k/k;->l:Lcom/google/android/location/k/k;

    invoke-interface {v1, v2}, Lcom/google/android/location/k/j;->b(Lcom/google/android/location/k/k;)V

    iput-wide v4, v0, Lcom/google/android/location/activity/bk;->e:J

    .line 278
    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/location/activity/bp;->b:Lcom/google/android/location/activity/bk;

    new-instance v1, Lcom/google/android/location/activity/bo;

    iget-object v2, p0, Lcom/google/android/location/activity/bp;->b:Lcom/google/android/location/activity/bk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/bo;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-static {v0, v1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V

    .line 302
    :cond_0
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
