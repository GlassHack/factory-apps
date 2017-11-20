.class public Lcom/google/glass/maps/NavigationService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final EXTRA_EVENT_LOG:Ljava/lang/String; = "event_log"

.field public static final EXTRA_LOG_START_EVENT:Ljava/lang/String; = "extra_log_start_event"

.field public static final EXTRA_SHOW_CONFIRMATION:Ljava/lang/String; = "extra_show_confirmation"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final binder:Lcom/google/glass/maps/NavigationService$NavigationBinder;

.field private final handler:Landroid/os/Handler;

.field private navManager:Lcom/google/glass/maps/NavigationManager;

.field private final receiver:Lcom/google/glass/maps/NavigationBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 42
    sget-object v0, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Lcom/google/glass/maps/NavigationService$NavigationBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationService$NavigationBinder;-><init>(Lcom/google/glass/maps/NavigationService;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->binder:Lcom/google/glass/maps/NavigationService$NavigationBinder;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->handler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/google/glass/maps/NavigationBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/glass/maps/NavigationBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->receiver:Lcom/google/glass/maps/NavigationBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/NavigationService;)Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/NavigationService;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationService;->exitProcess()V

    return-void
.end method

.method private changeToForegroundMode()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/maps/R$string;->app_name:I

    .line 239
    invoke-virtual {p0, v1}, Lcom/google/glass/maps/NavigationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$drawable;->ic_drive_50:I

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/maps/NavigationService;->startForeground(ILandroid/app/Notification;)V

    .line 244
    :cond_0
    return-void
.end method

.method private exitProcess()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    const-string v1, "Exiting navigation process"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationManager;->stopNavigating(Z)V

    .line 249
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->destroy()V

    .line 250
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 251
    return-void
.end method

.method private processEventLogIntent(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    const-string v1, "event_log"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 191
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Replaying log: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lcom/google/glass/maps/GlassUserEventLogger;->disableLogging()V

    .line 196
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/b/v;->a(Z)V

    .line 198
    new-instance v1, Lcom/google/android/maps/driveabout/c/v;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/c/v;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 199
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/NavigationApplicationState;->setEventLog(Lcom/google/android/maps/driveabout/c/v;)V

    .line 201
    if-eqz v1, :cond_0

    .line 202
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/c/v;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 204
    invoke-static {p1}, Lcom/google/glass/maps/util/IntentUtils;->parse(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    sget-object v2, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to replay the event log"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;I)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    .line 122
    invoke-static {p1}, Lcom/google/glass/maps/util/IntentUtils;->parse(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;

    move-result-object v1

    .line 123
    sget-object v3, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "processIntent() [parsedIntent=%s]"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/NavigationApplicationState;->setEventLog(Lcom/google/android/maps/driveabout/c/v;)V

    .line 128
    if-nez v1, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationService;->processEventLogIntent(Landroid/content/Intent;)Lcom/google/android/maps/driveabout/b/q;

    move-result-object v1

    .line 132
    :cond_0
    if-eqz v1, :cond_4

    .line 133
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationService;->changeToForegroundMode()V

    .line 136
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->b()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationService;->shouldShowDirections(Lcom/google/android/maps/driveabout/b/q;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/NavigationApplicationState;->setDirectionsMode(Z)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    .line 147
    :goto_0
    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    iget-object v5, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v5, v4}, Lcom/google/glass/maps/NavigationManager;->stopNavigating(Z)V

    .line 150
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->c()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    const-string v5, "extra_log_start_event"

    .line 151
    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 149
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/DirectionsManager;->startDirections(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    .line 167
    :cond_1
    :goto_1
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/NavigationService;->stopSelf(I)V

    .line 170
    sget-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    const-string v1, "START_REDELIVER_INTENT"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x3

    .line 182
    :goto_2
    return v0

    .line 143
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->f()I

    move-result v3

    .line 144
    invoke-static {p0, v3}, Lcom/google/glass/maps/util/TravelModeUtils;->setTravelMode(Landroid/content/Context;I)I

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/glass/maps/DirectionsManager;->stopDirections(Z)V

    .line 154
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/b/q;->d()[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    const-string v2, "extra_show_confirmation"

    .line 155
    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "extra_log_start_event"

    .line 156
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 154
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/google/glass/maps/NavigationManager;->startNavigating([Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    .line 158
    invoke-static {}, Lcom/google/android/maps/driveabout/g/f;->e()Lcom/google/android/maps/driveabout/g/f;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    new-instance v1, Lcom/google/android/maps/driveabout/c/o;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/c/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/j;)V

    goto :goto_1

    .line 173
    :cond_4
    sget-object v2, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    const-string v3, "START_NOT_STICKY Unable to parse URI: "

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 177
    sget-object v0, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping because no route is in progress and no new route was requested."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/NavigationManager;->stopNavigating(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationService;->stopSelf()V

    .line 182
    :cond_5
    const/4 v0, 0x2

    goto :goto_2

    .line 173
    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/ao;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    aput-object p1, v1, v4

    .line 274
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    .line 273
    invoke-static {v1, v2, v3}, Lcom/google/android/maps/driveabout/b/q;->a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 276
    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 277
    const-string v1, "extra_show_confirmation"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v1, "extra_log_start_event"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    invoke-static {p0, v0}, Lcom/google/glass/maps/NavigationService;->startNavigationService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public static restartNavService(Landroid/content/Context;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->s()[Lcom/google/android/maps/driveabout/nav/aq;

    move-result-object v1

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    .line 288
    invoke-static {v1, v2, v3}, Lcom/google/android/maps/driveabout/b/q;->a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 291
    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 292
    const-string v1, "extra_show_confirmation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    const-string v1, "extra_log_start_event"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    invoke-static {p0, v0}, Lcom/google/glass/maps/NavigationService;->startNavigationService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method private shouldShowDirections(Lcom/google/android/maps/driveabout/b/q;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/b/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 223
    :goto_0
    invoke-static {p0, v0}, Lcom/google/glass/maps/util/TravelModeUtils;->setTravelMode(Landroid/content/Context;I)I

    move-result v0

    .line 224
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    return v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/b/q;->f()I

    move-result v0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static startNavigationService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 254
    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    :goto_0
    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 257
    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static stopNavigation(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/NavigationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 64
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 302
    sget-object v0, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "writing to dumpsys"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-static {}, Lcom/google/android/maps/driveabout/g/f;->e()Lcom/google/android/maps/driveabout/g/f;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/g/f;->a(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    sget-object v1, Lcom/google/glass/maps/NavigationService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error writing to dumpsys: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->binder:Lcom/google/glass/maps/NavigationService$NavigationBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    sget-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    const-string v1, "Created"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationService;->navManager:Lcom/google/glass/maps/NavigationManager;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    sget-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    const-string v1, "Destroyed"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->receiver:Lcom/google/glass/maps/NavigationBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/NavigationBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/NavigationService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/NavigationService$1;-><init>(Lcom/google/glass/maps/NavigationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 109
    sget-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onStartCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-nez p1, :cond_0

    .line 112
    sget-object v0, Lcom/google/glass/maps/NavigationService;->TAG:Ljava/lang/String;

    const-string v1, "intent is null. START_NOT_STICKY"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x2

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/glass/maps/NavigationService;->processIntent(Landroid/content/Intent;I)I

    move-result v0

    goto :goto_0
.end method
