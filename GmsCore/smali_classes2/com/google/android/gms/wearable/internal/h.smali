.class final Lcom/google/android/gms/wearable/internal/h;
.super Lcom/google/android/gms/wearable/internal/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/g;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/h;->a:Lcom/google/android/gms/wearable/internal/g;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/h;->a:Lcom/google/android/gms/wearable/internal/g;

    new-instance v1, Lcom/google/android/gms/wearable/internal/m;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->b:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/wearable/internal/m;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/g;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 330
    return-void
.end method
