.class public abstract Lcom/google/android/location/os/real/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/location/os/real/be;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    if-nez v0, :cond_1

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "SdkSpecific"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "build number is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 91
    const-string v0, "com.google.android.location.os.real.SdkSpecific21"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 94
    const-string v0, "com.google.android.location.os.real.SdkSpecific19"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    goto :goto_0

    .line 95
    :cond_3
    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 97
    const-string v0, "com.google.android.location.os.real.SdkSpecific18"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    goto :goto_0

    .line 98
    :cond_4
    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 100
    const-string v0, "com.google.android.location.os.real.SdkSpecific17"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    goto :goto_0

    .line 101
    :cond_5
    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 104
    const-string v0, "com.google.android.location.os.real.SdkSpecific11"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    goto :goto_0

    .line 105
    :cond_6
    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    .line 107
    const-string v0, "com.google.android.location.os.real.SdkSpecific9"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    goto :goto_0

    .line 108
    :cond_7
    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    .line 110
    const-string v0, "com.google.android.location.os.real.SdkSpecific8"

    invoke-static {v0}, Lcom/google/android/location/os/real/be;->b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    goto :goto_0

    .line 112
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported SDK"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static a()Lcom/google/android/location/os/real/be;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/android/location/os/real/be;->a:Lcom/google/android/location/os/real/be;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/location/os/real/be;
    .locals 2

    .prologue
    .line 143
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/location/os/real/be;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/be;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :catch_1
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    :catch_2
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract a(Landroid/telephony/gsm/GsmCellLocation;)I
.end method

.method public abstract a(Ljava/lang/String;)I
.end method

.method public abstract a(Landroid/location/Location;)J
.end method

.method public abstract a(Landroid/net/wifi/ScanResult;)J
.end method

.method public abstract a(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/az;
.end method

.method public abstract a(Landroid/content/Context;Lcom/google/android/location/os/at;)Lcom/google/android/location/os/aw;
.end method

.method public abstract a(Landroid/app/AlarmManager;IJJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V
.end method

.method public abstract a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/p/j;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end method

.method public abstract a(Lcom/google/android/location/os/at;J)V
.end method

.method public abstract a(Ljava/io/File;)V
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public abstract a(Landroid/hardware/SensorManager;I)Z
.end method

.method public abstract a(Landroid/net/wifi/WifiManager;Landroid/content/Context;)Z
.end method

.method public abstract a(Landroid/os/PowerManager;)Z
.end method

.method public abstract a(Landroid/telephony/TelephonyManager;IJ)[Lcom/google/android/location/f/g;
.end method

.method public abstract b(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/bt;
.end method

.method public abstract b(Landroid/location/Location;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method
