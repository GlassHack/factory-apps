.class Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "BluetoothSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->showPairingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;->this$0:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->finish()V

    .line 185
    return-void
.end method
