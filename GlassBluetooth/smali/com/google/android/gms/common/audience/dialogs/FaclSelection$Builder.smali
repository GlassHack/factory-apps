.class public interface abstract Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/dialogs/FaclSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Landroid/content/Intent;
.end method

.method public abstract setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setAllCirclesChecked(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setAllContactsChecked(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
.end method

.method public abstract setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setHasShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;"
        }
    .end annotation
.end method

.method public abstract setKnownAudienceMembers(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;"
        }
    .end annotation
.end method

.method public abstract setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setShowContacts(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setTitleLogo(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method

.method public abstract setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.end method
