.class public Lcom/google/android/apps/lightcycle/panorama/StitchingService;
.super Landroid/app/Service;
.source "StitchingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;,
        Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;
    }
.end annotation


# static fields
.field public static final ACTION_PAUSE_STITCHING_SERVICE:Ljava/lang/String; = "com.google.android.apps.lightcycle.panorama.PAUSE"

.field public static final ACTION_RESUME_STITCHING_SERVICE:Ljava/lang/String; = "com.google.android.apps.lightcycle.panorama.RESUME"

.field private static final ACTION_STITCHING:Ljava/lang/String; = "Stitching"

.field private static final CATEGORY_STITCHING:Ljava/lang/String; = "Stitching"

.field private static final LABEL_STITCH_TIME:Ljava/lang/String; = "Stitch time"

.field public static final NOTIFICATION_ID:I = 0x1

.field private static final PROCESS_PRIORITY:I = -0x4

.field private static final PROTECTED_PANORAMA_VIEW_ACTIVITY_CLASS_NAME:Ljava/lang/String; = "com.google.android.apps.lightcycle.ProtectedPanoramaViewActivity"

.field private static final SERVICE_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

.field private final binder:Landroid/os/IBinder;

.field private currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

.field private inProgressNotification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private paused:Z

.field private final serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

.field private stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->binder:Landroid/os/IBinder;

    .line 86
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .line 369
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;
    .param p1, "x1"    # Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->analyticsHelper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createImageURI(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/lightcycle/panorama/StitchingService;ILjava/lang/String;Z)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createCompletedNotification(ILjava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchNextSession()V

    return-void
.end method

.method private createCompletedNotification(ILjava/lang/String;Z)Landroid/app/Notification;
    .locals 13
    .param p1, "notificationId"    # I
    .param p2, "outputFile"    # Ljava/lang/String;
    .param p3, "isPanorama"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 212
    :cond_0
    const/4 v7, 0x0

    .line 260
    :goto_0
    return-object v7

    .line 216
    :cond_1
    if-eqz p3, :cond_2

    .line 218
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getPanoramaViewActivityClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v6, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "filename"

    invoke-virtual {v6, v11, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :goto_1
    sget v5, Lcom/google/android/apps/lightcycle/R$drawable;->glow8blue32:I

    .line 230
    .local v5, "icon":I
    sget v11, Lcom/google/android/apps/lightcycle/R$string;->stitching_finished:I

    invoke-virtual {p0, v11}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 231
    .local v8, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 234
    .local v9, "when":J
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 235
    .local v4, "context":Landroid/content/Context;
    sget v11, Lcom/google/android/apps/lightcycle/R$string;->app_name:I

    invoke-virtual {p0, v11}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 236
    .local v3, "contentTitle":Ljava/lang/CharSequence;
    sget v11, Lcom/google/android/apps/lightcycle/R$string;->stitching_finished:I

    invoke-virtual {p0, v11}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 240
    .local v2, "contentText":Ljava/lang/CharSequence;
    const/4 v11, 0x0

    invoke-static {p0, p1, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 243
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_3

    .line 244
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    goto :goto_0

    .line 223
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "contentText":Ljava/lang/CharSequence;
    .end local v3    # "contentTitle":Ljava/lang/CharSequence;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "icon":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "tickerText":Ljava/lang/CharSequence;
    .end local v9    # "when":J
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 224
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 252
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v2    # "contentText":Ljava/lang/CharSequence;
    .restart local v3    # "contentTitle":Ljava/lang/CharSequence;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "icon":I
    .restart local v8    # "tickerText":Ljava/lang/CharSequence;
    .restart local v9    # "when":J
    :cond_3
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 253
    .local v7, "notification":Landroid/app/Notification;
    iput v5, v7, Landroid/app/Notification;->icon:I

    .line 254
    iput-object v8, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 255
    iput-wide v9, v7, Landroid/app/Notification;->when:J

    .line 256
    iget v11, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v7, Landroid/app/Notification;->flags:I

    .line 257
    iput-object v1, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 258
    invoke-direct {p0, v3, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createNotificationContentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    move-result-object v11

    iput-object v11, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0
.end method

.method public static createImageContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 9
    .param p0, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v5, "values":Landroid/content/ContentValues;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "imageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "fileName":Ljava/lang/String;
    const-string v6, "title"

    const/4 v7, 0x0

    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v6, "_display_name"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v6, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v6, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string v6, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 348
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "parentPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "parentName":Ljava/lang/String;
    const-string v6, "bucket_id"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v6, "bucket_display_name"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v5
.end method

.method private createImageURI(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-static {p1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createImageContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 321
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->loadLocationFromExif(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    .line 326
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 333
    :goto_0
    return-object p2

    .line 330
    :cond_0
    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createInProgressNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 181
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/apps/lightcycle/R$layout;->progress_notification:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 183
    .local v0, "contentView":Landroid/widget/RemoteViews;
    sget v4, Lcom/google/android/apps/lightcycle/R$id;->stitching_icon:I

    sget v5, Lcom/google/android/apps/lightcycle/R$drawable;->glow8orange64:I

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 185
    sget v4, Lcom/google/android/apps/lightcycle/R$id;->stitching_title:I

    invoke-virtual {v0, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 186
    sget v4, Lcom/google/android/apps/lightcycle/R$id;->stitching_progress:I

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    .local v2, "when":J
    new-instance v1, Landroid/app/Notification;

    sget v4, Lcom/google/android/apps/lightcycle/R$drawable;->glow8orange32:I

    invoke-direct {v1, v4, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 191
    .local v1, "notification":Landroid/app/Notification;
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 192
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 193
    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 195
    return-object v1
.end method

.method private createNotificationContentView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 535
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/apps/lightcycle/R$layout;->stitching_complete_notification:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 539
    .local v1, "contentView":Landroid/widget/RemoteViews;
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->notificationLayout_imageView:I

    sget v3, Lcom/google/android/apps/lightcycle/R$drawable;->glow8blue80:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 541
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->notificationLayout_title:I

    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 542
    sget v2, Lcom/google/android/apps/lightcycle/R$id;->notificationLayout_text:I

    invoke-virtual {v1, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 544
    return-object v1
.end method

.method private static getPanoramaViewActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 556
    :try_start_0
    const-string v0, "com.google.android.apps.lightcycle.ProtectedPanoramaViewActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 557
    :catch_0
    move-exception v0

    .line 560
    const-class v0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    goto :goto_0
.end method

.method private static loadLocationFromExif(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 357
    const/4 v3, 0x2

    :try_start_0
    new-array v2, v3, [F

    .line 358
    .local v2, "location":[F
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    const-string v3, "latitude"

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 361
    const-string v3, "longitude"

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "location":[F
    :cond_0
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->TAG:Ljava/lang/String;

    const-string v4, "Could not read EXIF"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stitchNextSession()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 266
    const-string v0, "Stitching next session."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->popNextSession()Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;

    move-result-object v2

    .line 269
    .local v2, "session":Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;
    if-nez v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stopSelf()V

    .line 291
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->sessionDir:Ljava/lang/String;

    .line 276
    .local v3, "sessionPath":Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->mosaicFilePath:Ljava/lang/String;

    .line 277
    .local v4, "outputFile":Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->thumbnailFilePath:Ljava/lang/String;

    .line 278
    .local v5, "thumbnailFile":Ljava/lang/String;
    iget-object v0, v2, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;->storage:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->imageUri:Landroid/net/Uri;

    .line 280
    .local v6, "imageUri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;-><init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager$StitchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    .line 282
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend()V

    .line 286
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 126
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    .line 128
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->getStitchingServiceManager(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    .line 130
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 131
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.google.android.apps.lightcycle.panorama.PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v2, "com.google.android.apps.lightcycle.panorama.RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchingServiceManager:Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingServiceManager;->stitchingFinished()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 145
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->serviceController:Lcom/google/android/apps/lightcycle/panorama/StitchingService$ServiceController;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 296
    sget v0, Lcom/google/android/apps/lightcycle/R$string;->stitching_notification:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->createInProgressNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->startForeground(ILandroid/app/Notification;)V

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->inProgressNotification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 311
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->stitchNextSession()V

    .line 315
    return v2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->suspend()V

    .line 162
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->paused:Z

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService;->currentTask:Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchTask;->resume()V

    .line 172
    :cond_0
    return-void
.end method
