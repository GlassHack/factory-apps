.class public final Lcom/google/glass/auth/AuthUtilsProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final COMPANION_AUTH_UTILS_CLASS_NAME:Ljava/lang/String; = "com.google.glass.companion.auth.CompanionAuthUtils"

.field private static final GLASS_AUTH_UTILS_CLASS_NAME:Ljava/lang/String; = "com.google.glass.auth.GlassAuthUtils"

.field private static final instance:Lcom/google/glass/auth/AuthUtilsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/glass/auth/AuthUtilsProvider;

    invoke-direct {v0}, Lcom/google/glass/auth/AuthUtilsProvider;-><init>()V

    sput-object v0, Lcom/google/glass/auth/AuthUtilsProvider;->instance:Lcom/google/glass/auth/AuthUtilsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/auth/AuthUtilsProvider;Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/auth/AuthUtilsProvider;->createAuthUtils(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    return-object v0
.end method

.method private createAuthUtils(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;
    .locals 4

    .prologue
    .line 73
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/accounts/AccountManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/auth/AuthUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_2
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    :catch_3
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :catch_4
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 86
    :catch_5
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Lcom/google/glass/auth/AuthUtilsProvider;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/auth/AuthUtilsProvider;->instance:Lcom/google/glass/auth/AuthUtilsProvider;

    return-object v0
.end method


# virtual methods
.method public final createAuthUtilsGlassForTest(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;
    .locals 2

    .prologue
    .line 66
    const-string v0, "com.google.glass.auth.GlassAuthUtils"

    .line 67
    invoke-static {}, Lcom/google/glass/android/accounts/AccountManagerProvider;->getInstance()Lcom/google/glass/android/accounts/AccountManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/android/accounts/AccountManagerProvider;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 66
    invoke-direct {p0, v0, p1, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->createAuthUtils(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    return-object v0
.end method

.method public final get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;
    .locals 1

    .prologue
    .line 53
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/google/glass/auth/AuthUtilsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/auth/AuthUtilsProvider$1;-><init>(Lcom/google/glass/auth/AuthUtilsProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/auth/AuthUtils;

    return-object v0
.end method
