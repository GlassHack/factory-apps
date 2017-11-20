.class public final Lcom/google/android/location/activity/h;
.super Lcom/google/android/location/activity/f;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/location/activity/g;


# direct methods
.method protected constructor <init>(Lcom/google/android/location/activity/g;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/location/activity/h;->c:Lcom/google/android/location/activity/g;

    invoke-direct {p0, p1}, Lcom/google/android/location/activity/f;-><init>(Lcom/google/android/location/activity/d;)V

    return-void
.end method


# virtual methods
.method protected final a(JJLjava/util/List;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 51
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 52
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityDetectionRunnerInFuture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough accel samples for activity detection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/h;->c:Lcom/google/android/location/activity/g;

    iget-object v0, v0, Lcom/google/android/location/activity/g;->d:Lcom/google/android/location/activity/e;

    invoke-interface {v0}, Lcom/google/android/location/activity/e;->l_()V

    .line 54
    iget-object v0, p0, Lcom/google/android/location/activity/h;->c:Lcom/google/android/location/activity/g;

    iget-object v0, v0, Lcom/google/android/location/activity/g;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->b(I)V

    .line 55
    const-string v0, "insufficient_samples"

    .line 63
    :goto_0
    return-object v0

    .line 58
    :cond_1
    const-wide/high16 v7, -0x8000000000000000L

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/location/activity/h;->a(JJLjava/util/List;J)J

    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Return value of detectActivity cannot be non-negative if maxSkipTimeToNextDetectionMillis < 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/a/s;

    iget-object v0, v0, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    invoke-virtual {v0}, Lcom/google/android/location/activity/a/t;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
