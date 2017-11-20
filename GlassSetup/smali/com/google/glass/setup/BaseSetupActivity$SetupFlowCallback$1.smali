.class Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$1;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->onPrepareForSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 692
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 693
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 694
    .local v2, "previousName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    .line 695
    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->buildProvisionalName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 697
    const/4 v3, 0x3

    invoke-static {}, Lcom/google/glass/setup/BaseSetupActivity;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Renaming bluetooth device from %s to:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 701
    :cond_0
    iget-object v3, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$1;->this$1:Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v3, v3, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable()V

    .line 702
    return-void

    .line 693
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "previousName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
