.class public interface abstract Lcom/google/android/gms/people/model/Person;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAffinity1()D
.end method

.method public abstract getAffinity2()D
.end method

.method public abstract getAffinity3()D
.end method

.method public abstract getAffinity4()D
.end method

.method public abstract getAffinity5()D
.end method

.method public abstract getAvatarUrl()Ljava/lang/String;
.end method

.method public abstract getBelongingCircleIds()[Ljava/lang/String;
.end method

.method public abstract getEmailAddresses()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/EmailAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFamilyName()Ljava/lang/String;
.end method

.method public abstract getGaiaId()Ljava/lang/String;
.end method

.method public abstract getGivenName()Ljava/lang/String;
.end method

.method public abstract getInViewerDomain()I
.end method

.method public abstract getInteractionRankSortKey()Ljava/lang/String;
.end method

.method public abstract getLastModifiedTime()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameSortKey()Ljava/lang/String;
.end method

.method public abstract getOwnerAccountName()Ljava/lang/String;
.end method

.method public abstract getOwnerPlusPageId()Ljava/lang/String;
.end method

.method public abstract getPeopleInCommon()[Ljava/lang/String;
.end method

.method public abstract getPhoneNumbers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/people/model/PhoneNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlusPageGaiaId()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProfileType()I
.end method

.method public abstract getQualifiedId()Ljava/lang/String;
.end method

.method public abstract getRowId()J
.end method

.method public abstract isBlocked()Z
.end method

.method public abstract isNameVerified()Z
.end method
