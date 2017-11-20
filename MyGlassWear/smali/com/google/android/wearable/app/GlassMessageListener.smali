.class public Lcom/google/android/wearable/app/GlassMessageListener;
.super Ljava/lang/Object;
.source "GlassMessageListener.java"

# interfaces
.implements Lcom/google/android/gms/wearable/MessageApi$MessageListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "glass_wear"

    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassMessageListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    iput-object p1, p0, Lcom/google/android/wearable/app/GlassMessageListener;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private broadcastWearOpenOnPhoneSuccess(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.WEAR_HOST_CALLBACK_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassMessageListener;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/wearable/DataMap;->fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v1

    .line 28
    .local v1, "rpcData":Lcom/google/android/gms/wearable/DataMap;
    iget-object v3, p0, Lcom/google/android/wearable/app/GlassMessageListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "onMessageReceived [event=%s, dataMap=%s]."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.result"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.result"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    .line 34
    .local v2, "rpcResults":Lcom/google/android/gms/wearable/DataMap;
    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.successful"

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/wearable/DataMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, "openOnPhoneSuccess":Z
    iget-object v3, p0, Lcom/google/android/wearable/app/GlassMessageListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Wear host rpc callback received. Success=%b"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0, v0}, Lcom/google/android/wearable/app/GlassMessageListener;->broadcastWearOpenOnPhoneSuccess(Z)V

    .line 39
    .end local v0    # "openOnPhoneSuccess":Z
    .end local v2    # "rpcResults":Lcom/google/android/gms/wearable/DataMap;
    :cond_0
    return-void
.end method
