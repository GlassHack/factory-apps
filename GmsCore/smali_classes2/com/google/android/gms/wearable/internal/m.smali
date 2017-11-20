.class public final Lcom/google/android/gms/wearable/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/g;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/wearable/internal/StorageInfoResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/m;->a:Lcom/google/android/gms/common/api/Status;

    .line 306
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/m;->b:Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    .line 307
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/wearable/internal/StorageInfoResponse;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->b:Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/m;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
