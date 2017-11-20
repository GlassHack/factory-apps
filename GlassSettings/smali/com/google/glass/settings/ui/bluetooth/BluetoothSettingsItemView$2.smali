.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$2;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    .line 126
    return-void
.end method
