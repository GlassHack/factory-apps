.class Lcom/google/android/gms/internal/aq$c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast_mirroring/CastMirroringApi$IsMirroringStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aq$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final px:Lcom/google/android/gms/common/api/Status;

.field private final su:Lcom/google/android/gms/cast/CastDevice;

.field final synthetic vs:Lcom/google/android/gms/internal/aq$c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aq$c;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$c$b;->vs:Lcom/google/android/gms/internal/aq$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/aq$c$b;->su:Lcom/google/android/gms/cast/CastDevice;

    iput-object p3, p0, Lcom/google/android/gms/internal/aq$c$b;->px:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public getCastDevice()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aq$c$b;->su:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aq$c$b;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
