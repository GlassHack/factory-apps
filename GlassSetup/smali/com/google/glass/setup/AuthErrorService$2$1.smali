.class Lcom/google/glass/setup/AuthErrorService$2$1;
.super Ljava/lang/Object;
.source "AuthErrorService.java"

# interfaces
.implements Lcom/google/glass/auth/AuthUtils$AddAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/AuthErrorService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/setup/AuthErrorService$2;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/AuthErrorService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/setup/AuthErrorService$2;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/setup/AuthErrorService$2$1;->this$1:Lcom/google/glass/setup/AuthErrorService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountNotMatch()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService$2$1;->this$1:Lcom/google/glass/setup/AuthErrorService$2;

    iget-object v0, v0, Lcom/google/glass/setup/AuthErrorService$2;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-static {v0}, Lcom/google/glass/setup/AuthErrorService;->access$300(Lcom/google/glass/setup/AuthErrorService;)V

    .line 153
    return-void
.end method

.method public onSignIn()V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/google/glass/setup/AuthErrorService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Successfully updated credential silently."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService$2$1;->this$1:Lcom/google/glass/setup/AuthErrorService$2;

    iget-object v0, v0, Lcom/google/glass/setup/AuthErrorService$2;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-virtual {v0}, Lcom/google/glass/setup/AuthErrorService;->stopSelf()V

    .line 165
    return-void
.end method

.method public onSignInError()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/setup/AuthErrorService$2$1;->this$1:Lcom/google/glass/setup/AuthErrorService$2;

    iget-object v0, v0, Lcom/google/glass/setup/AuthErrorService$2;->this$0:Lcom/google/glass/setup/AuthErrorService;

    invoke-static {v0}, Lcom/google/glass/setup/AuthErrorService;->access$300(Lcom/google/glass/setup/AuthErrorService;)V

    .line 158
    return-void
.end method
