.class Lcom/google/glass/setup/UpdateCredentialsActivity$2;
.super Ljava/lang/Object;
.source "UpdateCredentialsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/UpdateCredentialsActivity;->updateAccountCredentials(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/UpdateCredentialsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/UpdateCredentialsActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    iput-object p2, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 118
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    invoke-static {v0}, Lcom/google/glass/setup/UpdateCredentialsActivity;->access$000(Lcom/google/glass/setup/UpdateCredentialsActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Try to add account back"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->this$0:Lcom/google/glass/setup/UpdateCredentialsActivity;

    iget-object v1, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/setup/UpdateCredentialsActivity$2;->val$token:Ljava/lang/String;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/setup/UpdateCredentialsActivity;->internalAddGoogleAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 120
    return-void
.end method
