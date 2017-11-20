.class public final Lcom/google/android/gms/fitness/m/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Landroid/os/WorkSource;
    .locals 4

    .prologue
    .line 21
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/a;

    .line 23
    iget v3, v0, Lcom/google/android/gms/fitness/internal/a;->a:I

    iget-object v0, v0, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/common/util/ac;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    return-object v1
.end method
