.class public Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
.implements Lcom/google/android/gms/common/audience/dialogs/AclSelection$Results;
.implements Lcom/google/android/gms/common/audience/dialogs/CircleSelection$Results;
.implements Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
.implements Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
.implements Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
.implements Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Results;


# static fields
.field public static final DOMAIN_RESTRICTED_NOT_VISIBLE:I = 0x0

.field public static final DOMAIN_RESTRICTED_OFF:I = 0x2

.field public static final DOMAIN_RESTRICTED_ON:I = 0x1


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getAccountName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_ACCOUNT_NAME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAddedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;
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
    const-string v0, "com.google.android.gms.common.acl.EXTRA_ADDED_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllCirclesCheckboxText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "ALL_CIRCLES_CHECKBOX_TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllCirclesChecked(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "ALL_CIRCLES_CHECKED"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAllContactsCheckboxText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "ALL_CONTACTS_CHECKBOX_TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllContactsChecked(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "ALL_CONTACTS_CHECKED"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAllowEmptySelection(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "ALLOW_EMPTY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCancelText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "CANCEL_TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientApplicationId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_CLIENT_APPLICATION_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescription(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "DESCRIPTION_TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDomainRestricted(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_DOMAIN_RESTRICTED"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getHasShowCircles(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "HAS_SHOW_CIRCLES"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHeaderBackgroundColor(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultColor"    # I

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_HEADER_BACKGROUND_COLOR"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getHeaderTextColor(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultColor"    # I

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_HEADER_TEXT_COLOR"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIncludeSuggestionsWithPeople(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "EXTRA_INCLUDE_SUGGESTIONS_WITH_PEOPLE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInitialAudienceMembers(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKnownAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;
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
    const-string v0, "INITIAL_ACL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadCircles(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "LOAD_CIRCLES"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLoadPeople(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "LOAD_PEOPLE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLoadSuggested(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOULD_LOAD_SUGGESTED"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLoadSystemGroups(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOULD_LOAD_GROUPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMaxSuggestedDeviceContacts(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    const-string v0, "EXTRA_MAX_SUGGESTED_DEVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxSuggestedImages(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    const-string v0, "EXTRA_MAX_SUGGESTED_IMAGES"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxSuggestedListItems(Landroid/content/Intent;I)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .prologue
    const-string v0, "EXTRA_MAX_SUGGESTED_LIST_ITEMS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOkText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "OK_TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlusPageId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_PLUS_PAGE_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;
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
    const-string v0, "com.google.android.gms.common.acl.EXTRA_REMOVED_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchDeviceContacts(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "EXTRA_SEARCH_DEVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSearchEmail(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "EXTRA_SEARCH_EMAIL"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSelectedAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 3
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getInitialAudienceMembers(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getRemovedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getAddedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public static getShowCancel(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOW_CANCEL_VISIBLE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowChips(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOW_CHIPS_VISIBLE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowCircles(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOW_ALL_CIRCLES_CHECKBOX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowContacts(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOW_ALL_CONTACTS_CHECKBOX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowHiddenCirclesText(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOW_HIDDEN_CIRCLES_TEXT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_TITLE_TEXT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleLogo(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "TITLE_LOGO"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdatePerson(Landroid/content/Intent;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->forPersonWithPeopleQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON"

    sget-object v1, Lcom/google/android/gms/common/people/data/AudienceMember;->CREATOR:Lcom/google/android/gms/common/people/data/b;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    goto :goto_0
.end method

.method public static getUpdatePersonId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getUpdatePerson(Landroid/content/Intent;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getPeopleQualifiedId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static shouldShowSectionTitles(Landroid/content/Intent;Z)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # Z

    .prologue
    const-string v0, "SHOW_SECTION_TITLES"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getAddedAudienceDelta()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getAddedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAddedCirclesDelta()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getAddedAudienceDelta()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllCirclesChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getAllCirclesChecked(Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method public getAllContactsChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getAllContactsChecked(Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method public getDomainRestricted()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getDomainRestricted(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method

.method public getInitialAudienceMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getInitialAudienceMembers(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInitialCircles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getInitialAudienceMembers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedAudienceDelta()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getRemovedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCirclesDelta()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getRemovedAudienceDelta()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAudienceMembers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getSelectedAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCircles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->getSelectedAudienceMembers()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAddedAudienceDelta(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "audience":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_ADDED_AUDIENCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setAllCirclesCheckboxText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "allCirclesCheckBoxText"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "ALL_CIRCLES_CHECKBOX_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setAllCirclesChecked(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "ALL_CIRCLES_CHECKED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setAllCirclesChecked(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAllCirclesChecked(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAllContactsCheckboxText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "ALL_CONTACTS_CHECKBOX_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setAllContactsChecked(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "ALL_CONTACTS_CHECKED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setAllContactsChecked(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAllContactsChecked(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAllowEmptySelection(Z)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setAllowEmptySelection(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAllowEmptySelection(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "ALLOW_EMPTY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "cancelText"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "CANCEL_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "clientApplicationId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_CLIENT_APPLICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "DESCRIPTION_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDomainRestricted(I)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setDomainRestricted(I)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDomainRestricted(I)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "flag"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_DOMAIN_RESTRICTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setHasShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "has"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "HAS_SHOW_CIRCLES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setHasShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setHasShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderBackgroundColor(I)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_HEADER_BACKGROUND_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_HEADER_TEXT_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setIncludeSuggestionsWithPeople(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "includeSuggestions"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_INCLUDE_SUGGESTIONS_WITH_PEOPLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setInitialAcl(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialAcl(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInitialAcl(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialAcl(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setInitialAcl(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 0
    .param p1, "audience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialAudience(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    return-object p0
.end method

.method public setInitialAcl(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 0
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

    .prologue
    .local p1, "acl":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialAudience(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    return-object p0
.end method

.method public setInitialAudience(Lcom/google/android/gms/common/people/data/Audience;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 1
    .param p1, "audience"    # Lcom/google/android/gms/common/people/data/Audience;

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/common/people/data/Audience;->getAudienceMemberList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialAudience(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    return-object p0
.end method

.method public setInitialAudience(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 3
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

    .prologue
    .local p1, "audience":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-static {p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 0
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

    .prologue
    .local p1, "circles":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialAudience(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    return-object p0
.end method

.method public bridge synthetic setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setInitialCircles(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setKnownAudienceMembers(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setKnownAudienceMembers(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setKnownAudienceMembers(Ljava/util/List;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 3
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

    .prologue
    .local p1, "audience":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "INITIAL_ACL"

    invoke-static {p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setLoadCircles(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "loadCircles"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "LOAD_CIRCLES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setLoadPeople(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "loadPeople"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "LOAD_PEOPLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setLoadSuggested(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "loadSuggested"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOULD_LOAD_SUGGESTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setLoadSystemGroups(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "loadGroups"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOULD_LOAD_GROUPS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setMaxSuggestedDeviceContacts(I)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "maxSuggestedDevice"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_MAX_SUGGESTED_DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setMaxSuggestedImages(I)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "maxSuggestedImages"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_MAX_SUGGESTED_IMAGES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setMaxSuggestedListItems(I)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "maxSuggestedListItems"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_MAX_SUGGESTED_LIST_ITEMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setOkText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setOkText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setOkText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "okText"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "OK_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "plusPageId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_PLUS_PAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setPlusPageId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setRemovedAudienceDelta(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "audience":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/common/people/data/AudienceMember;>;"
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_REMOVED_AUDIENCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setSearchDeviceContacts(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "searchDeviceContacts"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_SEARCH_DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setSearchEmail(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "searchEmail"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_SEARCH_EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setShowCancel(Z)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setShowCancel(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setShowCancel(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "cancelVisible"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOW_CANCEL_VISIBLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setShowChips(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "chipsVisible"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOW_CHIPS_VISIBLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOW_ALL_CIRCLES_CHECKBOX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setShowCircles(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setShowContacts(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOW_ALL_CONTACTS_CHECKBOX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setShowContacts(Z)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setShowContacts(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setShowHiddenCirclesText(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "showText"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOW_HIDDEN_CIRCLES_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setShowSectionTitles(Z)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "showSectionTitles"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "SHOW_SECTION_TITLES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setTitleLogo(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "TITLE_LOGO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setTitleLogo(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setTitleLogo(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_TITLE_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$SelectBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/FaclSelection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setTitleText(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUpdatePerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1, "person"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setUpdatePerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/people/data/AudienceMember;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setUpdatePerson(Lcom/google/android/gms/common/people/data/AudienceMember;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;
    .locals 3
    .param p1, "peopleQualifiedId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "People qualified ID"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fe;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v1}, Lcom/google/android/gms/common/people/data/AudienceMember;->forPersonWithPeopleQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/CircleSelection$UpdateBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;->setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/dialogs/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method
