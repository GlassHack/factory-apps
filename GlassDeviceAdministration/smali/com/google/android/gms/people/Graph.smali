.class public interface abstract Lcom/google/android/gms/people/Graph;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsResult;,
        Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;,
        Lcom/google/android/gms/people/Graph$LoadPeopleForAggregationResult;,
        Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleResult;,
        Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;,
        Lcom/google/android/gms/people/Graph$LoadPeopleOptions;,
        Lcom/google/android/gms/people/Graph$LoadPeopleResult;,
        Lcom/google/android/gms/people/Graph$LoadCirclesOptions;,
        Lcom/google/android/gms/people/Graph$LoadCirclesResult;,
        Lcom/google/android/gms/people/Graph$LoadOwnersResult;,
        Lcom/google/android/gms/people/Graph$LoadOwnersOptions;
    }
.end annotation


# virtual methods
.method public abstract expLoadPeopleForAggregation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract loadAggregatedPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadAggregatedPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract loadCircles(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadCirclesOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract loadContactsGaiaIds(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Graph$LoadContactsGaiaIdsOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract loadOwner(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract loadOwners(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Graph$LoadOwnersOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

.method public abstract loadPeople(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/people/Graph$LoadPeopleOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method
