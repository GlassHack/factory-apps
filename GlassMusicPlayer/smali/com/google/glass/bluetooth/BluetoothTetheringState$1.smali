.class Lcom/google/glass/bluetooth/BluetoothTetheringState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0, p2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$102(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 81
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$200(Lcom/google/glass/bluetooth/BluetoothTetheringState;)I

    move-result v1

    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 83
    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$102(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 93
    return-void
.end method
