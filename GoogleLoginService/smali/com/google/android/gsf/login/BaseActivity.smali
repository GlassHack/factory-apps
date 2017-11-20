.class public Lcom/google/android/gsf/login/BaseActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;


# static fields
.field private static final sWirelessSettingsIntent:Landroid/content/Intent;


# instance fields
.field protected LOCAL_LOGV:Z

.field mAgreementView:Landroid/app/AlertDialog;

.field protected mAllowBackHardKey:Z

.field private mDefaultButtonShouldScroll:Z

.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field protected mLastResult:I

.field private mMarket:Lcom/google/android/gsf/login/MarketHelper;

.field protected mNextRequest:I

.field private final mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

.field protected mPrimaryButton:Landroid/view/View;

.field protected mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

.field private final mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    .line 279
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->LOCAL_LOGV:Z

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 288
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 306
    const/16 v0, -0x65

    iput v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mLastResult:I

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mDefaultButtonShouldScroll:Z

    .line 384
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$4;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    .line 408
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$5;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/BaseActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mDefaultButtonShouldScroll:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/login/BaseActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static isUsernameValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 686
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 687
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 657
    return-void
.end method

.method public appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "loginName"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .end local p2    # "loginName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "loginName":Ljava/lang/String;
    :cond_1
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method protected backupPackageExists()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 903
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.google.android.backuptransport"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 904
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.backup.BackupEnabler"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 906
    .local v0, "bi":Landroid/content/pm/ResolveInfo;
    const-string v6, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backupPackageExists() info: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_0

    move v5, v3

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", bi: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_1

    move v5, v3

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 911
    .end local v0    # "bi":Landroid/content/pm/ResolveInfo;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_2
    return v3

    .restart local v0    # "bi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v5, v4

    .line 906
    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 907
    goto :goto_2

    .line 908
    .end local v0    # "bi":Landroid/content/pm/ResolveInfo;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GLSActivity"

    const-string v5, "Could not find Backup package: com.google.android.backuptransport"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 911
    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 647
    return-void
.end method

.method public createErrorIntent(Lcom/google/android/gms/auth/firstparty/shared/Status;)Landroid/content/Intent;
    .locals 2
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 494
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/loginservice/GLSSession;->addSession(Landroid/content/Intent;)V

    .line 496
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/loginservice/StatusHelper;->toIntent(Landroid/content/Intent;)V

    .line 497
    return-object v0
.end method

.method protected disableBackKey()Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v0, v4

    .line 452
    .local v0, "isBackKey":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    move v1, v4

    .line 453
    .local v1, "isCallKey":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x18

    if-ne v6, v7, :cond_3

    move v3, v4

    .line 454
    .local v3, "isVolUpKey":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    const/16 v7, 0x19

    if-ne v6, v7, :cond_4

    move v2, v4

    .line 456
    .local v2, "isVolDownKey":Z
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isSetupWizard()Z

    move-result v5

    if-nez v5, :cond_5

    .line 457
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 464
    :cond_0
    :goto_4
    return v4

    .end local v0    # "isBackKey":Z
    .end local v1    # "isCallKey":Z
    .end local v2    # "isVolDownKey":Z
    .end local v3    # "isVolUpKey":Z
    :cond_1
    move v0, v5

    .line 451
    goto :goto_0

    .restart local v0    # "isBackKey":Z
    :cond_2
    move v1, v5

    .line 452
    goto :goto_1

    .restart local v1    # "isCallKey":Z
    :cond_3
    move v3, v5

    .line 453
    goto :goto_2

    .restart local v3    # "isVolUpKey":Z
    :cond_4
    move v2, v5

    .line 454
    goto :goto_3

    .line 458
    .restart local v2    # "isVolDownKey":Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    if-eqz v5, :cond_0

    .line 460
    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_4
.end method

.method protected getGooglePlayCheckBoxDefault()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 837
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "optInCountries":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_setup:play_email_opt_in"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "emailOptIn":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "google_setup:play_email_opt_in"

    invoke-static {v4, v5, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 857
    .local v3, "result":Z
    :goto_0
    return v3

    .line 846
    .end local v3    # "result":Z
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_2

    .line 849
    :cond_1
    const-string v4, "GLSActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem looking up Google Play email default; countryCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " optInCountries="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v3, 0x0

    .restart local v3    # "result":Z
    goto :goto_0

    .line 854
    .end local v3    # "result":Z
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .restart local v3    # "result":Z
    :goto_1
    goto :goto_0

    .end local v3    # "result":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getMarket()Lcom/google/android/gsf/login/MarketHelper;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Lcom/google/android/gsf/login/MarketHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/MarketHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public getUserData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mUserData:Ljava/util/HashMap;

    return-object v0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method protected isChromeInstalled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 862
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.chrome"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    const/4 v1, 0x1

    .line 865
    :goto_0
    return v1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isDomainNameValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "domainname"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2e

    const/4 v0, 0x0

    .line 697
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowedDomains:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mAllowedDomains:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isFirstAccount()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 624
    sget-object v3, Lcom/google/android/gsf/login/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipExistingAccountCheck:Z

    if-eqz v3, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v2

    .line 628
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 631
    .local v0, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x1

    .line 632
    .local v1, "expectedLength":I
    iget-object v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mCreatingAccount:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSSession;->mIsNewAccount:Z

    if-nez v3, :cond_2

    .line 633
    const/4 v1, 0x0

    .line 635
    :cond_2
    array-length v3, v0

    if-eq v3, v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isPrimaryUser()Z
    .locals 2

    .prologue
    .line 641
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSetupWizard()Z
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f020012

    const/4 v3, 0x0

    .line 511
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->useActionBars()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->hasMenu()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->requestWindowFeature(I)Z

    .line 520
    invoke-static {p0, v3}, Lcom/google/android/gsf/login/Compat;->actionBarSetDisplayShowHomeEnabled(Landroid/app/Activity;Z)V

    .line 521
    invoke-static {p0, v3}, Lcom/google/android/gsf/login/Compat;->actionBarSetDisplayShowTitleEnabled(Landroid/app/Activity;Z)V

    .line 529
    :goto_1
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSSession;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x1a40000

    invoke-static {v1, v2}, Lcom/google/android/gsf/login/Compat;->viewSetSystemUiVisibility(Landroid/widget/FrameLayout;I)V

    .line 539
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->disableBackKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    iput-boolean v3, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 545
    :cond_2
    if-eqz p1, :cond_3

    .line 546
    const-string v1, "nextRequest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mNextRequest:I

    .line 549
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 550
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 551
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 552
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 554
    :cond_4
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_5

    .line 556
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 558
    :cond_5
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 525
    .end local v0    # "v":Landroid/view/View;
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->requestWindowFeature(I)Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 895
    invoke-super {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->onDestroy()V

    .line 896
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/MarketHelper;->onDestroy()V

    .line 899
    :cond_0
    return-void
.end method

.method public onRequiresScroll()V
    .locals 2

    .prologue
    .line 883
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mDefaultButtonShouldScroll:Z

    if-nez v1, :cond_1

    .line 884
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 885
    .local v0, "buttonFrame":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 886
    const/high16 v1, 0x7f040000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mDefaultButtonShouldScroll:Z

    .line 891
    .end local v0    # "buttonFrame":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 469
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 470
    const-string v2, "currentFocus"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 471
    .local v0, "currentId":I
    if-eq v0, v3, :cond_0

    .line 472
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 475
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, "current":Landroid/view/View;
    const-string v2, "currentFocus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v1, "nextRequest"

    iget v2, p0, Lcom/google/android/gsf/login/BaseActivity;->mNextRequest:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    return-void

    .line 481
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onScrolledToBottom()V
    .locals 2

    .prologue
    .line 871
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mDefaultButtonShouldScroll:Z

    if-eqz v1, :cond_1

    .line 872
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 873
    .local v0, "buttonFrame":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 874
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 877
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mDefaultButtonShouldScroll:Z

    .line 879
    .end local v0    # "buttonFrame":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onSetupComplete(Z)V
    .locals 3
    .param p1, "completed"    # Z

    .prologue
    .line 782
    const v2, 0x320cf

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 786
    sget-object v1, Lcom/google/android/gsf/loginservice/JsonKey;->SHARED_PREFS:Lcom/google/android/gsf/loginservice/JsonKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/JsonKey;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 788
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-static {v0}, Lcom/google/android/gsf/login/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 790
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->onStart()V

    .line 569
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/login/BottomScrollView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

    .line 570
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/login/BottomScrollView;->setBottomScrollListener(Lcom/google/android/gsf/login/BottomScrollView$BottomScrollListener;)V

    .line 573
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 652
    return-void
.end method

.method protected overrideAllowBackHardkey()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 358
    return-void
.end method

.method public returnResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/login/BaseActivity;->returnResult(ILandroid/content/Intent;)V

    .line 808
    return-void
.end method

.method public returnResult(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 814
    iput p1, p0, Lcom/google/android/gsf/login/BaseActivity;->mLastResult:I

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/login/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 816
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->finish()V

    .line 817
    return-void
.end method

.method protected setBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "backButton"    # Landroid/view/View;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    .line 362
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$3;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 372
    :cond_0
    return-void
.end method

.method protected setDefaultButton(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "primary"    # Z

    .prologue
    .line 435
    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    .line 436
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 437
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 441
    :goto_0
    return-void

    .line 439
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 599
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 603
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    .line 604
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showAgreement(Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V
    .locals 1
    .param p1, "policy"    # Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;

    .prologue
    .line 760
    new-instance v0, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    .line 761
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 762
    return-void
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public updateWidgetState()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method protected useActionBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 797
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->hasActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/login/Compat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected validateDomainNameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 724
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->isDomainNameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    .end local p1    # "domainName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 728
    .restart local p1    # "domainName":Ljava/lang/String;
    :cond_0
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->isDomainNameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    aget-object p1, v0, v3

    goto :goto_0

    .line 733
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method protected validateUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 714
    invoke-static {p1}, Lcom/google/android/gsf/login/BaseActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    .end local p1    # "username":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 715
    .restart local p1    # "username":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gsf/login/BaseActivity;->appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "newUsername":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/login/BaseActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "newUsername":Ljava/lang/String;
    :goto_1
    move-object p1, v0

    goto :goto_0

    .restart local v0    # "newUsername":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
