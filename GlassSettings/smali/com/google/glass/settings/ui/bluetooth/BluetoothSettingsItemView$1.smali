.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;
.super Ljava/lang/Object;
.source "BluetoothSettingsItemView.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;


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
    .line 111
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothTetheringStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$002(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;Z)Z

    .line 115
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;->access$100(Lcom/google/glass/settings/ui/bluetooth/BluetoothSettingsItemView;)V

    .line 116
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
