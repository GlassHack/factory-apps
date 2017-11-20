.class public Lcom/google/glass/ongoing/OngoingActivityService;
.super Landroid/app/Service;
.source "OngoingActivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;,
        Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    }
.end annotation


# static fields
.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;


# instance fields
.field private final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final binders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final incoming:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->binders:Ljava/util/Map;

    .line 97
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/ongoing/OngoingActivityService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/ongoing/OngoingActivityService$1;-><init>(Lcom/google/glass/ongoing/OngoingActivityService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->incoming:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/ongoing/OngoingActivityService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityService;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/ongoing/OngoingActivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityService;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityService;->handleConnectionLost(I)V

    return-void
.end method

.method public static addListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    .prologue
    .line 127
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Added listener %s, count=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 130
    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    monitor-exit v1

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findActivityIndex(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "type"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 211
    .local v1, "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-static {v1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$400(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$000(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 215
    .end local v0    # "i":I
    .end local v1    # "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :goto_1
    return v0

    .line 209
    .restart local v0    # "i":I
    .restart local v1    # "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private fireActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 235
    .local v0, "listener":Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    invoke-interface {v0, p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;->onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "listener":Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    :cond_0
    return-void
.end method

.method private fireActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 241
    .local v0, "listener":Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    invoke-interface {v0, p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "listener":Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    :cond_0
    return-void
.end method

.method private fireActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityService;->getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 247
    .local v0, "listener":Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    invoke-interface {v0, p1}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;->onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "listener":Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    :cond_0
    return-void
.end method

.method private getListeners()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
    .locals 3

    .prologue
    .line 252
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    monitor-exit v1

    return-object v0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOngoingActivities()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 72
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    iget-object v0, v0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    new-array v1, v1, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    goto :goto_0
.end method

.method private handleConnectionLost(I)V
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 219
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Connection lost to client: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, "removedActivities":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;>;"
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 222
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-static {v3}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$400(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 223
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityService;->binders:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 229
    .local v0, "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    goto :goto_1

    .line 231
    .end local v0    # "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_2
    return-void
.end method

.method private handleHideMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "msg"    # Lcom/google/glass/ongoing/OngoingActivityMessage;

    .prologue
    .line 202
    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/glass/ongoing/OngoingActivityService;->findActivityIndex(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v0

    .line 203
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-direct {p0, v1}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 206
    :cond_0
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 146
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 147
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v3, "pid":I
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_0

    .line 150
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Registered client: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 154
    .local v0, "clientBinder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityService;->binders:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :try_start_0
    new-instance v4, Lcom/google/glass/ongoing/OngoingActivityService$2;

    invoke-direct {v4, p0, v3}, Lcom/google/glass/ongoing/OngoingActivityService$2;-><init>(Lcom/google/glass/ongoing/OngoingActivityService;I)V

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "clientBinder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 167
    .restart local v0    # "clientBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v3}, Lcom/google/glass/ongoing/OngoingActivityService;->handleConnectionLost(I)V

    goto :goto_0

    .line 171
    .end local v0    # "clientBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_3

    .line 172
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/ongoing/OngoingActivityMessage;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/ongoing/OngoingActivityMessage;

    move-result-object v2

    .line 173
    .local v2, "ongoingMsg":Lcom/google/glass/ongoing/OngoingActivityMessage;
    if-eqz v2, :cond_2

    .line 174
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Handing update %s for client: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getOperation()Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    move-result-object v4

    sget-object v5, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    if-ne v4, v5, :cond_1

    .line 176
    invoke-direct {p0, v3, v2}, Lcom/google/glass/ongoing/OngoingActivityService;->handleShowMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/google/glass/ongoing/OngoingActivityService;->handleHideMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V

    goto :goto_0

    .line 181
    :cond_2
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to parse update message"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v2    # "ongoingMsg":Lcom/google/glass/ongoing/OngoingActivityMessage;
    :cond_3
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown message type: %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleShowMessage(ILcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "msg"    # Lcom/google/glass/ongoing/OngoingActivityMessage;

    .prologue
    .line 189
    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/glass/ongoing/OngoingActivityService;->findActivityIndex(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)I

    move-result v1

    .line 190
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 191
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    .line 192
    .local v0, "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$302(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 193
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    .line 199
    :goto_0
    return-void

    .line 195
    .end local v0    # "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;-><init>(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    .line 196
    .restart local v0    # "activity":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityService;->fireActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V

    goto :goto_0
.end method

.method public static isActivityOngoing(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Z
    .locals 6
    .param p0, "activity"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 81
    invoke-static {}, Lcom/google/glass/ongoing/OngoingActivityService;->getOngoingActivities()[Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 82
    .local v0, "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    invoke-static {v0}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->access$000(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    const/4 v1, 0x1

    .line 86
    .end local v0    # "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_0
    return v1

    .line 81
    .restart local v0    # "record":Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static removeListener(Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;)V
    .locals 6
    .param p0, "listener"    # Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;

    .prologue
    .line 137
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 138
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Removed listener %s, count=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/glass/ongoing/OngoingActivityService;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 139
    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->incoming:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 112
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sput-object p0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    .line 114
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityService;->runningInstance:Lcom/google/glass/ongoing/OngoingActivityService;

    .line 122
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 123
    return-void
.end method
