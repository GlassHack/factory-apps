.class public final Lcom/google/android/location/app/receiver/SystemBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 40
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1, p2}, Lcom/google/android/location/app/service/BootCompletedBroadcastService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/location/app/service/PackageBroadcastService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
