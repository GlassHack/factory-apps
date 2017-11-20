.class public interface abstract Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/dialogs/AclSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Landroid/content/Intent;
.end method

.method public abstract setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setAllowEmptySelection(Z)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setDomainRestricted(I)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setInitialAcl(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setInitialAcl(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setKnownAudienceMembers(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;"
        }
    .end annotation
.end method

.method public abstract setOkText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setShowCancel(Z)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method

.method public abstract setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.end method
