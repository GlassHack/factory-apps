.class public Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/dialogs/CircleCreation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "clientApplicationId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.plus.audience.ACTION_CIRCLE_CREATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The account name is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.audience.EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
    .locals 2
    .param p1, "clientApplicationId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.audience.EXTRA_APP_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setHeaderBackgroundColor(I)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.audience.EXTRA_HEADER_BACKGROUND_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.audience.EXTRA_HEADER_TEXT_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.audience.EXTRA_PAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setTargetPerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;
    .locals 2
    .param p1, "targetPerson"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/AudienceMember;->getPeopleQualifiedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleCreation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.audience.EXTRA_TARGET_PERSON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method
