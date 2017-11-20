.class Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 91
    instance-of v0, p2, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    check-cast p2, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    invoke-static {v0, p2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$002(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;)Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    .line 94
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$000(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$100(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$000(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->getRccIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/music/MediaButtonDispatcher;->setRccIntent(Landroid/app/PendingIntent;)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;->this$0:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-static {v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->access$200(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
