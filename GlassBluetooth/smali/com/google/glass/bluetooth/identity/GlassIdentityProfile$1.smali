.class Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;
.super Ljava/lang/Object;
.source "GlassIdentityProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->onBluetoothAdapterEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;->this$0:Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 79
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;->this$0:Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    invoke-static {v2}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->access$000(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)Lcom/google/glass/bluetooth/BluetoothServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothServerSocket;->accept()Lcom/google/glass/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 80
    .local v1, "socket":Lcom/google/glass/bluetooth/BluetoothSocket;
    invoke-static {}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Connected to bluetooth device: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothSocket;->close()V

    .line 82
    iget-object v2, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;->this$0:Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    invoke-static {v2}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->access$204(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "socket":Lcom/google/glass/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile$1;->this$0:Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;

    invoke-static {v2}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->access$304(Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;)I

    .line 86
    invoke-static {}, Lcom/google/glass/bluetooth/identity/GlassIdentityProfile;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Unable to accept socket."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method
