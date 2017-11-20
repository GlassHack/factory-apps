.class Lcom/google/glass/bluetooth/BluetoothTetheringState$1;
.super Ljava/lang/Object;
.source "BluetoothTetheringState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothTetheringState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/BluetoothTetheringState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/BluetoothTetheringState;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profileId"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 79
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v2, p2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$102(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 81
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$200(Lcom/google/glass/bluetooth/BluetoothTetheringState;)I

    move-result v1

    .line 82
    .local v1, "state":I
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;

    .line 83
    .local v0, "l":Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;
    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;->onBluetoothTetheringStateChanged(I)V

    goto :goto_0

    .line 86
    .end local v0    # "l":Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$400(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v3}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$300(Lcom/google/glass/bluetooth/BluetoothTetheringState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 88
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothTetheringState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothTetheringState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/BluetoothTetheringState;->access$102(Lcom/google/glass/bluetooth/BluetoothTetheringState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 93
    return-void
.end method
