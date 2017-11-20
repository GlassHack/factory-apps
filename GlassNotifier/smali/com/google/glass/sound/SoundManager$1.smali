.class Lcom/google/glass/sound/SoundManager$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sound/SoundManager;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/google/glass/sound/SoundManager;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    invoke-static {p2}, Lcom/google/glass/sound/ISoundManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sound/ISoundManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/sound/SoundManager;->access$002(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;

    .line 176
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/sound/SoundManager;->access$002(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;

    .line 181
    return-void
.end method
