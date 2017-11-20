.class public final Lcom/google/glass/notifier/NotificationWrapper;
.super Ljava/lang/Object;
.source "NotificationWrapper.java"


# static fields
.field private static final UNKNOWN_PACKAGE_NAME:Ljava/lang/String; = "unknown"

.field private static final UNKNOWN_STREAM_ID:Ljava/lang/String; = "unknown"


# instance fields
.field private final notification:Lcom/google/glass/companion/nano/Proto$Notification;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/nano/Proto$Notification;)V
    .locals 0
    .param p1, "notification"    # Lcom/google/glass/companion/nano/Proto$Notification;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    .line 16
    return-void
.end method

.method private static readStreamId(Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->getNotificationKey()J

    move-result-wide v0

    .line 89
    .local v0, "key":J
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->getNotificationTag()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "%d.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {v2}, Lcom/google/glass/companion/nano/Proto$Notification;->getPackageIcon()[B

    move-result-object v1

    .line 80
    .local v1, "icon":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 81
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    iget-object v1, v1, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    iget-object v1, v1, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-virtual {v1}, Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    :cond_1
    const-string v0, "unknown"

    .line 33
    :cond_2
    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    iget-object v1, v1, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    iget-object v1, v1, Lcom/google/glass/companion/nano/Proto$Notification;->notificationId:Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;

    invoke-static {v1}, Lcom/google/glass/notifier/NotificationWrapper;->readStreamId(Lcom/google/glass/companion/nano/Proto$Notification$NotificationId;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "streamId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 47
    .end local v0    # "streamId":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    .restart local v0    # "streamId":Ljava/lang/String;
    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {v0}, Lcom/google/glass/companion/nano/Proto$Notification;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/notifier/NotificationWrapper;->notification:Lcom/google/glass/companion/nano/Proto$Notification;

    invoke-virtual {v0}, Lcom/google/glass/companion/nano/Proto$Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
