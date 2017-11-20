.class public final Lcom/google/android/gms/internal/ey;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/people/model/Owner;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private fJ()Lcom/google/android/gms/people/model/AccountMetadata;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ey;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_metadata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/AccountMetadata;

    goto :goto_0
.end method


# virtual methods
.method public getAccountGaiaId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    const-string v0, "gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fb;->MQ:Lcom/google/android/gms/internal/fb;

    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fb;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoverPhotoHeight()I
    .locals 1

    const-string v0, "cover_photo_height"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCoverPhotoId()Ljava/lang/String;
    .locals 1

    const-string v0, "cover_photo_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoverPhotoUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fb;->MQ:Lcom/google/android/gms/internal/fb;

    const-string v1, "cover_photo_url"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fb;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoverPhotoWidth()I
    .locals 1

    const-string v0, "cover_photo_width"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDasherDomain()Ljava/lang/String;
    .locals 1

    const-string v0, "dasher_domain"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getAccountName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastSuccessfulSyncFinishTimestamp()J
    .locals 2

    const-string v0, "last_successful_sync_time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncFinishTimestamp()J
    .locals 2

    const-string v0, "last_sync_finish_time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncStartTimestamp()J
    .locals 2

    const-string v0, "last_sync_start_time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncStatus()I
    .locals 1

    const-string v0, "last_sync_status"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlusPageGaiaId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getPlusPageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlusPageId()Ljava/lang/String;
    .locals 1

    const-string v0, "page_gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowId()J
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDasherAccount()I
    .locals 1

    const-string v0, "is_dasher"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPeriodicSyncEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->fJ()Lcom/google/android/gms/people/model/AccountMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->isPlusPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/people/model/AccountMetadata;->isPagePeriodicSyncEnabled:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/people/model/AccountMetadata;->isSyncEnabled:Z

    goto :goto_0
.end method

.method public isPlusEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->isPlusPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->fJ()Lcom/google/android/gms/people/model/AccountMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/people/model/AccountMetadata;->isPlusEnabled:Z

    goto :goto_0
.end method

.method public isPlusPage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->getPlusPageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncCirclesToContactsEnabled()Z
    .locals 1

    const-string v0, "sync_circles_to_contacts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSyncEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey;->fJ()Lcom/google/android/gms/people/model/AccountMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ey;->isPlusPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/people/model/AccountMetadata;->isPageTickleSyncEnabled:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/people/model/AccountMetadata;->isSyncEnabled:Z

    goto :goto_0
.end method

.method public isSyncEvergreenToContactsEnabled()Z
    .locals 1

    const-string v0, "sync_evergreen_to_contacts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSyncToContactsEnabled()Z
    .locals 1

    const-string v0, "sync_to_contacts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ey;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
