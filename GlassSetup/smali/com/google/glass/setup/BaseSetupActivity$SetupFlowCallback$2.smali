.class Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$2;
.super Ljava/lang/Object;
.source "BaseSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->cancelSetup(Lcom/google/glass/setup/SetupFlowController$SetupMethod;)V
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
    .line 733
    iput-object p1, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$2;->this$1:Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback$2;->this$1:Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity$SetupFlowCallback;->this$0:Lcom/google/glass/setup/BaseSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/BaseSetupActivity;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 738
    return-void
.end method
