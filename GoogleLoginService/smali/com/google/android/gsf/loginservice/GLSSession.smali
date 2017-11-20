.class public Lcom/google/android/gsf/loginservice/GLSSession;
.super Ljava/lang/Object;
.source "GLSSession.java"


# static fields
.field private static final sRand:Ljava/util/Random;

.field private static final sSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/loginservice/GLSSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field public mAccountAuthenticatorResponseCalled:Z

.field public mAccountManagerOptions:Landroid/os/Bundle;

.field public mAccountNameCheckDetail:Ljava/lang/String;

.field public mAccountNameSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/loginservice/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mAgreedToChromeTosAndPrivacy:Z

.field public mAgreedToMobileTos:Ljava/lang/Boolean;

.field public mAgreedToPersonalizedContent:Z

.field public mAgreedToPlayEmail:Z

.field public mAgreedToPlayTos:Z

.field public mAgreedToWebHistory:Z

.field public mAllowGooglePlus:Z

.field public mAllowedDomains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public mCallingUID:I

.field public mCaptchaAnswer:Ljava/lang/String;

.field public mCaptchaToken:Ljava/lang/String;

.field public mCreatingAccount:Z

.field public mDetail:Ljava/lang/String;

.field public mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

.field public mHasGooglePlus:Z

.field public mIsBrowserFlowRequired:Z

.field public mIsConsented:Z

.field public mIsEduSignin:Z

.field public mIsNewAccount:Z

.field public mKey:Ljava/lang/String;

.field public mNameActivityCompleted:Z

.field public mOfferIntent:Landroid/content/Intent;

.field public mOfferMessageHtml:Ljava/lang/String;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mPerformBackup:Z

.field public mPerformRestore:Z

.field public mPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoneCountryCode:Ljava/lang/String;

.field public mPhoneCountryList:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mPhotoActivityCompleted:Z

.field public mProfilePhoto:Landroid/graphics/Bitmap;

.field public mProfileResult:I

.field public mProvisionedEmail:Ljava/lang/String;

.field public mProvisionedName:Ljava/lang/String;

.field public mRopRevision:Ljava/lang/String;

.field public mRopText:Ljava/lang/String;

.field public mSecondaryEmail:Ljava/lang/String;

.field public mSecurityAnswer:Ljava/lang/String;

.field public mSecurityQuestion:Ljava/lang/String;

.field public mSetupWizard:Z

.field public mShowOffer:Z

.field public mShownGoogleServices:Z

.field public mShownName:Z

.field public mSuppressCreditCardRequestActivity:Z

.field public mSuppressGoogleServicesActivity:Z

.field public mSuppressLoginTos:Z

.field public mSuppressNameCheck:Z

.field public mTermsOfServiceShown:Z

.field public mUrl:Ljava/lang/String;

.field public mUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mUserSelectedGooglePlus:Z

.field public mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSSession;->sRand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponseCalled:Z

    .line 161
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaAnswer:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mCaptchaToken:Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    .line 172
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mProfileResult:I

    .line 180
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    .line 194
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mActivities:Ljava/util/List;

    .line 238
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    .line 239
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mKey:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public static declared-synchronized cleanUp(Ljava/lang/String;)V
    .locals 2
    .param p0, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v1, Lcom/google/android/gsf/loginservice/GLSSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v1

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static fromBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 361
    new-instance v3, Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-direct {v3, p1}, Lcom/google/android/gsf/loginservice/GLSSession;-><init>(Ljava/lang/String;)V

    .line 362
    .local v3, "s":Lcom/google/android/gsf/loginservice/GLSSession;
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v4, "username"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    .line 366
    const-string v4, "callingUID"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    .line 367
    const-string v4, "error"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "err":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    .line 369
    const-string v4, "detail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    .line 370
    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->URL:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    .line 371
    const-string v4, "permission"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mPermission:Ljava/util/ArrayList;

    .line 372
    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 374
    const-string v4, "accountAuthenticatorResponseCalled"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponseCalled:Z

    .line 376
    const-string v4, "key"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mKey:Ljava/lang/String;

    .line 377
    const-string v4, "isNewAccount"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mIsNewAccount:Z

    .line 378
    const-string v4, "setupWizard"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    .line 379
    const-string v4, "termsOfServiceShown"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    .line 380
    const-string v4, "nameActivityCompleted"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mNameActivityCompleted:Z

    .line 381
    const-string v4, "photoActivityCompleted"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mPhotoActivityCompleted:Z

    .line 382
    const-string v4, "secondaryEmail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    .line 383
    const-string v4, "securityQuestion"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityQuestion:Ljava/lang/String;

    .line 384
    const-string v4, "securityAnswer"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityAnswer:Ljava/lang/String;

    .line 385
    const-string v4, "accessToken"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    .line 386
    const-string v4, "accountManagerOptions"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 387
    const-string v4, "userSelectedGooglePlus"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    .line 388
    const-string v4, "creatingAccount"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    .line 389
    const-string v4, "allowGooglePlus"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    .line 390
    const-string v4, "hasGooglePlus"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    .line 391
    const-string v4, "profileResult"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mProfileResult:I

    .line 392
    const-string v4, "url"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    .line 394
    const-string v4, "userData"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .local v2, "kv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_1

    .line 396
    iget-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    mul-int/lit8 v5, v1, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    .end local v1    # "i":I
    .end local v2    # "kv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromJSON(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v4

    goto/16 :goto_0

    .line 401
    .restart local v1    # "i":I
    .restart local v2    # "kv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v4, "showOffer"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    .line 402
    const-string v4, "offerIntent"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferIntent:Landroid/content/Intent;

    .line 403
    const-string v4, "offerMessageHtml"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    .line 405
    const-string v4, "agreedToPlayTos"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayTos:Z

    .line 406
    const-string v4, "agreedToPlayEmail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayEmail:Z

    .line 408
    const-string v4, "shownName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mShownName:Z

    .line 409
    const-string v4, "provisionedEmail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    .line 410
    const-string v4, "provisionedName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    .line 412
    const-string v4, "agreedToChromeTosAndPrivacy"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToChromeTosAndPrivacy:Z

    .line 413
    const-string v4, "phoneNumber"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    .line 414
    const-string v4, "phoneCountryCode"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    .line 416
    const-string v4, "performBackup"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformBackup:Z

    .line 417
    const-string v4, "performRestore"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformRestore:Z

    .line 419
    const-string v4, "suppressCreditCardRequestActivity"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressCreditCardRequestActivity:Z

    .line 421
    const-string v4, "suppressGoogleServicesActivity"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressGoogleServicesActivity:Z

    .line 423
    const-string v4, "suppressNameCheck"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressNameCheck:Z

    .line 424
    const-string v4, "suppressLoginTos"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressLoginTos:Z

    .line 426
    const-string v4, "isEduSignin"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mIsEduSignin:Z

    .line 427
    const-string v4, "allowed_domains"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowedDomains:Ljava/util/ArrayList;

    .line 428
    const-string v4, "callingAppDescription"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    .line 429
    const-string v4, "isConsented"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mIsConsented:Z

    .line 431
    const-string v4, "ropRevision"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mRopRevision:Ljava/lang/String;

    .line 432
    const-string v4, "ropText"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mRopText:Ljava/lang/String;

    .line 434
    const-string v4, "agreedToWebHistory"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToWebHistory:Z

    .line 435
    const-string v4, "agreedToPersonalizedContent"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPersonalizedContent:Z

    .line 436
    const-string v4, "accountNameSuggestions"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameSuggestions:Ljava/util/ArrayList;

    .line 437
    const-string v4, "accountNameCheckDetail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameCheckDetail:Ljava/lang/String;

    .line 438
    const-string v4, "isBrowserFlowRequired"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mIsBrowserFlowRequired:Z

    .line 439
    return-object v3
.end method

.method public static getOrCreateSession(Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 90
    .local v1, "sessionId":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 91
    .local v0, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    if-eqz v1, :cond_1

    .line 92
    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSSession;->getSession(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v0

    .line 97
    :goto_1
    return-object v0

    .line 89
    .end local v0    # "session":Lcom/google/android/gsf/loginservice/GLSSession;
    .end local v1    # "sessionId":Ljava/lang/String;
    :cond_0
    const-string v2, "session"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    .restart local v0    # "session":Lcom/google/android/gsf/loginservice/GLSSession;
    .restart local v1    # "sessionId":Ljava/lang/String;
    :cond_1
    const-string v2, "GLSUser"

    const-string v3, "GLS Activity without session"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSSession;->newSession()Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v0

    goto :goto_1
.end method

.method public static getSession(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSSession;

    .line 78
    .local v0, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    if-nez v0, :cond_1

    .line 79
    const-string v1, "GLSUser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "GLSUser"

    const-string v2, "Session was previously removed, creating new one"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSSession;

    .end local v0    # "session":Lcom/google/android/gsf/loginservice/GLSSession;
    invoke-direct {v0, p0}, Lcom/google/android/gsf/loginservice/GLSSession;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v0    # "session":Lcom/google/android/gsf/loginservice/GLSSession;
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    return-object v0
.end method

.method public static getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSSession;

    return-object v0
.end method

.method public static newSession()Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 4

    .prologue
    .line 59
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    .line 61
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "keysInInsertOrder":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSSession;->newUncachedSession()Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v1

    .line 65
    .local v1, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    iget-object v3, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v1
.end method

.method public static newUncachedSession()Lcom/google/android/gsf/loginservice/GLSSession;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSSession;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSSession;->sRand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gsf/loginservice/GLSSession;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "session":Lcom/google/android/gsf/loginservice/GLSSession;
    return-object v0
.end method

.method public static sessionCount()I
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSSession;->sSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addSession(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "o"    # Landroid/os/Bundle;

    .prologue
    .line 283
    const-string v4, "username"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v4, "callingUID"

    iget v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingUID:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-eqz v4, :cond_0

    .line 286
    const-string v4, "error"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mError:Lcom/google/android/gms/auth/firstparty/shared/Status;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/firstparty/shared/Status;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    const-string v4, "detail"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v4, Lcom/google/android/gsf/loginservice/ResponseKey;->URL:Lcom/google/android/gsf/loginservice/ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "permission"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mPermission:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 291
    const-string v4, "accountAuthenticatorResponse"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    const-string v4, "accountAuthenticatorResponseCalled"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountAuthenticatorResponseCalled:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    const-string v4, "key"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v4, "isNewAccount"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mIsNewAccount:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    const-string v4, "setupWizard"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    const-string v4, "termsOfServiceShown"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mTermsOfServiceShown:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const-string v4, "nameActivityCompleted"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mNameActivityCompleted:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    const-string v4, "photoActivityCompleted"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mPhotoActivityCompleted:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    const-string v4, "secondaryEmail"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v4, "securityQuestion"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityQuestion:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v4, "securityAnwser"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSecurityAnswer:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v4, "accessToken"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v4, "accountManagerOptions"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    const-string v4, "userSelectedGooglePlus"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserSelectedGooglePlus:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string v4, "creatingAccount"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    const-string v4, "allowGooglePlus"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowGooglePlus:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    const-string v4, "hasGooglePlus"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mHasGooglePlus:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    const-string v4, "profileResult"

    iget v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mProfileResult:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string v4, "url"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, "userData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 316
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 317
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    check-cast v3, Ljava/lang/String;

    .end local v3    # "v":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v1    # "k":Ljava/lang/String;
    :cond_2
    const-string v4, "userData"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    const-string v4, "showOffer"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    const-string v4, "offerIntent"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferIntent:Landroid/content/Intent;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    const-string v4, "offerMessageHtml"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v4, "agreedToPlayTos"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayTos:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    const-string v4, "agreedToPlayEmail"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPlayEmail:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string v4, "shownName"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mShownName:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string v4, "provisionedEmail"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedEmail:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v4, "provisionedName"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mProvisionedName:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "agreedToChromeTosAndPrivacy"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToChromeTosAndPrivacy:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const-string v4, "phoneNumber"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v4, "phoneCountryCode"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mPhoneCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v4, "performBackup"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformBackup:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v4, "performRestore"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mPerformRestore:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    const-string v4, "suppressCreditCardRequestActivity"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressCreditCardRequestActivity:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const-string v4, "suppressGoogleServicesActivity"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressGoogleServicesActivity:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    const-string v4, "suppressNameCheck"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressNameCheck:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    const-string v4, "suppressLoginTos"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressLoginTos:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    const-string v4, "isEduSignin"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mIsEduSignin:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    const-string v4, "allowed_domains"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowedDomains:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 348
    const-string v4, "callingAppDescription"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mCallingAppDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    const-string v4, "isConsented"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mIsConsented:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    const-string v4, "ropRevision"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mRopRevision:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v4, "ropText"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mRopText:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v4, "agreedToWebHistory"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToWebHistory:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    const-string v4, "agreedToPersonalizedContent"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAgreedToPersonalizedContent:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v4, "accountNameSuggestions"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    const-string v4, "accountNameCheckDetail"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mAccountNameCheckDetail:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "isBrowserFlowRequired"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSSession;->mIsBrowserFlowRequired:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    return-void
.end method
