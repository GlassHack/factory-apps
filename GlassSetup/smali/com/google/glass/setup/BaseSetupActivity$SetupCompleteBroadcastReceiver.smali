.class final Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BaseSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/BaseSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SetupCompleteBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/BaseSetupActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/setup/BaseSetupActivity;)V
    .locals 3

    .prologue
    .line 768
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 769
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.setup.ACTION_SETUP_COMPLETE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 770
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 774
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->barcodeLoginFields:Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;

    iget-boolean v0, v0, Lcom/google/glass/setup/BaseSetupActivity$LoginFieldsHelper;->enableAdb:Z

    if-eqz v0, :cond_0

    .line 780
    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Enabling adb after successful device setup"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupCompleteBroadcastReceiver;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    invoke-virtual {v0}, Lcom/google/glass/setup/BaseSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    :cond_0
    return-void
.end method
