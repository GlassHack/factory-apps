.class public interface abstract Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/dialogs/CircleSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateBuilder"
.end annotation


# virtual methods
.method public abstract build()Landroid/content/Intent;
.end method

.method public abstract setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setHeaderBackgroundColor(I)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setHeaderTextColor(I)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;"
        }
    .end annotation
.end method

.method public abstract setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setUpdatePerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method

.method public abstract setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.end method
