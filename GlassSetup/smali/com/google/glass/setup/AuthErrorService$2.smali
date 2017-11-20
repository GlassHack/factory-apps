.class Lcom/google/glass/setup/AuthErrorService$2;
.super Ljava/lang/Object;
.source "AuthErrorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/AuthErrorService;->handleSetupViaCompanionApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/AuthErrorService;

.field final synthetic val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/AuthErrorService;Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/AuthErrorService;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/setup/AuthErrorService$2;->this$0:Lcom/google/glass/setup/AuthErrorService;

    iput-object p2, p0, Lcom/google/glass/setup/AuthErrorService$2;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 147
    invoke-static {}, Lcom/google/glass/setup/AuthErrorService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Try to add account back"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService$2;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-static {v0}, Lcom/google/glass/setup/AuthErrorService;->access$400(Lcom/google/glass/setup/AuthErrorService;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/setup/AuthErrorService$2;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v1, v1, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/setup/AuthErrorService$2;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v2, v2, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/setup/AuthErrorService$2;->val$loginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->token:Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v5, Lcom/google/glass/setup/AuthErrorService$2$1;

    invoke-direct {v5, p0}, Lcom/google/glass/setup/AuthErrorService$2$1;-><init>(Lcom/google/glass/setup/AuthErrorService$2;)V

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/auth/AuthUtils;->addGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/auth/AuthUtils$AddAccountListener;)Z

    .line 167
    return-void
.end method
