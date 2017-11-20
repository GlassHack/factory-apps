.class public final Lcom/google/glass/auth/AuthUtilsProvider;
.super Lcom/google/glass/inject/Provider;
.source "AuthUtilsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/auth/AuthUtils;",
        ">;"
    }
.end annotation


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
    .param p0, "x0"    # Lcom/google/glass/auth/AuthUtilsProvider;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/accounts/AccountManager;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/auth/AuthUtilsProvider;->createAuthUtils(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    return-object v0
.end method

.method private createAuthUtils(Ljava/lang/String;Landroid/content/Context;Landroid/accounts/AccountManager;)Lcom/google/glass/auth/AuthUtils;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accountManager"    # Landroid/accounts/AccountManager;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/accounts/AccountManager;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/auth/AuthUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    return-object v2

    .line 76
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 80
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 82
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 84
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance()Lcom/google/glass/auth/AuthUtilsProvider;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/auth/AuthUtilsProvider;->instance:Lcom/google/glass/auth/AuthUtilsProvider;

    return-object v0
.end method


# virtual methods
.method public createAuthUtilsGlassForTest(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

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

.method public get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/google/glass/auth/AuthUtilsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/auth/AuthUtilsProvider$1;-><init>(Lcom/google/glass/auth/AuthUtilsProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/auth/AuthUtils;

    return-object v0
.end method
