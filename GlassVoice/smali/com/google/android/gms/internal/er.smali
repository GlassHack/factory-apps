.class public final Lcom/google/android/gms/internal/er;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/people/model/Circle;


# instance fields
.field private final yp:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/er;->yp:Landroid/os/Bundle;

    return-void
.end method

.method private fG()I
    .locals 1

    const-string v0, "client_policies"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getOwnerAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .locals 1

    const-string v0, "circle_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCircleName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getCircleType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->yp:Landroid/os/Bundle;

    const-string v2, "localized_group_names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCircleType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getInteger(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x2

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getLastModifiedTime()J
    .locals 2

    const-string v0, "last_modified"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOwnerAccountName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->yp:Landroid/os/Bundle;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerPlusPageId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/er;->yp:Landroid/os/Bundle;

    const-string v1, "pagegaiaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleCount()I
    .locals 1

    const-string v0, "people_count"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPlusPageGaiaId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getOwnerPlusPageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowId()J
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sort_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/er;->yp:Landroid/os/Bundle;

    const-string v2, "circlevisibility"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getCircleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/er;->getCircleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isEnabledForSharing()Z
    .locals 1

    const-string v0, "for_sharing"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSyncToContactsEnabled()Z
    .locals 1

    const-string v0, "sync_to_contacts"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/er;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public policyCannotAclTo()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/er;->fG()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public policyCannotModifyMembership()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/er;->fG()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public policyCannotViewMembership()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/er;->fG()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public policyVisibleOnlyWhenPopulated()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/er;->fG()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
