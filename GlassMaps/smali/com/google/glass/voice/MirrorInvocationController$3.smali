.class Lcom/google/glass/voice/MirrorInvocationController$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/MirrorInvocationController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/MirrorInvocationController;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/voice/MirrorInvocationController$3;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController$3;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-static {v1}, Lcom/google/glass/voice/MirrorInvocationController;->access$100(Lcom/google/glass/voice/MirrorInvocationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "c"

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController$3;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-virtual {v0}, Lcom/google/glass/voice/MirrorInvocationController;->onBack()Z

    .line 180
    return-void
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController$3;->this$0:Lcom/google/glass/voice/MirrorInvocationController;

    invoke-static {v0}, Lcom/google/glass/voice/MirrorInvocationController;->access$200(Lcom/google/glass/voice/MirrorInvocationController;)V

    .line 185
    return-void
.end method
