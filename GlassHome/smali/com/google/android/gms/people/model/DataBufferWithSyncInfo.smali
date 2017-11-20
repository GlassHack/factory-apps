.class public abstract Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;

    .prologue
    .local p0, "this":Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;, "Lcom/google/android/gms/people/model/DataBufferWithSyncInfo<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public getLastSuccessfulSyncFinishTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_successful_sync_finish_timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncFinishTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_sync_finish_timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncStartTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_sync_start_timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncStatus()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_sync_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPeriodicSyncEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_periodic_sync_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTickleSyncEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_tickle_sync_enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
