.class public Lcom/google/android/gms/internal/fu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Graph;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expLoadPeopleForAggregation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    .end local p4    # "options":Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fu$6;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/fu$6;-><init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0

    .restart local p4    # "options":Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    :cond_0
    sget-object p4, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    goto :goto_0
.end method

.method public loadAggregatedPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    .end local p4    # "options":Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fu$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/fu$5;-><init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0

    .restart local p4    # "options":Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;
    :cond_0
    sget-object p4, Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;

    goto :goto_0
.end method

.method public loadCircles(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadCirclesOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Graph$LoadCirclesOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadCirclesResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    .end local p4    # "options":Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fu$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/fu$3;-><init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadCirclesOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0

    .restart local p4    # "options":Lcom/google/android/gms/people/Graph$LoadCirclesOptions;
    :cond_0
    sget-object p4, Lcom/google/android/gms/people/Graph$LoadCirclesOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadCirclesOptions;

    goto :goto_0
.end method

.method public loadContactsGaiaIds(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "options"    # Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    .end local p2    # "options":Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fu$7;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/fu$7;-><init>(Lcom/google/android/gms/internal/fu;Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0

    .restart local p2    # "options":Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;
    :cond_0
    sget-object p2, Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;

    goto :goto_0
.end method

.method public loadOwner(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadOwnersResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fu$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/fu$2;-><init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public loadOwners(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Graph$LoadOwnersOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "options"    # Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/Graph$LoadOwnersOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadOwnersResult;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    .end local p2    # "options":Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/fu$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/fu$1;-><init>(Lcom/google/android/gms/internal/fu;Lcom/google/android/gms/people/Graph$LoadOwnersOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0

    .restart local p2    # "options":Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
    :cond_0
    sget-object p2, Lcom/google/android/gms/people/Graph$LoadOwnersOptions;->DEFAULT:Lcom/google/android/gms/people/Graph$LoadOwnersOptions;

    goto :goto_0
.end method

.method public loadPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/google/android/gms/people/Graph$LoadPeopleOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Graph$LoadPeopleOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Graph$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fu$4;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/fu$4;-><init>(Lcom/google/android/gms/internal/fu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
