.class Lcom/android/keyguard/KeyguardViewMediator$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1018
    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    const-string v1, "seq"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1022
    .local v0, "sequence":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 1023
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$1702(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 1026
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1028
    :cond_0
    monitor-exit v2

    .line 1030
    .end local v0    # "sequence":I
    :cond_1
    return-void

    .line 1028
    .restart local v0    # "sequence":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
