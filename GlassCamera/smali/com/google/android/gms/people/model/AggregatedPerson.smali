.class public interface abstract Lcom/google/android/gms/people/model/AggregatedPerson;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/model/Person;


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAvatarUrl()Ljava/lang/String;
.end method

.method public abstract getContactIds()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
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

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOwnerAccountName()Ljava/lang/String;
.end method

.method public abstract getOwnerPlusPageId()Ljava/lang/String;
.end method

.method public abstract getPlusPageGaiaId()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getQualifiedId()Ljava/lang/String;
.end method

.method public abstract getRowId()J
.end method

.method public abstract hasContact()Z
.end method

.method public abstract hasPlusPerson()Z
.end method
