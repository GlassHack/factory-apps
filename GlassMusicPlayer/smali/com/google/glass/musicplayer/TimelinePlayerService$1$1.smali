.class Lcom/google/glass/musicplayer/TimelinePlayerService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$1:Lcom/google/glass/musicplayer/TimelinePlayerService$1;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$1$1;->this$1:Lcom/google/glass/musicplayer/TimelinePlayerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Unexpected Music2 death!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$1$1;->this$1:Lcom/google/glass/musicplayer/TimelinePlayerService$1;

    iget-object v0, v0, Lcom/google/glass/musicplayer/TimelinePlayerService$1;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->stopSelf()V

    .line 179
    return-void
.end method
