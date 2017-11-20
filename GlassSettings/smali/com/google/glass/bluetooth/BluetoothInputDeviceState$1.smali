.class Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;
.super Ljava/lang/Object;
.source "BluetoothInputDeviceState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothInputDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profileId"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v1, p2}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$102(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 88
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$200(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)V

    .line 89
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;

    .line 90
    .local v0, "l":Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v2, v0}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$400(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;)V

    goto :goto_0

    .line 93
    .end local v0    # "l":Lcom/google/glass/bluetooth/BluetoothInputDeviceState$Listener;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$500(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$300(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 95
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothInputDeviceState$1;->this$0:Lcom/google/glass/bluetooth/BluetoothInputDeviceState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/BluetoothInputDeviceState;->access$102(Lcom/google/glass/bluetooth/BluetoothInputDeviceState;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 100
    return-void
.end method
