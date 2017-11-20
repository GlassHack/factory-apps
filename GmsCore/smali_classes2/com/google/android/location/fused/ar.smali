.class public final Lcom/google/android/location/fused/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;


# instance fields
.field private final e:Landroid/location/LocationManager;

.field private final f:Z

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 39
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 42
    const-string v1, "createFromDeprecatedProvider"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v4, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    :try_start_1
    const-string v1, "setWorkSource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/WorkSource;

    aput-object v6, v2, v5

    invoke-virtual {v4, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 51
    :try_start_2
    const-string v1, "setHideFromAppOps"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 53
    :try_start_3
    const-class v5, Landroid/location/LocationManager;

    const-string v6, "requestLocationUpdates"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    const-class v8, Landroid/location/LocationListener;

    aput-object v8, v7, v4

    const/4 v4, 0x2

    const-class v8, Landroid/os/Looper;

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 66
    :goto_0
    sput-object v3, Lcom/google/android/location/fused/ar;->a:Ljava/lang/reflect/Method;

    .line 67
    sput-object v2, Lcom/google/android/location/fused/ar;->b:Ljava/lang/reflect/Method;

    .line 68
    sput-object v1, Lcom/google/android/location/fused/ar;->c:Ljava/lang/reflect/Method;

    .line 69
    sput-object v0, Lcom/google/android/location/fused/ar;->d:Ljava/lang/reflect/Method;

    .line 70
    return-void

    .line 58
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    .line 61
    :goto_1
    const-string v5, "LocationManagerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to get LocationRequest methods: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v2, v0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/fused/ar;->e:Landroid/location/LocationManager;

    .line 78
    const-string v0, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/fused/ar;->f:Z

    .line 80
    iput-object p1, p0, Lcom/google/android/location/fused/ar;->g:Landroid/content/Context;

    .line 81
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/location/fused/ar;->e:Landroid/location/LocationManager;

    return-object v0
.end method

.method public final a(Ljava/lang/String;JLandroid/location/LocationListener;Landroid/os/Looper;Ljava/util/Collection;Z)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 98
    sget-object v1, Lcom/google/android/location/fused/ar;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 100
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/location/fused/ar;->f:Z

    if-nez v1, :cond_0

    .line 102
    const-string v1, "LocationManagerHelper"

    const-string v2, "Don\'t have permissions to modify app ops"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p7, v0

    .line 104
    :cond_0
    sget-object v0, Lcom/google/android/location/fused/ar;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/google/android/location/fused/ar;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/util/ac;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    sget-object v1, Lcom/google/android/location/fused/ar;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p6}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    sget-object v1, Lcom/google/android/location/fused/ar;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/google/android/location/fused/ar;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/location/fused/ar;->e:Landroid/location/LocationManager;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object p4, v3, v0

    const/4 v0, 0x2

    aput-object p5, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "LocationManagerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to assign LocationManager blame through WorkSource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/ar;->e:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method
