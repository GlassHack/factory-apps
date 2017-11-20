.class Lcom/google/glass/setup/BaseSetupActivity$6;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Lcom/google/glass/auth/AuthUtils$AddAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity;->internalAddGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;

.field final synthetic val$btDeviceForPair:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/BaseSetupActivity;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$6;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iput-object p2, p0, Lcom/google/glass/setup/BaseSetupActivity$6;->val$btDeviceForPair:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountNotMatch()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$6;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_FATAL_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;)V

    .line 567
    return-void
.end method

.method public onSignIn()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$6;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$6;->val$btDeviceForPair:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/BaseSetupActivity;->onLoginSucceeded(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public onSignInError()V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$6;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    sget-object v1, Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;->SETUP_SIGN_IN_ERROR:Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;

    sget v2, Lcom/google/glass/setup/R$string;->sign_in_failed_tips:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/BaseSetupActivity;->handleSetupError(Lcom/google/glass/setup/BaseSetupActivity$ErrorCode;I)V

    .line 572
    return-void
.end method
