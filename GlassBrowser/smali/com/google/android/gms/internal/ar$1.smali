.class Lcom/google/android/gms/internal/ar$1;
.super Lcom/google/android/gms/internal/au$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ar;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vw:Lcom/google/android/gms/internal/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ar$1;->vw:Lcom/google/android/gms/internal/ar;

    invoke-direct {p0}, Lcom/google/android/gms/internal/au$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onMirroringEnded(I)V
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ar$1;->vw:Lcom/google/android/gms/internal/ar;

    invoke-static {v0}, Lcom/google/android/gms/internal/ar;->b(Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar$1;->vw:Lcom/google/android/gms/internal/ar;

    invoke-static {v0}, Lcom/google/android/gms/internal/ar;->b(Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;->onMirroringEnded(I)V

    :cond_0
    return-void
.end method
