.class Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0

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
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Installed packages changed; invalidating trigger cache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$100(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->this$0:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    .line 80
    invoke-interface {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;->onTriggerCacheUpdated()V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method
