.class public Lcom/google/glass/ongoing/OngoingActivityManager;
.super Ljava/lang/Object;
.source "OngoingActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;,
        Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;,
        Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    }
.end annotation


# static fields
.field static final MSG_REGISTER:I = 0x1

.field static final MSG_UPDATE:I = 0x2

.field static final ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

.field private static instance:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final connectionLock:Ljava/lang/Object;

.field private connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final incoming:Landroid/os/Messenger;

.field private final messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

.field private final ongoingActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;",
            "Lcom/google/glass/ongoing/OngoingActivityMessage;",
            ">;"
        }
    .end annotation
.end field

.field private outgoing:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.home"

    const-string v2, "com.google.glass.ongoing.OngoingActivityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messengerFactory"    # Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 99
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->incoming:Landroid/os/Messenger;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/ongoing/OngoingActivityManager$2;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connection:Landroid/content/ServiceConnection;

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/ongoing/OngoingActivityManager;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Landroid/os/IBinder;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private connectIfNecessary()V
    .locals 7

    .prologue
    .line 168
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    if-ne v1, v3, :cond_0

    .line 170
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Opening connection to OngoingActivityService from: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    .line 171
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 170
    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTING:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 181
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 182
    return-void

    .line 178
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "bindService() failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static createForTest(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factory"    # Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    .prologue
    .line 84
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 85
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-class v2, Lcom/google/glass/ongoing/OngoingActivityManager;

    monitor-enter v2

    .line 68
    :try_start_0
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/google/glass/ongoing/OngoingActivityManager;

    new-instance v3, Lcom/google/glass/ongoing/OngoingActivityManager$1;

    invoke-direct {v3}, Lcom/google/glass/ongoing/OngoingActivityManager$1;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V

    sput-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 77
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->connectIfNecessary()V

    .line 79
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 186
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Connected to %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    invoke-interface {v3, p2}, Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;->create(Landroid/os/IBinder;)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 189
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 191
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 192
    .local v2, "registration":Landroid/os/Message;
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->incoming:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Sending registration request"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-direct {p0, v2}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v4

    .line 203
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .local v1, "message":Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_start_4
    invoke-direct {p0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 210
    .end local v1    # "message":Lcom/google/glass/ongoing/OngoingActivityMessage;
    :cond_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 211
    return-void

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "RemoteException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "registration":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v3

    .line 210
    .restart local v2    # "registration":Landroid/os/Message;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3
.end method

.method private handleDisconnection()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disconnected from OngoingActivityService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 241
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V

    .line 244
    throw v0
.end method

.method private sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/google/glass/ongoing/OngoingActivityMessage;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 156
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 164
    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->connectIfNecessary()V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/google/glass/ongoing/OngoingActivityMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 224
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending message: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, "androidMessage":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessage(Landroid/os/Message;)V

    .line 234
    return-void

    .line 228
    .end local v0    # "androidMessage":Landroid/os/Message;
    :cond_0
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending message: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 3
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .prologue
    .line 144
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    .line 145
    .local v0, "message":Lcom/google/glass/ongoing/OngoingActivityMessage;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 131
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    .line 132
    .local v0, "message":Lcom/google/glass/ongoing/OngoingActivityMessage;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v2

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
