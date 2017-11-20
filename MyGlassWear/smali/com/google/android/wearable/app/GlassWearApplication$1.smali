.class Lcom/google/android/wearable/app/GlassWearApplication$1;
.super Ljava/lang/Object;
.source "GlassWearApplication.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/GlassWearApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/app/GlassWearApplication;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/GlassWearApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/wearable/app/GlassWearApplication;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/wearable/app/GlassWearApplication$1;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAdapterDisabled()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/google/android/wearable/app/GlassWearApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Bluetooth adapter disabled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-static {}, Lcom/google/android/wearable/app/GlassWearApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "BluetoothAdapter ready, starting ConnectionSetupService."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication$1;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/wearable/app/GlassWearApplication$1;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    const-class v4, Lcom/google/android/wearable/app/ConnectionSetupService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/google/android/wearable/app/GlassWearApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 61
    .local v0, "connectionSetupService":Landroid/content/ComponentName;
    invoke-static {}, Lcom/google/android/wearable/app/GlassWearApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "onCreate [connectionSetupService=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication$1;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    invoke-static {v1}, Lcom/google/android/wearable/app/GlassWearApplication;->access$100(Lcom/google/android/wearable/app/GlassWearApplication;)Lcom/google/glass/bluetooth/BluetoothAdapterState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 63
    return-void
.end method
