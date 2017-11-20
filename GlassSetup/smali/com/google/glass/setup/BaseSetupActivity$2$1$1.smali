.class Lcom/google/glass/setup/BaseSetupActivity$2$1$1;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/glass/setup/BaseSetupActivity$2$1;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/glass/setup/BaseSetupActivity$2$1;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$2$1$1;->this$2:Lcom/google/glass/setup/BaseSetupActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/setup/BaseSetupActivity$2$1$1;->this$2:Lcom/google/glass/setup/BaseSetupActivity$2$1;

    iget-object v1, v1, Lcom/google/glass/setup/BaseSetupActivity$2$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$2;

    iget-object v1, v1, Lcom/google/glass/setup/BaseSetupActivity$2;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    const-string v1, "handleSetupAccountError"

    .line 312
    invoke-interface {v0, v1}, Lcom/google/glass/android/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 313
    return-void
.end method
