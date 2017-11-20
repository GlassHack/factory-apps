.class abstract Lcom/google/android/location/activity/s;
.super Lcom/google/android/location/activity/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/activity/t;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/activity/s;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/activity/a;->a:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/location/activity/s;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/activity/a;->a()V

    .line 32
    iget-object v0, p0, Lcom/google/android/location/activity/s;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/activity/s;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v1}, Lcom/google/android/location/activity/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/activity/a;->a(I)Z

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/location/activity/t;->a(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected final b()Lcom/google/android/location/activity/d;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/location/activity/s;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->d()Lcom/google/android/location/activity/i;

    move-result-object v0

    return-object v0
.end method

.method protected abstract q_()J
.end method
