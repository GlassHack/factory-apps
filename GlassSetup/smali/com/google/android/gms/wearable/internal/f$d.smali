.class public Lcom/google/android/gms/wearable/internal/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$StorageInfoResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final Wm:Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

.field private final px:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$d;->px:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$d;->Wm:Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$d;->px:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getStorageInfo()Lcom/google/android/gms/wearable/internal/StorageInfoResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$d;->Wm:Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    return-object v0
.end method
