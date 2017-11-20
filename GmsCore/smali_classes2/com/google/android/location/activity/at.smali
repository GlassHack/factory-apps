.class final Lcom/google/android/location/activity/at;
.super Lcom/google/android/location/activity/bb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/bb;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 14
    return-void
.end method

.method private b(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 22
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "maybeChangeState(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/at;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/at;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/activity/at;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p0, v5}, Lcom/google/android/location/activity/at;->a(I)V

    .line 33
    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v0, Lcom/google/android/location/activity/au;

    iget-object v1, p0, Lcom/google/android/location/activity/at;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/at;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/au;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/at;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected final a(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/at;->b(Z)V

    .line 19
    return-void
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/location/activity/at;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/activity/a;->a()V

    .line 53
    return-void
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/location/activity/bb;->h()V

    .line 58
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/location/activity/at;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/activity/at;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a;->a(I)Z

    .line 61
    :cond_0
    return-void
.end method

.method public final n_()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/activity/at;->b(Z)V

    .line 48
    return-void
.end method

.method public final o_()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
