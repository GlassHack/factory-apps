.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;
.super Lcom/google/android/gtalkservice/IGTalkService$Stub;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkService$Stub;-><init>()V

    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    const-string v2, "Need GTalk_SERVICE permission"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    return-void
.end method

.method private getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 2142
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2144
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 2145
    .local v2, "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 2146
    .local v0, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2147
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2151
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2153
    .end local v0    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    .end local v2    # "wrapper":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :goto_0
    return-object v3

    .line 2151
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2153
    const/4 v3, 0x0

    goto :goto_0

    .line 2151
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method


# virtual methods
.method public createGTalkConnection(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/gtalkservice/IGTalkConnectionListener;

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2058
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkConnectionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2072
    return-void
.end method

.method public dismissAllNotifications()V
    .locals 1

    .prologue
    .line 2158
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2159
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissAllNotifications()V

    .line 2160
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;J)V
    .locals 2
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    .line 2164
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2165
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 2167
    return-void
.end method

.method public dismissNotificationsForAccount(J)V
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 2171
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2172
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->getSettingsForAccount(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 2174
    return-void
.end method

.method public getActiveConnections()Ljava/util/List;
    .locals 6

    .prologue
    .line 2077
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2079
    const/4 v2, 0x0

    .line 2081
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2083
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2084
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 2085
    .local v0, "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2088
    .end local v0    # "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2091
    return-object v3

    .line 2088
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 2096
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2098
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    const-string v0, "GTalkService"

    const-string v1, "getConnectionForUser: empty username"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    const/4 v0, 0x0

    .line 2103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultConnection()Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 2

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2111
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 2113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2115
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getDeviceStorageLow()Z
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z

    move-result v0

    return v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 6
    .param p1, "accountId"    # J

    .prologue
    .line 2121
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2123
    const/4 v3, 0x0

    .line 2125
    .local v3, "imSession":Lcom/google/android/gtalkservice/IImSession;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2127
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 2128
    .local v0, "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 2129
    .local v1, "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    if-eqz v4, :cond_0

    .line 2131
    check-cast v1, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;

    .end local v1    # "endpoint":Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkConnection;->getImSession()Lcom/google/android/gtalkservice/IImSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 2135
    .end local v0    # "connection":Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2138
    return-object v3

    .line 2135
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public printDiagnostics()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->enforcePermission()V

    .line 2185
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 2186
    .local v2, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2187
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-nolog"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2189
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 2190
    return-object v1
.end method

.method public setTalkForegroundState()V
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 2196
    return-void
.end method
