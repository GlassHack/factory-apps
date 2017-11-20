.class public final Lcom/google/android/gms/gcm/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/Object;

.field private static c:I

.field private static d:Ljava/lang/Class;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Constructor;

.field private static h:Landroid/os/UserHandle;

.field private static i:Z

.field private static j:Landroid/content/pm/PackageManager;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Landroid/app/ActivityManager;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/Class;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Ljava/lang/Class;

.field private static s:Ljava/lang/reflect/Field;

.field private static t:Ljava/lang/reflect/Field;

.field private static u:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    .line 74
    sput v0, Lcom/google/android/gms/gcm/f;->c:I

    .line 82
    sput-boolean v0, Lcom/google/android/gms/gcm/f;->i:Z

    return-void
.end method

.method public static a(I)I
    .locals 5

    .prologue
    .line 261
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->o:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 268
    :cond_0
    :goto_0
    return p0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting user serial from id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a()Ljava/util/List;
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->q:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting user ID from serial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_1

    .line 338
    invoke-static {p1}, Lcom/google/android/gms/gcm/f;->e(I)I

    move-result v0

    .line 339
    if-gez v0, :cond_0

    move-object v0, v1

    .line 349
    :goto_0
    return-object v0

    .line 343
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gms/gcm/f;->k:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/google/android/gms/gcm/f;->j:Landroid/content/pm/PackageManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error querying broadcast receivers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    .line 349
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 108
    sget-boolean v0, Lcom/google/android/gms/gcm/f;->i:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    .line 112
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/google/android/gms/gcm/f;->l:Landroid/app/ActivityManager;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->j:Landroid/content/pm/PackageManager;

    .line 115
    sget-object v0, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->n:Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->n:Ljava/lang/Class;

    const-string v1, "supportsMultipleUsers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    :cond_1
    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-nez v0, :cond_3

    const-string v0, "GCM"

    const-string v1, "COMPAT: Multi user not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_2
    :goto_1
    :try_start_1
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "isNetworkTypeMobile"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->u:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :goto_2
    sput-boolean v6, Lcom/google/android/gms/gcm/f;->i:Z

    goto :goto_0

    .line 116
    :cond_3
    :try_start_2
    sget-object v0, Lcom/google/android/gms/gcm/f;->n:Ljava/lang/Class;

    const-string v1, "getUserHandle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/gcm/f;->n:Ljava/lang/Class;

    const-string v2, "getUserHandle"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->f:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/google/android/gms/gcm/f;->n:Ljava/lang/Class;

    const-string v2, "getUserSerialNumber"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->o:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/gms/gcm/f;->c:I

    const-class v0, Landroid/app/ActivityManager;

    const-string v2, "getCurrentUser"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->p:Ljava/lang/reflect/Method;

    const-class v0, Landroid/app/ActivityManager;

    const-string v2, "isUserRunning"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->m:Ljava/lang/reflect/Method;

    const-string v0, "android.os.UserHandle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->d:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->g:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/google/android/gms/gcm/f;->h:Landroid/os/UserHandle;

    const-class v0, Landroid/content/Context;

    const-string v2, "sendOrderedBroadcastAsUser"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/gms/gcm/f;->d:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->e:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/pm/PackageManager;

    const-string v2, "queryBroadcastReceivers"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->k:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/google/android/gms/gcm/f;->n:Ljava/lang/Class;

    const-string v2, "getUsers"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->q:Ljava/lang/reflect/Method;

    const-string v0, "android.content.pm.UserInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->r:Ljava/lang/Class;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->t:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/google/android/gms/gcm/f;->r:Ljava/lang/Class;

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/f;->s:Ljava/lang/reflect/Field;

    const-string v0, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "COMPAT: Multi user ser="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/google/android/gms/gcm/f;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "COMPAT: Multiuser init error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    const-string v1, "GCM"

    const-string v2, "No ConnectivityManager.isNetworkTypeMobile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 279
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/gcm/f;->e(I)I

    move-result v0

    .line 282
    sget-object v1, Lcom/google/android/gms/gcm/f;->g:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    sget-object v1, Lcom/google/android/gms/gcm/f;->e:Ljava/lang/reflect/Method;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    const/4 v0, 0x4

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed ordered broadcast "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v7, v6

    .line 289
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->c(Ljava/lang/Object;)I

    move-result v0

    .line 194
    :try_start_0
    sget-object v2, Lcom/google/android/gms/gcm/f;->m:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/google/android/gms/gcm/f;->l:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error isUserRunning: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method public static b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->p:Ljava/lang/reflect/Method;

    const-class v2, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 257
    :goto_0
    return v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in getCurrentUser: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method static b(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 203
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting field serialNumber: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v2, :cond_1

    .line 316
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->e(I)I

    move-result v2

    .line 317
    if-gez v2, :cond_0

    .line 326
    :goto_0
    return v0

    .line 321
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->m:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/google/android/gms/gcm/f;->l:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting user running: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->t:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting field ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    .line 354
    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    return v0
.end method

.method public static c(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v2, :cond_2

    .line 331
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->e(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 331
    goto :goto_0

    .line 333
    :cond_2
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    .line 362
    sget v0, Lcom/google/android/gms/gcm/f;->c:I

    return v0
.end method

.method public static d(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    .line 367
    sget-object v0, Lcom/google/android/gms/gcm/f;->u:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    move v0, v1

    .line 376
    :goto_0
    return v0

    .line 371
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->u:Ljava/lang/reflect/Method;

    const-class v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/gms/gcm/f;->u:Ljava/lang/reflect/Method;

    .line 374
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Broken ConnectivityManager.isNetworkTypeMobile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 376
    goto :goto_0
.end method

.method private static e(I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-static {}, Lcom/google/android/gms/gcm/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/gcm/f;->a:Z

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/f;->f:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/google/android/gms/gcm/f;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting user ID from serial: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 246
    goto :goto_0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 179
    sget-boolean v0, Lcom/google/android/gms/gcm/f;->i:Z

    if-nez v0, :cond_0

    .line 182
    const-string v0, "GCM"

    const-string v1, "Compat called without init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    sget-boolean v0, Lcom/google/android/gms/gcm/f;->i:Z

    return v0
.end method
