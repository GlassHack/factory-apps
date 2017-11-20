.class final Lcom/google/android/location/activity/x;
.super Lcom/google/android/location/activity/r;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/location/activity/aj;


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/r;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 25
    new-instance v0, Lcom/google/android/location/activity/aj;

    invoke-interface {p2}, Lcom/google/android/location/os/at;->y()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/activity/aj;-><init>(Lcom/google/android/location/activity/k;Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/x;->b:Lcom/google/android/location/activity/aj;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;J)J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/location/activity/x;->k()V

    .line 51
    iget-object v0, p0, Lcom/google/android/location/activity/x;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->b(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 52
    iget-boolean v0, p0, Lcom/google/android/location/activity/x;->a:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-wide v6

    .line 56
    :cond_0
    if-nez p1, :cond_1

    .line 58
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/x;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/x;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/x;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/x;->b:Lcom/google/android/location/activity/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/aj;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 64
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 66
    iget-object v3, p0, Lcom/google/android/location/activity/x;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v3, v0}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/google/android/location/activity/x;->n()V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/activity/x;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/google/android/location/activity/x;->o()V

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 85
    invoke-virtual {p0}, Lcom/google/android/location/activity/x;->k_()V

    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/activity/x;->d:Lcom/google/android/location/activity/k;

    iget-object v1, p0, Lcom/google/android/location/activity/x;->e:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/activity/k;->d(J)V

    goto :goto_0
.end method

.method public final a(D)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/location/activity/x;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/activity/k;->a(D)V

    .line 106
    return-void
.end method

.method protected final a(Z)V
    .locals 5

    .prologue
    .line 110
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FullDetectingInFutureState"

    const-string v1, "newClientAdded(%s)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/location/activity/x;->k_()V

    .line 101
    return-void
.end method

.method protected final d()Lcom/google/android/location/activity/a/o;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/activity/x;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->k()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "FullDetector"

    return-object v0
.end method

.method protected final g()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/location/activity/x;->k_()V

    .line 31
    return-void
.end method
