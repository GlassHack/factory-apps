.class Lcom/android/systemui/media/RingtonePlayer$1;
.super Landroid/media/IRingtonePlayer$Stub;
.source "RingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/RingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/RingtonePlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/RingtonePlayer;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-direct {p0}, Landroid/media/IRingtonePlayer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isPlaying(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 131
    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 131
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 135
    .restart local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 102
    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 104
    .local v4, "user":Landroid/os/UserHandle;
    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/RingtonePlayer$Client;-><init>(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/UserHandle;I)V

    .line 105
    .restart local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 106
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v4    # "user":Landroid/os/UserHandle;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 110
    return-void

    .line 108
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "looping"    # Z
    .param p4, "streamType"    # I

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Async playback only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer;->access$400(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1, p2}, Lcom/android/systemui/media/RingtonePlayer;->access$000(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 147
    return-void
.end method

.method public stop(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 118
    .local v0, "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$300(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 123
    :cond_0
    return-void

    .line 118
    .end local v0    # "client":Lcom/android/systemui/media/RingtonePlayer$Client;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopAsync()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Async playback only available from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer;->access$400(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    .line 156
    return-void
.end method
