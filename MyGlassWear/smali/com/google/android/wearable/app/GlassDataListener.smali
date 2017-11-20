.class public Lcom/google/android/wearable/app/GlassDataListener;
.super Ljava/lang/Object;
.source "GlassDataListener.java"

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$DataListener;


# static fields
.field private static final MIN_ACCEPTABLE_BACKGROUND_HEIGHT:I = 0x41

.field private static final MIN_ACCEPTABLE_BACKGROUND_WIDTH:I = 0x41

.field private static final MIN_BACKGROUND_HEIGHT:I = 0xb4

.field private static final MIN_BACKGROUND_WIDTH:I = 0xb4

.field static final NOTIFICATION_REMOTE_PACKAGE_KEY:Ljava/lang/String; = "com.google.android.wearable.stream.REMOTE_PACKAGE_NAME"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final NOTIFICATION_STREAM_ID_KEY:Ljava/lang/String; = "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PNG_MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

.field private final context:Landroid/content/Context;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final voiceCommandGuesser:Lcom/google/android/wearable/app/VoiceCommandGuesser;

.field private final wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p3, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/google/android/wearable/app/GlassDataListener;->assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    .line 102
    iput-object p3, p0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 103
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassDataListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 104
    new-instance v0, Lcom/google/android/wearable/app/WearAssetHelper;

    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p2, v1}, Lcom/google/android/wearable/app/WearAssetHelper;-><init>(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    .line 105
    new-instance v0, Lcom/google/android/wearable/app/VoiceCommandGuesser;

    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/app/VoiceCommandGuesser;-><init>(Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassDataListener;->voiceCommandGuesser:Lcom/google/android/wearable/app/VoiceCommandGuesser;

    .line 106
    return-void
.end method

.method private addAttributionIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V
    .locals 6
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v1, "icon"

    invoke-virtual {p3, v1}, Lcom/google/android/gms/wearable/DataMap;->getAsset(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/app/WearAssetHelper;->getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 596
    .local v4, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v3, "icon"

    const-string v5, "application/glass+attribution+icon"

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/wearable/app/WearAssetHelper;->addBitmap(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 604
    :cond_0
    return-void

    .line 601
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method private addDismissMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 12
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 454
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 455
    .local v4, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-virtual {v4, v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 458
    sget-object v6, Lcom/google/android/wearable/app/WearIconProvider;->BASE_URI:Landroid/net/Uri;

    .line 460
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "local_res"

    .line 461
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    sget-object v7, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->DISMISS_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    .line 463
    invoke-virtual {v7}, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 464
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 465
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "iconUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 467
    .local v5, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 468
    .local v0, "dismiss":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 469
    sget v6, Lcom/google/android/wearable/app/R$string;->dismiss:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 470
    invoke-virtual {v0, v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 472
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 473
    .local v2, "dismissing":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 474
    sget v6, Lcom/google/android/wearable/app/R$string;->dismissing:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 475
    invoke-virtual {v2, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 477
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 478
    .local v1, "dismissed":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget v6, Lcom/google/android/wearable/app/R$string;->dismissed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 479
    invoke-virtual {v1, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 481
    new-array v6, v11, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v0, v6, v8

    aput-object v2, v6, v9

    aput-object v1, v6, v10

    iput-object v6, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 484
    sget-object v6, Lcom/google/android/glass/app/ContextualMenus$Command;->DISMISS_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v6}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setVoiceCommand(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 486
    invoke-static {p1, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 487
    return-void
.end method

.method private addOpenMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 6
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v5, 0x0

    .line 428
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 429
    .local v0, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 430
    const-string v3, "com.google.android.wearable.app.WEAR_ITEM_OPEN_ACTION"

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 432
    iget-object v3, p0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 433
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 434
    .local v1, "menuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    sget-object v3, Lcom/google/android/wearable/app/WearIconProvider;->BASE_URI:Landroid/net/Uri;

    .line 435
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "local_res"

    .line 436
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->OPEN_MENU_RESOURCE_ID:Lcom/google/android/wearable/app/WearIconProvider$ResourceId;

    .line 438
    invoke-virtual {v4}, Lcom/google/android/wearable/app/WearIconProvider$ResourceId;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 439
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 440
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 441
    sget v3, Lcom/google/android/wearable/app/R$string;->open_on_phone:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 442
    invoke-virtual {v1, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 444
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v1, v3, v5

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 448
    invoke-static {p1, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 449
    return-void
.end method

.method private deleteItem(Lcom/google/android/gms/wearable/DataEvent;)V
    .locals 7
    .param p1, "dataEvent"    # Lcom/google/android/gms/wearable/DataEvent;

    .prologue
    .line 124
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    .line 125
    .local v0, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    invoke-static {v0}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v1

    .line 127
    .local v1, "mapDataItem":Lcom/google/android/gms/wearable/DataMapItem;
    iget-object v3, p0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/wearable/app/GlassDataListener;->assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    invoke-static {v3, v4, v0, v1}, Lcom/google/android/wearable/app/WearUtil;->notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataItem;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;

    move-result-object v2

    .line 129
    .local v2, "notification":Landroid/app/Notification;
    if-nez v2, :cond_0

    .line 130
    sget-object v3, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to retrieve the notification for [dataItem=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/wearable/app/GlassDataListener;->deleteItem(Landroid/app/Notification;)V

    goto :goto_0
.end method

.method private getBackground(Landroid/os/Bundle;ZZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "dataMapBundle"    # Landroid/os/Bundle;
    .param p2, "hasBackgroundAsset"    # Z
    .param p3, "hasLargeIconAsset"    # Z

    .prologue
    .line 567
    if-eqz p2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v0, "background"

    .line 569
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    .line 568
    invoke-virtual {v1, v0}, Lcom/google/android/wearable/app/WearAssetHelper;->getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 570
    :cond_0
    if-eqz p3, :cond_1

    .line 571
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v0, "large_icon"

    .line 572
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    .line 571
    invoke-virtual {v1, v0}, Lcom/google/android/wearable/app/WearAssetHelper;->getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getText(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 520
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 521
    invoke-static {p0}, Lcom/google/android/wearable/app/GlassDataListener;->getTextHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "textHtml":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getTextHtml(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 540
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 541
    const-string v1, "text_html"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 542
    .local v0, "text":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getTitle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 513
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 514
    invoke-static {p0}, Lcom/google/android/wearable/app/GlassDataListener;->getTitleHtml(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "titleHtml":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getTitleHtml(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 530
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 531
    const-string v1, "title_html"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    .local v0, "title":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static hasBackground(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 585
    const-string v0, "background"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasLargeIcon(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 580
    const-string v0, "large_icon"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasPicture(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 590
    const-string v0, "big_picture"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertOrUpdateItem(Lcom/google/android/gms/wearable/DataEvent;)V
    .locals 35
    .param p1, "dataEvent"    # Lcom/google/android/gms/wearable/DataEvent;

    .prologue
    .line 160
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 163
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v33

    .line 165
    .local v33, "updateTime":J
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v21

    .line 166
    .local v21, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v24

    .line 169
    .local v24, "dataMapItem":Lcom/google/android/gms/wearable/DataMapItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/wearable/app/GlassDataListener;->assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v5, v11, v0, v1}, Lcom/google/android/wearable/app/WearUtil;->notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataItem;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;

    move-result-object v29

    .line 171
    .local v29, "notification":Landroid/app/Notification;
    if-nez v29, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "streamId":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "com.google.android.wearable.stream.REMOTE_PACKAGE_NAME"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 178
    .local v30, "packageName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v22

    .line 179
    .local v22, "dataMap":Lcom/google/android/gms/wearable/DataMap;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    move-result-object v23

    .line 181
    .local v23, "dataMapBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/android/wearable/app/GlassDataListener;->logNotification(Lcom/google/android/gms/wearable/DataMap;Landroid/app/Notification;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v11, Lcom/google/glass/userevent/UserEventAction;->WEAR_DATA_UPDATED:Lcom/google/glass/userevent/UserEventAction;

    move-object/from16 v0, v30

    invoke-virtual {v5, v11, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v5, "wear:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 186
    .local v31, "source":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 187
    move-object/from16 v0, v31

    invoke-virtual {v5, v0, v7}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 190
    .local v6, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v6, :cond_c

    .line 192
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    invoke-virtual {v5, v11}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v32

    .line 193
    .local v32, "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    invoke-virtual/range {v32 .. v32}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 194
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 212
    .end local v32    # "timelineItemCreationHelper":Lcom/google/glass/timeline/TimelineItemCreationHelper;
    :goto_2
    const/16 v5, 0xb

    invoke-virtual {v6, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 215
    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 218
    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v7, v1}, Lcom/google/android/wearable/app/GlassDataListener;->addAttributionIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 225
    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasPicture(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v10, "application/glass+profile+photo"

    .line 228
    .local v10, "mimeType":Ljava/lang/String;
    :goto_3
    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasBackground(Landroid/os/Bundle;)Z

    move-result v26

    .line 229
    .local v26, "hasBackgroundAsset":Z
    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasLargeIcon(Landroid/os/Bundle;)Z

    move-result v28

    .line 233
    .local v28, "hasLargeIconAsset":Z
    const/16 v17, 0x0

    .line 234
    .local v17, "backgroundAttachmentId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 235
    .local v18, "backgroundTooSmall":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/wearable/app/GlassDataListener;->getBackground(Landroid/os/Bundle;ZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 236
    .local v9, "backgroundBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_5

    .line 238
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/wearable/app/GlassDataListener;->isBackgroundTooSmall(Landroid/graphics/Bitmap;)Z

    move-result v18

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/wearable/app/GlassDataListener;->isBackgroundBigEnough(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasPicture(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 240
    :cond_2
    const/4 v8, 0x0

    .line 241
    .local v8, "assetName":Ljava/lang/String;
    if-eqz v26, :cond_e

    .line 242
    const-string v8, "background"

    .line 246
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/wearable/app/WearAssetHelper;->addBitmap(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 250
    .end local v8    # "assetName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_5
    const/16 v19, 0x0

    .line 256
    .local v19, "bigPictureId":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasPicture(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v5, "big_picture"

    .line 258
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/wearable/Asset;

    .line 257
    invoke-virtual {v11, v5}, Lcom/google/android/wearable/app/WearAssetHelper;->getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 259
    .local v15, "bigPictureBitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_6

    .line 261
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    const-string v14, "big_picture"

    const-string v16, "image/png"

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/wearable/app/WearAssetHelper;->addBitmap(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 264
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    .end local v15    # "bigPictureBitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/google/android/wearable/app/GlassDataListener;->setTitle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;)V

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v6, v1}, Lcom/google/android/wearable/app/GlassDataListener;->setText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;)V

    .line 276
    new-instance v20, Lcom/google/android/wearable/app/DataMapToHtml;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Lcom/google/android/wearable/app/DataMapToHtml;-><init>(Lcom/google/android/wearable/app/WearAssetHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 277
    .local v20, "converter":Lcom/google/android/wearable/app/DataMapToHtml;
    if-nez v17, :cond_7

    if-eqz v19, :cond_f

    :cond_7
    const/16 v27, 0x1

    .line 278
    .local v27, "hasImages":Z
    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/wearable/app/DataMapToHtml;->requiresHtml(Landroid/os/Bundle;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 279
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/wearable/app/DataMapToHtml;->getHtml(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 285
    :cond_8
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasHtml()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasLargeIcon(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static/range {v23 .. v23}, Lcom/google/android/wearable/app/GlassDataListener;->hasPicture(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 286
    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 290
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/wearable/app/GlassDataListener;->setBundleFields(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/wearable/app/GlassDataListener;->setupMenuItemForActions(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v29

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_a

    .line 295
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/wearable/app/GlassDataListener;->addOpenMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 297
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/wearable/app/GlassDataListener;->addDismissMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/google/android/wearable/app/GlassDataListener;->setNotificationLevel(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;)V

    .line 303
    new-instance v25, Landroid/content/Intent;

    const-string v5, "com.google.android.wearable.app.WEAR_ITEM_DELETED"

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v25, "deletionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v25

    invoke-virtual {v5, v11, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertPostDeleteIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/net/Uri;

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    sget-object v11, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->ANDROID_WEAR:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 312
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasNotification()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getNotification()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->getLevel()I

    move-result v5

    const/16 v11, 0xa

    if-ne v5, v11, :cond_0

    .line 314
    new-instance v5, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v5}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/wearable/app/GlassDataListener;->context:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v6, v12}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    goto/16 :goto_0

    .line 185
    .end local v6    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v9    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v17    # "backgroundAttachmentId":Ljava/lang/String;
    .end local v18    # "backgroundTooSmall":Z
    .end local v19    # "bigPictureId":Ljava/lang/String;
    .end local v20    # "converter":Lcom/google/android/wearable/app/DataMapToHtml;
    .end local v25    # "deletionIntent":Landroid/content/Intent;
    .end local v26    # "hasBackgroundAsset":Z
    .end local v27    # "hasImages":Z
    .end local v28    # "hasLargeIconAsset":Z
    .end local v31    # "source":Ljava/lang/String;
    :cond_b
    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 198
    .restart local v6    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v31    # "source":Ljava/lang/String;
    :cond_c
    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 199
    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 202
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 205
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 208
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->clearViewType()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    goto/16 :goto_2

    .line 225
    :cond_d
    const-string v10, "image/png"

    goto/16 :goto_3

    .line 243
    .restart local v8    # "assetName":Ljava/lang/String;
    .restart local v9    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v17    # "backgroundAttachmentId":Ljava/lang/String;
    .restart local v18    # "backgroundTooSmall":Z
    .restart local v26    # "hasBackgroundAsset":Z
    .restart local v28    # "hasLargeIconAsset":Z
    :cond_e
    if-eqz v28, :cond_3

    .line 244
    :try_start_2
    const-string v8, "large_icon"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 250
    .end local v8    # "assetName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    throw v5

    .line 264
    .restart local v15    # "bigPictureBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "bigPictureId":Ljava/lang/String;
    :catchall_1
    move-exception v5

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    throw v5

    .line 277
    .end local v15    # "bigPictureBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "converter":Lcom/google/android/wearable/app/DataMapToHtml;
    :cond_f
    const/16 v27, 0x0

    goto/16 :goto_5
.end method

.method private isBackgroundBigEnough(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "backgroundBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v1, 0x41

    .line 550
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 551
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logBundle(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 640
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 641
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 642
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 643
    .local v2, "extra":Ljava/lang/Object;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "className":Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "    %s : %s, %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v10

    aput-object v1, v8, v11

    aput-object v2, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    instance-of v6, v2, Lcom/google/android/gms/wearable/Asset;

    if-eqz v6, :cond_1

    .line 647
    iget-object v6, p0, Lcom/google/android/wearable/app/GlassDataListener;->wearAssetHelper:Lcom/google/android/wearable/app/WearAssetHelper;

    check-cast v2, Lcom/google/android/gms/wearable/Asset;

    .end local v2    # "extra":Ljava/lang/Object;
    invoke-virtual {v6, v2}, Lcom/google/android/wearable/app/WearAssetHelper;->getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 650
    :cond_1
    if-eqz v2, :cond_0

    instance-of v6, v2, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    move-object v0, v2

    .line 651
    check-cast v0, Landroid/graphics/Bitmap;

    .line 652
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "        Bitmap size: %d x %d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 643
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "className":Ljava/lang/String;
    .restart local v2    # "extra":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 656
    .end local v2    # "extra":Ljava/lang/Object;
    .end local v3    # "k":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private logNotification(Lcom/google/android/gms/wearable/DataMap;Landroid/app/Notification;)V
    .locals 12
    .param p1, "dataMap"    # Lcom/google/android/gms/wearable/DataMap;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 609
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 637
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 615
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    .line 616
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 618
    .local v5, "streamId":Ljava/lang/String;
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "START: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Notification extras"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    invoke-direct {p0, v1}, Lcom/google/android/wearable/app/GlassDataListener;->logBundle(Landroid/os/Bundle;)V

    .line 622
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "DataMap fields"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 624
    .local v0, "dataMapBundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/google/android/wearable/app/GlassDataListener;->logBundle(Landroid/os/Bundle;)V

    .line 626
    const-string v6, "pages"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    const-string v6, "pages"

    .line 628
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 629
    .local v4, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "# of pages: %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 631
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 632
    .local v3, "page":Landroid/os/Bundle;
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Page: %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    invoke-direct {p0, v3}, Lcom/google/android/wearable/app/GlassDataListener;->logBundle(Landroid/os/Bundle;)V

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 636
    .end local v2    # "i":I
    .end local v3    # "page":Landroid/os/Bundle;
    .end local v4    # "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_1
    sget-object v6, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "END: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setBundleFields(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 333
    const-string v0, "group_key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "group_key"

    .line 339
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 341
    :cond_0
    const-string v0, "is_group_summary"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setIsBundleCover(Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 344
    :cond_1
    return-void

    .line 339
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setText(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 494
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getText(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 498
    :cond_0
    return-void
.end method

.method private setTitle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "dataMapBundle"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-static {p2}, Lcom/google/android/wearable/app/GlassDataListener;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 509
    :cond_0
    return-void
.end method

.method private setupMenuItemForActions(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 10
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "isWearableAction"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "actionsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v9, 0x0

    .line 378
    if-nez p2, :cond_1

    .line 421
    :cond_0
    return-void

    .line 381
    :cond_1
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 382
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 383
    .local v0, "actionData":Landroid/os/Bundle;
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 384
    .local v4, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v7, 0x7

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 385
    const-string v7, "com.google.android.wearable.app.WEAR_ITEM_ACTION"

    invoke-virtual {v4, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 387
    if-eqz p3, :cond_4

    .line 388
    invoke-static {v3}, Lcom/google/android/wearable/app/WearUtil;->getWearableActionIndexString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "actionIndexString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 394
    invoke-static {v0}, Lcom/google/android/wearable/app/GlassDataListener;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "actionTitle":Ljava/lang/String;
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    .line 397
    .local v5, "menuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    invoke-virtual {v5, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 399
    const-string v7, "icon"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 400
    sget-object v7, Lcom/google/android/wearable/app/WearIconProvider;->BASE_URI:Landroid/net/Uri;

    .line 402
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "remote_res"

    .line 403
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 404
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 405
    invoke-virtual {v7, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 406
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 407
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 400
    invoke-virtual {v5, v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setIconUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 409
    :cond_2
    invoke-virtual {v5, v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->setState(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 411
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aput-object v5, v7, v9

    iput-object v7, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 414
    iget-object v7, p0, Lcom/google/android/wearable/app/GlassDataListener;->voiceCommandGuesser:Lcom/google/android/wearable/app/VoiceCommandGuesser;

    invoke-virtual {v7, v2, p4}, Lcom/google/android/wearable/app/VoiceCommandGuesser;->getVoiceCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "voiceCommand":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 416
    invoke-virtual {v4, v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setVoiceCommand(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 419
    :cond_3
    invoke-static {p1, v4}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "actionIndexString":Ljava/lang/String;
    .end local v2    # "actionTitle":Ljava/lang/String;
    .end local v5    # "menuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v6    # "voiceCommand":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/google/android/wearable/app/WearUtil;->getNormalActionIndexString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "actionIndexString":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method deleteItem(Landroid/app/Notification;)V
    .locals 6
    .param p1, "notification"    # Landroid/app/Notification;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 138
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "streamId":Ljava/lang/String;
    const-string/jumbo v2, "wear:"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "com.google.android.wearable.stream.REMOTE_PACKAGE_NAME"

    .line 140
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "source":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Delete item: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/google/android/wearable/app/GlassDataListener;->deleteItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 140
    .end local v0    # "source":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method deleteItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "streamId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->WEAR_DATA_DELETED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 152
    invoke-virtual {v1, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 153
    .local v0, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deletePostDeleteIntent(Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassDataListener;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 157
    :cond_0
    return-void
.end method

.method isBackgroundTooSmall(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v1, 0xb4

    .line 557
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 558
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 9
    .param p1, "eventBuffer"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 110
    sget-object v2, Lcom/google/android/wearable/app/GlassDataListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onDataChanged [eventCount=%d, status=%s, metadata=%s]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v5

    aput-object v5, v4, v8

    .line 110
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {p1}, Lcom/google/android/gms/common/data/FreezableUtils;->freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataEvent;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataEvent;

    .line 115
    .local v0, "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/wearable/app/GlassDataListener;->insertOrUpdateItem(Lcom/google/android/gms/wearable/DataEvent;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/wearable/app/GlassDataListener;->deleteItem(Lcom/google/android/gms/wearable/DataEvent;)V

    goto :goto_0

    .line 121
    .end local v0    # "dataEvent":Lcom/google/android/gms/wearable/DataEvent;
    :cond_2
    return-void
.end method

.method setNotificationLevel(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "dataMapBundle"    # Landroid/os/Bundle;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 321
    const-string v3, "defaults"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 322
    .local v0, "defaultFlags":Ljava/lang/Integer;
    const-string v3, "has_sound"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 323
    .local v1, "hasSound":Z
    const-string/jumbo v3, "vibrate"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 324
    .local v2, "vibrate":[J
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 325
    :cond_0
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    const/16 v4, 0xa

    .line 326
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->setLevel(I)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v3

    .line 325
    invoke-virtual {p1, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setNotification(Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 328
    :cond_1
    return-void
.end method

.method setupMenuItemForActions(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "dataMapBundle"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 360
    const-string/jumbo v1, "wearable_actions"

    .line 361
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 362
    .local v0, "actionsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/wearable/app/GlassDataListener;->setupMenuItemForActions(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v1, "actions"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/android/wearable/app/GlassDataListener;->setupMenuItemForActions(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_0
.end method
