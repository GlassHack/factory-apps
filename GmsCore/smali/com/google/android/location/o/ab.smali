.class public Lcom/google/android/location/o/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/android/location/o/ab;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/o/ab;->a:Ljava/lang/reflect/Method;

    .line 27
    invoke-static {}, Lcom/google/android/location/o/ab;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/o/ab;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/o/ab;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/android/gms/common/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/location/o/ac;

    invoke-direct {v0, p0}, Lcom/google/android/location/o/ac;-><init>(Landroid/content/Context;)V

    .line 37
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/location/o/ab;

    invoke-direct {v0}, Lcom/google/android/location/o/ab;-><init>()V

    goto :goto_0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "getCurrentUser"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 110
    const-string v2, "MultiUserUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find getCurrentUser method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static c()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "myUserId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v1

    .line 124
    const-string v2, "MultiUserUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find myUserId method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 57
    sget-object v0, Lcom/google/android/location/o/ab;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/o/ab;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 78
    :goto_0
    return v0

    .line 64
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/location/o/ab;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/o/ab;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 69
    const-string v2, "MultiUserUtil"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    const-string v2, "MultiUserUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method protected a(I)Z
    .locals 4

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/location/o/ab;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    const-string v1, "MultiUserUtil"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "MultiUserUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentUserId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " myProcessUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
