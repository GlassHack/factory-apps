.class Lcom/google/android/apps/analytics/DeviceOptOutImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/OptOut;


# static fields
.field static final OPTOUT_ID:Ljava/lang/String; = "com.google.analytics.optout"

.field static final OPTOUT_TIME_CHECK_IN_SECONDS:I = 0x12c


# instance fields
.field private final checkIntervalInMillis:J

.field private lastTimeChecked:J

.field private final optOutApp:Ljava/lang/String;

.field private optedOut:Z

.field private final pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->pm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->optedOut:Z

    const-string v0, "com.google.analytics.optout"

    iput-object v0, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->optOutApp:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->checkIntervalInMillis:J

    return-void
.end method


# virtual methods
.method public optedOut()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->lastTimeChecked:J

    iget-wide v4, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->checkIntervalInMillis:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->optOutApp:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->optedOut:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->lastTimeChecked:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->optedOut:Z

    return v0

    :catch_0
    move-exception v2

    iput-boolean v6, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->optedOut:Z

    goto :goto_0
.end method

.method resetLastTimeChecked()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/DeviceOptOutImpl;->lastTimeChecked:J

    return-void
.end method
