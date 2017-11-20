.class public Lcom/google/android/gms/internal/eq;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/people/model/AutocompleteEntry;


# instance fields
.field private final yp:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/eq;->yp:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getAndroidContactDataId()J
    .locals 2

    const-string v0, "cp2_data_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndroidContactId()J
    .locals 2

    const-string v0, "cp2_contact_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAutocompleteItemType()I
    .locals 1

    const-string v0, "item_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAvatarReference()Lcom/google/android/gms/people/model/AvatarReference;
    .locals 3

    const-string v0, "avatar_location"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "avatar_source"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getInteger(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Lcom/google/android/gms/people/model/AvatarReference;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/people/model/AvatarReference;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getDataSource()I
    .locals 1

    const-string v0, "data_source"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    const-string v0, "directory_account"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    const-string v0, "directory_account_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusContactId()Ljava/lang/String;
    .locals 1

    const-string v0, "contact_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .locals 1

    const-string v0, "gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemAffinity1()D
    .locals 2

    const-string v0, "item_affinity1"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getItemAffinity2()D
    .locals 2

    const-string v0, "item_affinity2"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getItemAffinity3()D
    .locals 2

    const-string v0, "item_affinity3"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getItemAffinity4()D
    .locals 2

    const-string v0, "item_affinity4"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getItemAffinity5()D
    .locals 2

    const-string v0, "item_affinity5"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemValueCustomLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "custom_label"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemValueType()I
    .locals 1

    const-string/jumbo v0, "value_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMatchType()I
    .locals 1

    const-string v0, "match_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOwnerAccountName()Ljava/lang/String;
    .locals 1

    const-string v0, "owner_account"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerPlusPageId()Ljava/lang/String;
    .locals 1

    const-string v0, "owner_page_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleV2Id()Ljava/lang/String;
    .locals 1

    const-string v0, "people_v2_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonAffinity1()D
    .locals 2

    const-string v0, "person_affinity1"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonAffinity2()D
    .locals 2

    const-string v0, "person_affinity2"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonAffinity3()D
    .locals 2

    const-string v0, "person_affinity3"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonAffinity4()D
    .locals 2

    const-string v0, "person_affinity4"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonAffinity5()D
    .locals 2

    const-string v0, "person_affinity5"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonKey()Ljava/lang/String;
    .locals 1

    const-string v0, "person_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortedItemAffinity()D
    .locals 2

    const-string v0, "item_affinity_sorted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSortedPersonAffinity()D
    .locals 2

    const-string v0, "person_affinity_sorted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eq;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method
