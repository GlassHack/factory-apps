.class Lcom/google/glass/musicplayer/TimelinePlayerService$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$1;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Music2 service connected."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :try_start_0
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$1$1;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Failed to link binder to DeathRecipient."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Music2 service disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    return-void
.end method
