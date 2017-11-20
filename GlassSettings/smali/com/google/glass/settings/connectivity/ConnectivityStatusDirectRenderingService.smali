.class public Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;
.super Lcom/google/android/glass/app/DirectRenderingService;
.source "ConnectivityStatusDirectRenderingService.java"

# interfaces
.implements Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;
.implements Lcom/google/glass/connectivity/InetConnectionState$Listener;


# static fields
.field private static final NOTIFICATION_ID:I = 0x3e9

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

.field private inetState:Lcom/google/glass/connectivity/InetConnectionState;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/glass/app/DirectRenderingService;-><init>()V

    return-void
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 115
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 98
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "builder":Landroid/app/Notification$Builder;
    new-instance v2, Lcom/google/android/glass/app/ContextualNotification;

    invoke-direct {v2}, Lcom/google/android/glass/app/ContextualNotification;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    invoke-virtual {v2, v3}, Lcom/google/android/glass/app/ContextualNotification;->setRenderer(Landroid/content/ComponentName;)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v5}, Lcom/google/android/glass/app/ContextualNotification;->setReveal(Z)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardMenuActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "action":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-static {p0, v5, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 106
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x3e9

    .line 107
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_HIDE_CONNECTIVITY_STATUS_CARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onCreate()V

    .line 38
    invoke-static {}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    .line 39
    sget v0, Lcom/google/glass/settings/ui/R$layout;->connectivity_status_card:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->setView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->view:Landroid/view/View;

    .line 40
    invoke-static {}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->getInstance()Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->from(Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    .line 42
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-virtual {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->show()V

    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->inetState:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0, p0}, Lcom/google/glass/connectivity/InetConnectionState;->removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->connectivityStatusCardManager:Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    invoke-virtual {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;->hide()V

    .line 50
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onDestroy()V

    .line 51
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onShow()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public setAction(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 84
    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "imageId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/settings/connectivity/ConnectivityStatusDirectRenderingService;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method
