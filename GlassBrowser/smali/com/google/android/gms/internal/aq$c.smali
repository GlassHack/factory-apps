.class abstract Lcom/google/android/gms/internal/aq$c;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aq$c$b;,
        Lcom/google/android/gms/internal/aq$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<",
        "Lcom/google/android/gms/cast_mirroring/CastMirroringApi$IsMirroringStatus;",
        "Lcom/google/android/gms/internal/ar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic vp:Lcom/google/android/gms/internal/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aq;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$c;->vp:Lcom/google/android/gms/internal/aq;

    sget-object v0, Lcom/google/android/gms/cast_mirroring/CastMirroring;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    return-void
.end method


# virtual methods
.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aq$c;->g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast_mirroring/CastMirroringApi$IsMirroringStatus;

    move-result-object v0

    return-object v0
.end method

.method protected g(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast_mirroring/CastMirroringApi$IsMirroringStatus;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/aq$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/aq$c$b;-><init>(Lcom/google/android/gms/internal/aq$c;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
