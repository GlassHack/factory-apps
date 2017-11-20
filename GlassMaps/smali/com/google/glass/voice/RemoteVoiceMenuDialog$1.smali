.class Lcom/google/glass/voice/RemoteVoiceMenuDialog$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/RemoteVoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/RemoteVoiceMenuDialog;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog$1;->this$0:Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog$1;->this$0:Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    invoke-static {p2}, Lcom/google/glass/voice/service/menu/IVoiceMenuService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->access$002(Lcom/google/glass/voice/RemoteVoiceMenuDialog;Lcom/google/glass/voice/service/menu/IVoiceMenuService;)Lcom/google/glass/voice/service/menu/IVoiceMenuService;

    .line 37
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
