.class public Lcom/google/glass/timeline/ui/NotificationState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private listeners:Ljava/util/Set;

.field private timelineItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/b/a;

    invoke-direct {v0}, Lcom/google/android/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/glass/timeline/ui/NotificationState$Listener;)V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->timelineItemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/glass/timeline/ui/NotificationState$Listener;->onUpdateNotificationState(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotification()Z
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->timelineItemId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/google/glass/timeline/ui/NotificationState$Listener;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotificationItemId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->timelineItemId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/glass/timeline/ui/NotificationState;->timelineItemId:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/ui/NotificationState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/NotificationState$Listener;

    .line 46
    iget-object v2, p0, Lcom/google/glass/timeline/ui/NotificationState;->timelineItemId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/glass/timeline/ui/NotificationState$Listener;->onUpdateNotificationState(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
