.class Lcom/google/glass/settings/ui/HIDSettingsItemView$1;
.super Ljava/lang/Object;
.source "HIDSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/HIDSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/HIDSettingsItemView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothInputDeviceStateChanged(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 68
    invoke-static {}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v3, p2}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$100(Lcom/google/glass/settings/ui/HIDSettingsItemView;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$300(Lcom/google/glass/settings/ui/HIDSettingsItemView;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v1, p2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$400(Lcom/google/glass/settings/ui/HIDSettingsItemView;)V

    .line 75
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v3, p2}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$100(Lcom/google/glass/settings/ui/HIDSettingsItemView;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/settings/ui/HIDSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/HIDSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/HIDSettingsItemView;->access$300(Lcom/google/glass/settings/ui/HIDSettingsItemView;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
