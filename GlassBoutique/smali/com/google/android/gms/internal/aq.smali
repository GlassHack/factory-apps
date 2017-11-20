.class public Lcom/google/android/gms/internal/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast_mirroring/CastMirroringApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aq$c;,
        Lcom/google/android/gms/internal/aq$b;,
        Lcom/google/android/gms/internal/aq$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSourceOrSink(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;Ljava/lang/String;Landroid/view/Surface;I)V
    .locals 6
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "callbacks"    # Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/cast_mirroring/CastMirroring;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ar;

    const/4 v2, 0x0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;ZLjava/lang/String;Landroid/view/Surface;I)V

    return-void
.end method

.method public destroy(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    sget-object v0, Lcom/google/android/gms/cast_mirroring/CastMirroring;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ar;->destroy()V

    return-void
.end method

.method public endMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/aq$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aq$3;-><init>(Lcom/google/android/gms/internal/aq;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public isMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast_mirroring/CastMirroringApi$IsMirroringStatus;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/aq$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aq$4;-><init>(Lcom/google/android/gms/internal/aq;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public setMirroringSessionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "callbacks"    # Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/aq$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/aq$2;-><init>(Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    return-void
.end method

.method public startMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "settingsIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/aq$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/aq$1;-><init>(Lcom/google/android/gms/internal/aq;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
