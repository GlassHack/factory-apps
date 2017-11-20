.class public Lcom/google/android/gms/gcm/GcmNetworkManager;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_SCHEDULE:Ljava/lang/String; = "com.google.android.gms.gcm.ACTION_SCHEDULE"

.field public static final CANCEL_ALL:Ljava/lang/String; = "CANCEL_ALL"

.field public static final CANCEL_TASK:Ljava/lang/String; = "CANCEL_TASK"

.field private static EZ:Lcom/google/android/gms/gcm/GcmNetworkManager; = null

.field public static final INTENT_PARAM_ACTION:Ljava/lang/String; = "scheduler_action"

.field public static final INTENT_PARAM_APP:Ljava/lang/String; = "app"

.field public static final INTENT_PARAM_CALLBACK:Ljava/lang/String; = "callback"

.field public static final INTENT_PARAM_CMP:Ljava/lang/String; = "component"

.field public static final INTENT_PARAM_PERIOD_FLEX:Ljava/lang/String; = "period_flex"

.field public static final INTENT_PARAM_PERIOD_LENGTH:Ljava/lang/String; = "period"

.field public static final INTENT_PARAM_TAG:Ljava/lang/String; = "tag"

.field public static final INTENT_PARAM_TASK:Ljava/lang/String; = "task"

.field public static final INTENT_PARAM_UPDATE_CURRENT:Ljava/lang/String; = "update_current"

.field public static final INTENT_PARAM_WINDOW_END:Ljava/lang/String; = "window_end"

.field public static final INTENT_PARAM_WINDOW_START:Ljava/lang/String; = "window_start"

.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_RESCHEDULE:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SCHEDULE:Ljava/lang/String; = "ACTION_SCHEDULE"

.field public static final SCHEDULE_RECURRING:Ljava/lang/String; = "SCHEDULE_RECURRING"

.field public static final SCHEDULE_TASK:Ljava/lang/String; = "SCHEDULE_TASK"


# instance fields
.field private Fa:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private ak(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a valid tag."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private al(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "GcmTaskService must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v4, "There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The GcmTaskService class you provided "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not seem to support receiving"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " com.google.android.gms.gcm.ACTION_TASK_READY."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->b(ZLjava/lang/Object;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private ev()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->verifyPackageIsGoogleSigned(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The Google Play Services installed on your device is not from Google. This could be a malicious app trying to spoof you."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/google/android/gms/gcm/GcmNetworkManager;->EZ:Lcom/google/android/gms/gcm/GcmNetworkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/gcm/GcmNetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmNetworkManager;->EZ:Lcom/google/android/gms/gcm/GcmNetworkManager;

    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmNetworkManager;->EZ:Lcom/google/android/gms/gcm/GcmNetworkManager;

    return-object v0
.end method


# virtual methods
.method public cancelAllTasks(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "gcmTaskService":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/gcm/GcmTaskService;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->al(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->ev()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scheduler_action"

    const-string v2, "CANCEL_ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "component"

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public cancelTask(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "gcmTaskService":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/gcm/GcmTaskService;>;"
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->ak(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->al(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->ev()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scheduler_action"

    const-string v2, "CANCEL_TASK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "component"

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method ew()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->Fa:Landroid/content/ComponentName;

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "There is no TaskService component registered within this package. Have you extended GcmTaskService correctly?"

    const-string v1, "GcmNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    const-string v0, "There are multiple TaskService components registered for this package. You must setService() to distinguish between them for your task."

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "GcmNetworkManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->Fa:Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->Fa:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->al(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public schedule(Lcom/google/android/gms/gcm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/google/android/gms/gcm/Task;

    .prologue
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/Task;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->al(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->ev()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scheduler_action"

    const-string v2, "SCHEDULE_TASK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "task"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public scheduleTask(JJLjava/lang/String;Z)V
    .locals 2
    .param p1, "windowStartSecs"    # J
    .param p3, "windowEndSecs"    # J
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "updateCurrent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->ew()V

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->Fa:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setService(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    return-void
.end method

.method public setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/GcmNetworkManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/gcm/GcmTaskService;",
            ">;)",
            "Lcom/google/android/gms/gcm/GcmNetworkManager;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "endPoint":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/gcm/GcmTaskService;>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmNetworkManager;->Fa:Landroid/content/ComponentName;

    return-object p0
.end method
