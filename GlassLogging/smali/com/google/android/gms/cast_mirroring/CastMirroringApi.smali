.class public interface abstract Lcom/google/android/gms/cast_mirroring/CastMirroringApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast_mirroring/CastMirroringApi$IsMirroringStatus;
    }
.end annotation


# virtual methods
.method public abstract createSourceOrSink(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;Ljava/lang/String;Landroid/view/Surface;I)V
.end method

.method public abstract destroy(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

.method public abstract endMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract isMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract setMirroringSessionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V
.end method

.method public abstract startMirroring(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method
