.class public Lcom/google/glass/phone/PhoneCallNowTownManager;
.super Lcom/google/glass/phone/PhoneCallRemoteViewManager;
.source "PhoneCallNowTownManager.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x3e8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field isInPhoneCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallNowTownManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCallNowTownManager;->isInPhoneCall:Z

    .line 26
    return-void
.end method

.method private invalidate(Z)V
    .locals 6
    .param p1, "goToItem"    # Z

    .prologue
    const/4 v5, 0x1

    .line 40
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "builder":Landroid/app/Notification$Builder;
    if-eqz p1, :cond_0

    .line 42
    new-instance v2, Lcom/google/android/glass/app/ContextualNotification;

    invoke-direct {v2}, Lcom/google/android/glass/app/ContextualNotification;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/android/glass/app/ContextualNotification;->setReveal(Z)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 44
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "action":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-static {v3, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 49
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 50
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 51
    return-void
.end method


# virtual methods
.method public hidePhoneCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    sget-object v0, Lcom/google/glass/phone/PhoneCallNowTownManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Hide phone call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-boolean v3, p0, Lcom/google/glass/phone/PhoneCallNowTownManager;->isInPhoneCall:Z

    .line 67
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->onDetached()V

    .line 69
    return-void
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCallNowTownManager;->isInPhoneCall:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->invalidate(Z)V

    .line 33
    :cond_0
    return-void
.end method

.method public showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V
    .locals 3
    .param p1, "call"    # Lcom/google/glass/phone/PhoneCall;
    .param p2, "goToItem"    # Z

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/phone/PhoneCallNowTownManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Show phone call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCallNowTownManager;->isInPhoneCall:Z

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallNowTownManager;->setCurrentCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallNowTownManager;->onAttached()V

    .line 59
    invoke-direct {p0, p2}, Lcom/google/glass/phone/PhoneCallNowTownManager;->invalidate(Z)V

    .line 60
    return-void
.end method
