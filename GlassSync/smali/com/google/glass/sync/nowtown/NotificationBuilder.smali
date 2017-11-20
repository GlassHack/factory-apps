.class public Lcom/google/glass/sync/nowtown/NotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"

# interfaces
.implements Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;


# static fields
.field private static final VIEW_HEIGHT:I = 0x168

.field private static final VIEW_WIDTH:I = 0x280

.field private static final WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bundleCoverStatus:I

.field private canvas:Landroid/graphics/Canvas;

.field private final context:Landroid/content/Context;

.field private isContentClipped:Z

.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final nextPendingIntentRequestCode:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

.field private final notificationId:I

.field private final notificationManager:Landroid/app/NotificationManager;

.field private timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

.field private final timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field private final timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "glass_sync"

    .line 56
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;ILcom/google/glass/sync/nowtown/RequestCodeSupplier;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "notificationId"    # I
    .param p4, "nextPendingIntentRequestCode"    # Lcom/google/glass/sync/nowtown/RequestCodeSupplier;
    .param p5, "timelineSyncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p6, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bundleCoverStatus:I

    .line 85
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->notificationManager:Landroid/app/NotificationManager;

    .line 87
    iput p3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->notificationId:I

    .line 88
    iput-object p4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->nextPendingIntentRequestCode:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

    .line 89
    iput-object p5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 90
    iput-object p6, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/nowtown/NotificationBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/nowtown/NotificationBuilder;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->isContentClipped:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/sync/nowtown/NotificationBuilder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/nowtown/NotificationBuilder;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->isContentClipped:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/sync/nowtown/NotificationBuilder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/nowtown/NotificationBuilder;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->build()V

    return-void
.end method

.method private addMenuItems(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 294
    new-instance v1, Lcom/google/glass/util/IconProvider;

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "iconProvider":Lcom/google/glass/util/IconProvider;
    new-instance v4, Lcom/google/glass/timeline/TimelineMenuBuilder;

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;)V

    .line 296
    .local v4, "timelineMenuBuilder":Lcom/google/glass/timeline/TimelineMenuBuilder;
    new-instance v2, Lcom/google/glass/menu/StubMenu;

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/google/glass/menu/StubMenu;-><init>(Landroid/content/Context;)V

    .line 297
    .local v2, "menu":Landroid/view/Menu;
    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-boolean v6, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->isContentClipped:Z

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 301
    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 304
    .local v3, "menuItem":Landroid/view/MenuItem;
    const/4 v5, 0x0

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->nextPendingIntentRequestCode:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

    .line 306
    invoke-interface {v8}, Lcom/google/glass/sync/nowtown/RequestCodeSupplier;->nextRequestCode()I

    move-result v8

    iget-object v9, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 307
    invoke-static {v3}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v10

    .line 305
    invoke-static {v7, v8, v9, v10}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->getHandleMenuSelectionPendingIntent(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 304
    invoke-virtual {p1, v5, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private build()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 192
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 193
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_2

    .line 194
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineItemUtils;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 199
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v2, "rendererParams":Landroid/os/Bundle;
    const-string v3, "timeline_item"

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 201
    invoke-static {v4}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    .line 200
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 202
    const-string v3, "bundle_cover_status"

    iget v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bundleCoverStatus:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    new-instance v3, Lcom/google/android/glass/app/ContextualNotification;

    invoke-direct {v3, v0}, Lcom/google/android/glass/app/ContextualNotification;-><init>(Landroid/app/Notification$Builder;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    const-class v6, Lcom/google/glass/sync/nowtown/HtmlRenderingService;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v2}, Lcom/google/android/glass/app/ContextualNotification;->setRenderer(Landroid/content/ComponentName;Landroid/os/Bundle;)Lcom/google/android/glass/app/ContextualNotification;

    .line 212
    .end local v2    # "rendererParams":Landroid/os/Bundle;
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "timespan_start_ms"

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v4}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v3

    if-nez v3, :cond_0

    .line 215
    const-string v3, "package_override"

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    .line 216
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->shouldNotifyWithSound(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    const-string v3, "whitelist"

    invoke-virtual {v1, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 227
    iget v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bundleCoverStatus:I

    if-eq v3, v9, :cond_1

    iget v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bundleCoverStatus:I

    if-ne v3, v11, :cond_5

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->nextPendingIntentRequestCode:Lcom/google/glass/sync/nowtown/RequestCodeSupplier;

    .line 231
    invoke-interface {v4}, Lcom/google/glass/sync/nowtown/RequestCodeSupplier;->nextRequestCode()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 230
    invoke-static {v3, v4, v5}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->getShowBundlePendingIntent(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 238
    :goto_2
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getGlanceableContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 241
    sget-object v3, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Posting notification %d for item %s"

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->notificationId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->notificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->notificationId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 244
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    return-void

    .line 208
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->renderViewToRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 222
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 234
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->addMenuItems(Landroid/app/Notification$Builder;)V

    goto :goto_2
.end method

.method private static getHandleMenuSelectionPendingIntent(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/glass/sync/nowtown/MenuSelectionService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "timeline_item"

    .line 319
    invoke-static {p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 320
    const-string v1, "menu_item"

    .line 321
    invoke-static {p3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 320
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 323
    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static getShowBundlePendingIntent(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 335
    .local v1, "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    const-string v2, "bundle_item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 337
    const/high16 v2, 0x8000000

    invoke-static {p0, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private static shouldNotifyWithSound(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 11
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasNotification()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 270
    sget-object v7, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "item has notification data"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/glass/timeline/TimelineNotificationHelper;->isFuture(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 272
    sget-object v6, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "item has future notification data"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :goto_0
    return v5

    .line 277
    :cond_0
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineNotificationHelper;->getNotificationTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v3

    .line 278
    .local v3, "notificationTime":J
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 279
    .local v0, "clock":Lcom/google/glass/time/Clock;
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 280
    .local v1, "currentTime":J
    sget-wide v7, Lcom/google/glass/sync/TimelineNotificationFilter;->NOTIFICATION_THRESHOLD:J

    sub-long v7, v1, v7

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 281
    sget-object v7, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "notificationTime %s is recent compared to current time of %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 282
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v6

    .line 281
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 283
    goto :goto_0

    .line 287
    .end local v0    # "clock":Lcom/google/glass/time/Clock;
    .end local v1    # "currentTime":J
    .end local v3    # "notificationTime":J
    :cond_1
    sget-object v6, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "not notifying"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getNotificationId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->notificationId:I

    return v0
.end method

.method public onCompleted(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->build()V

    .line 188
    return-void
.end method

.method public renderViewToRemoteViews()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 247
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 248
    const/16 v1, 0x280

    const/16 v2, 0x168

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 249
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->canvas:Landroid/graphics/Canvas;

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 254
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 255
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 254
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 256
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 259
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 260
    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 263
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/glass/sync/R$layout;->nowtown_card:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 264
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    sget v1, Lcom/google/glass/sync/R$id;->image:I

    iget-object v2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 265
    return-object v0
.end method

.method public startBuild(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 9
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "bundleCoverStatus"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Re-build of same item %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->stopBuild()V

    .line 110
    :cond_0
    sget-object v0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting build of item %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 112
    iput p2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bundleCoverStatus:I

    .line 115
    new-instance v3, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;-><init>(Lcom/google/glass/sync/nowtown/NotificationBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 139
    .local v3, "timelineItemLoader":Lcom/google/glass/timeline/ui/TimelineItemLoader;
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->context:Landroid/content/Context;

    .line 140
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v7, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v8, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .line 149
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setDeferredContentLoadCompletionListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    new-instance v1, Lcom/google/glass/sync/nowtown/NotificationBuilder$2;

    invoke-direct {v1, p0}, Lcom/google/glass/sync/nowtown/NotificationBuilder$2;-><init>(Lcom/google/glass/sync/nowtown/NotificationBuilder;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setContentSizedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0, v4, v1, v6}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    .line 165
    invoke-direct {p0}, Lcom/google/glass/sync/nowtown/NotificationBuilder;->build()V

    .line 166
    return-void
.end method

.method public stopBuild()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping build of item %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->recycleView(Landroid/view/View;)V

    .line 177
    iput-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 178
    iput v5, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->bundleCoverStatus:I

    .line 179
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {v0, v4}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setDeferredContentLoadCompletionListener(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 180
    iput-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .line 181
    iput-object v4, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder;->view:Landroid/view/View;

    .line 183
    :cond_0
    return-void
.end method
