.class public Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/audience/dialogs/CircleUpdate;
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

    const-string v1, "com.google.android.gms.common.acl.ACTION_ONLY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;

    return-void
.end method

.method public static getAccountName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_ACCOUNT_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientApplicationId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_CLIENT_APPLICATION_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPageId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_PLUS_PAGE_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStartViewNamespace(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_START_VIEW_NAMESPACE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "sg"

    :cond_0
    return-object v0
.end method

.method public static getStartViewTypeNum(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_START_VIEW_TYPE_NUM"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTargetCircleId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_TARGET_CIRCLE_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatePerson(Landroid/content/Intent;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "EXTRA_UPDATE_PERSON"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
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
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
    .locals 2
    .param p1, "clientApplicationId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_CLIENT_APPLICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_PLUS_PAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setStartViewNamespace(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_START_VIEW_NAMESPACE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setStartViewTypeNum(I)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
    .locals 2
    .param p1, "typeNum"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_START_VIEW_TYPE_NUM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setTargetCircleId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
    .locals 2
    .param p1, "targetCircleId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_TARGET_CIRCLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setUpdatePerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;
    .locals 2
    .param p1, "updatePerson"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/CircleUpdate$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_UPDATE_PERSON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method
