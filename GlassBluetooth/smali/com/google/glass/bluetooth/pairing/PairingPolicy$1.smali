.class Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;
.super Landroid/os/AsyncTask;
.source "PairingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/pairing/PairingPolicy;->onBluetoothAdapterEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "notUsed"    # [Ljava/lang/Void;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$100(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TetheringService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->doInBackground([Ljava/lang/Void;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "result"    # Landroid/content/SharedPreferences;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v1, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$202(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 265
    invoke-static {}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "PairingPolicy initialized"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$400(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V

    .line 268
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$500(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 272
    .local v0, "singlyPairedDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v1, v0}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$600(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$800(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$100(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$BroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    sget-object v2, Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;->INITIALIZED:Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    invoke-static {v1, v2}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$902(Lcom/google/glass/bluetooth/pairing/PairingPolicy;Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;)Lcom/google/glass/bluetooth/pairing/PairingPolicy$InitializationState;

    .line 281
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->this$0:Lcom/google/glass/bluetooth/pairing/PairingPolicy;

    invoke-static {v1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy;->access$700(Lcom/google/glass/bluetooth/pairing/PairingPolicy;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/google/glass/bluetooth/pairing/PairingPolicy$1;->onPostExecute(Landroid/content/SharedPreferences;)V

    return-void
.end method
