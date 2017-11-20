.class public Lcom/google/android/gms/common/oob/SignUp;
.super Ljava/lang/Object;


# static fields
.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/c;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/common/oob/SignUp;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
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
