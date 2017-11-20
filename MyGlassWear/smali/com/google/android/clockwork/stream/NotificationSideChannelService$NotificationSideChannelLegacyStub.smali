.class Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;
.super Landroid/preview/support/v4/app/INotificationSideChannel$Stub;
.source "NotificationSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/stream/NotificationSideChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSideChannelLegacyStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;


# direct methods
.method private constructor <init>(Lcom/google/android/clockwork/stream/NotificationSideChannelService;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-direct {p0}, Landroid/preview/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/clockwork/stream/NotificationSideChannelService;Lcom/google/android/clockwork/stream/NotificationSideChannelService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/clockwork/stream/NotificationSideChannelService;
    .param p2, "x1"    # Lcom/google/android/clockwork/stream/NotificationSideChannelService$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;-><init>(Lcom/google/android/clockwork/stream/NotificationSideChannelService;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->access$100(Lcom/google/android/clockwork/stream/NotificationSideChannelService;ILjava/lang/String;)V

    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 89
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->access$100(Lcom/google/android/clockwork/stream/NotificationSideChannelService;ILjava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 100
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-virtual {v2, p1}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->access$100(Lcom/google/android/clockwork/stream/NotificationSideChannelService;ILjava/lang/String;)V

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 78
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/NotificationSideChannelService$NotificationSideChannelLegacyStub;->this$0:Lcom/google/android/clockwork/stream/NotificationSideChannelService;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/clockwork/stream/NotificationSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
