.class Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "NativeAppVoiceMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->subscribeToPackageChanges(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/content/IntentFilter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Installed packages changed; invalidating trigger cache"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$100(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    iget-object v1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    .line 80
    .local v0, "listener":Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;
    invoke-interface {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;->onTriggerCacheUpdated()V

    goto :goto_0

    .line 82
    .end local v0    # "listener":Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;
    :cond_0
    return-void
.end method
