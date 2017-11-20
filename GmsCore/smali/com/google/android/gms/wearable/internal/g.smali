.class final Lcom/google/android/gms/wearable/internal/g;
.super Lcom/google/android/gms/wearable/internal/c;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/wearable/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/e;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/g;->d:Lcom/google/android/gms/wearable/internal/e;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lcom/google/android/gms/wearable/internal/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/m;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 2

    .prologue
    .line 322
    check-cast p1, Lcom/google/android/gms/wearable/internal/ay;

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/ay;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/ai;

    new-instance v1, Lcom/google/android/gms/wearable/internal/h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/internal/h;-><init>(Lcom/google/android/gms/wearable/internal/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ai;->e(Lcom/google/android/gms/wearable/internal/ac;)V

    return-void
.end method
