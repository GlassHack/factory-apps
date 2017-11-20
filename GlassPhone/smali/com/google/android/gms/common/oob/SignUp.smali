.class public Lcom/google/android/gms/common/oob/SignUp;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_OOB_SIGN_UP:Ljava/lang/String; = "com.google.android.gms.common.oob.OOB_SIGN_UP"

.field public static final EXTRAS_CALLING_APP_DESCRIPTION:Ljava/lang/String; = "com.google.android.gms.common.oob.EXTRAS_APP_DESCRIPTION"

.field public static final EXTRAS_CLIENT_CALLING_APP_PACKAGE:Ljava/lang/String; = "com.google.android.gms.common.oob.EXTRAS_CLIENT_CALLING_APP_PACKAGE"

.field public static final EXTRAS_PROMO_APP_PACKAGE:Ljava/lang/String; = "com.google.android.gms.common.oob.EXTRAS_PROMO_APP_PACKAGE"

.field public static final EXTRAS_PROMO_APP_TEXT:Ljava/lang/String; = "com.google.android.gms.common.oob.EXTRAS_PROMO_APP_TEXT"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "com.google.android.gms.common.oob.EXTRA_ACCOUNT_NAME"

.field public static final EXTRA_BACK_BUTTON_NAME:Ljava/lang/String; = "com.google.android.gms.common.oob.EXTRA_BACK_BUTTON_NAME"

.field public static final EXTRA_GPSRC:Ljava/lang/String; = "com.google.android.gms.plus.GPSRC"

.field public static final EXTRA_OVERRIDE_THEME:Ljava/lang/String; = "com.google.android.gms.plus.OVERRIDE_THEME"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final THEME_DEFAULT:I = 0x0

.field public static final THEME_FULL:I = 0x1

.field public static final THEME_SETUP_WIZARD:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/c;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/common/oob/SignUp;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSignUpState(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "The accountName is required"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "The requiredFeatures parameter is required"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v0, "com.google"

    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Given account does not exist on the device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public static isSignedUpBlocking(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "requiredFeatures"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/android/gms/common/oob/SignUp;->checkSignUpState(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static newSignUpIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/oob/SignUp;->newSignUpIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static newSignUpIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "backButtonName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.OOB_SIGN_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.EXTRA_BACK_BUTTON_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static newSignUpIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "backButtonName"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "promoText"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.OOB_SIGN_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.EXTRA_BACK_BUTTON_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.EXTRAS_PROMO_APP_PACKAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.oob.EXTRAS_PROMO_APP_TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
