.class Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;
.super Landroid/os/AsyncTask;
.source "GlassWearApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/GlassWearApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableNotificationListenerAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/app/GlassWearApplication;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/GlassWearApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/wearable/app/GlassWearApplication;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 187
    iget-object v4, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    .line 188
    invoke-static {v4}, Landroid/support/v4/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 189
    .local v1, "enabledListeners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    invoke-virtual {v4}, Lcom/google/android/wearable/app/GlassWearApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-static {}, Lcom/google/android/wearable/app/GlassWearApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "EnableNotificationListener: already a notification listener"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_0
    return-object v10

    .line 192
    :cond_0
    iget-object v4, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    invoke-virtual {v4}, Lcom/google/android/wearable/app/GlassWearApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 193
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    iget-object v5, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    .line 194
    invoke-virtual {v5}, Lcom/google/android/wearable/app/GlassWearApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 195
    invoke-static {}, Lcom/google/android/wearable/app/GlassWearApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "EnableNotificationListener: missing permission to add self to notification listeners"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    .line 201
    invoke-virtual {v4}, Lcom/google/android/wearable/app/GlassWearApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_notification_listeners"

    .line 200
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "listeners":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    const-class v6, Lcom/google/android/clockwork/stream/NotificationCollectorService;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "component":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 206
    :cond_2
    move-object v2, v0

    .line 211
    :goto_1
    iget-object v4, p0, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->this$0:Lcom/google/android/wearable/app/GlassWearApplication;

    .line 212
    invoke-virtual {v4}, Lcom/google/android/wearable/app/GlassWearApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_notification_listeners"

    .line 211
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    invoke-static {}, Lcom/google/android/wearable/app/GlassWearApplication;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "EnableNotificationListener: added self to notification listeners"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
