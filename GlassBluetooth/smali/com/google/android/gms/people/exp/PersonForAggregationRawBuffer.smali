.class public Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;
.super Lcom/google/android/gms/people/exp/a;

# interfaces
.implements Lcom/google/android/gms/people/model/Person;


# instance fields
.field private final MG:Lcom/google/android/gms/internal/fq$b;

.field private final MH:Lcom/google/android/gms/internal/fq$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/fq$b;Lcom/google/android/gms/internal/fq$a;)V
    .locals 0
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "phoneDecoder"    # Lcom/google/android/gms/internal/fq$b;
    .param p3, "emailDecoder"    # Lcom/google/android/gms/internal/fq$a;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/exp/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p2, p0, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->MG:Lcom/google/android/gms/internal/fq$b;

    iput-object p3, p0, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->MH:Lcom/google/android/gms/internal/fq$a;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getOwnerAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAffinity1()D
    .locals 2

    const-string v0, "affinity1"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity2()D
    .locals 2

    const-string v0, "affinity2"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity3()D
    .locals 2

    const-string v0, "affinity3"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity4()D
    .locals 2

    const-string v0, "affinity4"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAffinity5()D
    .locals 2

    const-string v0, "affinity5"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fb;->MQ:Lcom/google/android/gms/internal/fb;

    const-string v1, "avatar"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fb;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBelongingCircleIds()[Ljava/lang/String;
    .locals 3

    const-string v0, "v_circle_ids"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/fe;->Ny:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/fe;->Nz:Ljava/util/regex/Pattern;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailAddresses()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->MH:Lcom/google/android/gms/internal/fq$a;

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getEncodedEmails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fq$a;->aO(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedEmails()Ljava/lang/String;
    .locals 1

    const-string v0, "v_emails"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPhones()Ljava/lang/String;
    .locals 1

    const-string v0, "v_phones"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    const-string v0, "family_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .locals 1

    const-string v0, "gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    const-string v0, "given_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInViewerDomain()I
    .locals 1

    const-string v0, "in_viewer_domain"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteractionRankSortKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sort_key_irank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    const-string v0, "last_modified"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameSortKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sort_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerPlusPageId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pagegaiaid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleInCommon()[Ljava/lang/String;
    .locals 1

    const-string v0, "people_in_common"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fe;->aA(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/PhoneNumber;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->MG:Lcom/google/android/gms/internal/fq$b;

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getEncodedPhones()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fq$b;->aO(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPlusPageGaiaId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getOwnerPlusPageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    const-string v0, "profile_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQualifiedId()Ljava/lang/String;
    .locals 1

    const-string v0, "qualified_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowId()J
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isBlocked()Z
    .locals 1

    const-string v0, "blocked"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNameVerified()Z
    .locals 1

    const-string v0, "name_verified"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/exp/PersonForAggregationRawBuffer;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
