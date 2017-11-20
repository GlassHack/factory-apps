.class Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;
.super Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;->this$0:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;

    invoke-direct {p0}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;->this$0:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;

    invoke-static {v0}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->access$000(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;

    invoke-static {v0}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;->access$100(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;)Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;-><init>(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method
