.class public final Lcom/google/android/gms/common/util/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/android/gms/common/util/ac;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ac;->a:Ljava/lang/reflect/Method;

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/util/ac;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ac;->b:Ljava/lang/reflect/Method;

    .line 27
    invoke-static {}, Lcom/google/android/gms/common/util/ac;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ac;->c:Ljava/lang/reflect/Method;

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/util/ac;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ac;->d:Ljava/lang/reflect/Method;

    .line 29
    invoke-static {}, Lcom/google/android/gms/common/util/ac;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/ac;->e:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a(Landroid/os/WorkSource;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-object v0, Lcom/google/android/gms/common/util/ac;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/ac;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public static a(Landroid/os/WorkSource;I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v0, Lcom/google/android/gms/common/util/ac;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/ac;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 38
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/ac;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 39
    return-object v0
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/gms/common/util/ac;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 71
    if-nez p2, :cond_0

    .line 74
    const-string p2, ""

    .line 79
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/ac;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v1, "Unable to assign blame through WorkSource"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/ac;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 89
    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/util/ac;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v1, "Unable to assign blame through WorkSource"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 150
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/os/WorkSource;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/gms/common/util/ac;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/ac;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v1, "Unable to assign blame through WorkSource"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "add"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "size"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 192
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static e()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "getName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
