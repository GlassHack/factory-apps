.class public Lcom/google/android/location/os/real/SdkSpecific19;
.super Lcom/google/android/location/os/real/SdkSpecific18;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-static {}, Lcom/google/android/location/os/real/SdkSpecific19;->f()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/SdkSpecific19;->a:Ljava/lang/reflect/Method;

    .line 32
    invoke-static {}, Lcom/google/android/location/os/real/SdkSpecific19;->g()Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/location/os/real/SdkSpecific19;->b:Ljava/lang/reflect/Method;

    .line 37
    sput-boolean v2, Lcom/google/android/location/os/real/SdkSpecific19;->f:Z

    .line 46
    :try_start_0
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 47
    const-string v1, "createFromDeprecatedProvider"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 54
    :try_start_1
    const-string v1, "setHideFromAppOps"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 56
    :try_start_2
    const-class v4, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 67
    :cond_0
    :goto_0
    sput-object v2, Lcom/google/android/location/os/real/SdkSpecific19;->c:Ljava/lang/reflect/Method;

    .line 68
    sput-object v1, Lcom/google/android/location/os/real/SdkSpecific19;->d:Ljava/lang/reflect/Method;

    .line 69
    sput-object v0, Lcom/google/android/location/os/real/SdkSpecific19;->e:Ljava/lang/reflect/Method;

    .line 70
    return-void

    .line 61
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v2, v0

    move-object v1, v0

    .line 64
    :goto_1
    sget-boolean v4, Lcom/google/android/location/j/a;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "SdkSpecific19"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to get LocationRequest methods: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific18;-><init>()V

    return-void
.end method

.method private static f()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    :try_start_0
    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "startScan"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/WorkSource;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static g()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    :try_start_0
    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "set"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Landroid/os/WorkSource;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/AlarmManager;IJJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V
    .locals 7

    .prologue
    const/4 v1, 0x2

    .line 119
    sget-object v0, Lcom/google/android/location/os/real/SdkSpecific19;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    if-eqz p8, :cond_1

    .line 121
    :try_start_0
    sget-object v2, Lcom/google/android/location/os/real/SdkSpecific19;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object p7, v3, v0

    const/4 v4, 0x5

    if-nez p8, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_1
    return-void

    .line 121
    :cond_0
    invoke-virtual {p8}, Lcom/google/android/location/p/j;->b()Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    sget-boolean v2, Lcom/google/android/location/j/a;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "SdkSpecific19"

    const-string v3, "Unable to assign WorkSource blame to alarm in setAlarmWindow."

    invoke-static {v2, v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    .line 131
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public final a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V
    .locals 5

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/location/os/real/SdkSpecific19;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    .line 95
    :try_start_0
    sget-object v0, Lcom/google/android/location/os/real/SdkSpecific19;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p6}, Lcom/google/android/location/p/j;->b()Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "SdkSpecific19"

    const-string v2, "Unable to assign WorkSource blame to alarm."

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/p/j;)V
    .locals 5

    .prologue
    .line 74
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 77
    sget-object v1, Lcom/google/android/location/os/real/SdkSpecific19;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 79
    :try_start_0
    sget-object v1, Lcom/google/android/location/os/real/SdkSpecific19;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/google/android/location/p/j;->b()Landroid/os/Parcelable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "SdkSpecific19"

    const-string v2, "Unable to assign WorkSource blame to wifi scan."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 140
    sget-object v3, Lcom/google/android/location/os/real/SdkSpecific19;->e:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 141
    sget-boolean v3, Lcom/google/android/location/os/real/SdkSpecific19;->f:Z

    if-nez v3, :cond_0

    .line 142
    const-string v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    sput-boolean v1, Lcom/google/android/location/os/real/SdkSpecific19;->f:Z

    .line 146
    :cond_0
    sget-boolean v1, Lcom/google/android/location/os/real/SdkSpecific19;->f:Z

    if-eqz v1, :cond_2

    .line 148
    :try_start_0
    sget-object v1, Lcom/google/android/location/os/real/SdkSpecific19;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 151
    sget-object v2, Lcom/google/android/location/os/real/SdkSpecific19;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v2, Lcom/google/android/location/os/real/SdkSpecific19;->e:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object p3, v3, v1

    const/4 v1, 0x2

    aput-object p4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 142
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "SdkSpecific19"

    const-string v2, "Unable to hide location request from AppOps."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    const-wide/16 v2, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1
.end method

.method public final a(Landroid/hardware/SensorManager;I)Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getFifoMaxEventCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
