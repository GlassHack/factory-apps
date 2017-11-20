.class public final Lcom/google/android/gms/auth/be/proximity/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;[B)Lcom/google/android/gms/auth/gencode/authzen/server/api/h;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-interface {p0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 294
    :goto_0
    return-object v0

    .line 278
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/aa;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;

    .line 279
    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/util/g;->b(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 289
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    invoke-static {}, Lcom/google/android/gms/auth/be/proximity/g;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot decode public key: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Lcom/google/android/gms/auth/gencode/authzen/server/api/h;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 294
    goto :goto_0
.end method
