.class public Lcom/google/glass/deviceadmin/DeviceAdminApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "DeviceAdminApplication.java"


# static fields
.field private static final CHECKIN_INTERVAL_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->CHECKIN_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 25
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-void
.end method

.method private getCheckinIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/deviceadmin/CheckinReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 31
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->alarmManager:Landroid/app/AlarmManager;

    .line 32
    return-void
.end method

.method startCheckingIn()V
    .locals 6

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Checking in device"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventHelper;->checkin()V

    .line 43
    iget-object v0, p0, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->CHECKIN_INTERVAL_MS:J

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/google/glass/deviceadmin/DeviceAdminApplication;->getCheckinIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 43
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 45
    return-void
.end method
