.class Lcom/google/android/gms/wearable/internal/f$2$1;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/f$2;->a(Lcom/google/android/gms/wearable/internal/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wc:Lcom/google/android/gms/wearable/internal/f$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/f$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$2$1;->Wc:Lcom/google/android/gms/wearable/internal/f$2;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$2$1;->Wc:Lcom/google/android/gms/wearable/internal/f$2;

    new-instance v1, Lcom/google/android/gms/wearable/internal/f$d;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->statusCode:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/wearable/internal/f$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/internal/f$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
