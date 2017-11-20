.class Lcom/google/glass/setup/SetupActivity$3;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupActivity;->onDestroyInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/glass/setup/SetupActivity$3;->this$0:Lcom/google/glass/setup/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/setup/SetupActivity$3;->this$0:Lcom/google/glass/setup/SetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/SetupActivity;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 249
    return-void
.end method
