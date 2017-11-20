.class public final Lcom/google/android/gms/common/audience/dialogs/CircleSelection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/audience/dialogs/CircleSelection$Results;,
        Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;,
        Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    }
.end annotation


# static fields
.field public static final ACTION_CHOOSE_CIRCLES:Ljava/lang/String; = "com.google.android.gms.common.acl.CHOOSE_CIRCLES"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedCirclesDeltaFromResult(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getAddedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getChooseCirclesBuilder()Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    const-string v1, "com.google.android.gms.common.acl.CHOOSE_CIRCLES"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRemovedCirclesDeltaFromResult(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getRemovedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getResults(Landroid/content/Intent;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$Results;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static getSelectedCirclesFromResult(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getSelectedAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateCirclesBuilder()Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    const-string v1, "com.google.android.gms.common.acl.UPDATE_CIRCLES"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
