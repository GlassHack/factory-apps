.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$1;,
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;,
        Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/android/internal/statusbar/StatusBarIconList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    .param p2, "list"    # Lcom/android/internal/statusbar/StatusBarIconList;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    .line 105
    iput-object p2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 106
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/CommandQueue;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    return-object v0
.end method


# virtual methods
.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 126
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    .line 127
    .local v0, "ne":Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 128
    iput-object p2, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x20000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 130
    monitor-exit v2

    .line 131
    return-void

    .line 130
    .end local v0    # "ne":Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateCollapsePanels()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x70000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x70000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateExpandSettingsPanel()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadRecentApps()V
    .locals 6

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xf0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disable(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public preloadRecentApps()V
    .locals 6

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeIcon(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 118
    const/high16 v1, 0x10000

    or-int v0, v1, p1

    .line 119
    .local v0, "what":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 121
    monitor-exit v2

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 6
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v4, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v5, 0xc0000

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v5, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    monitor-exit v3

    .line 205
    return-void

    :cond_0
    move v2, v1

    .line 202
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 110
    const/high16 v1, 0x10000

    or-int v0, v1, p1

    .line 111
    .local v0, "what":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 113
    monitor-exit v2

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v0, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemUiVisibility(II)V
    .locals 4
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x100000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleRecentApps()V
    .locals 6

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd0000

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public topAppWindowChanged(Z)V
    .locals 6
    .param p1, "menuVisible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xa0000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0xa0000

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 135
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    .line 136
    .local v0, "ne":Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 137
    iput-object p2, v0, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x30000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    monitor-exit v2

    .line 140
    return-void

    .line 139
    .end local v0    # "ne":Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
