.class Lcom/google/glass/sound/SoundManagerService$2;
.super Ljava/lang/Object;
.source "SoundManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sound/SoundManagerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/SoundManagerService;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sound/SoundManagerService;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/glass/sound/SoundManagerService$2;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Lcom/google/glass/sound/SoundManagerService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Loading sounds."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService$2;->this$0:Lcom/google/glass/sound/SoundManagerService;

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerService;->loadSounds()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/sound/SoundManagerService$2;->this$0:Lcom/google/glass/sound/SoundManagerService;

    iget-object v0, v0, Lcom/google/glass/sound/SoundManagerService;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    invoke-static {}, Lcom/google/glass/sound/SoundManagerService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Sounds Loaded."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    return-void

    .line 139
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/sound/SoundManagerService$2;->this$0:Lcom/google/glass/sound/SoundManagerService;

    iget-object v1, v1, Lcom/google/glass/sound/SoundManagerService;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    invoke-static {}, Lcom/google/glass/sound/SoundManagerService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Sounds Loaded."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
