.class public final Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/google/android/gms/common/api/aa;)V
    .locals 5

    .prologue
    .line 502
    instance-of v1, p0, Lcom/google/android/gms/common/api/z;

    if-eqz v1, :cond_0

    .line 504
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/z;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/z;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v1

    .line 506
    const-string v2, "GoogleApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
