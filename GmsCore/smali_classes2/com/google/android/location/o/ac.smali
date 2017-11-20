.class public final Lcom/google/android/location/o/ac;
.super Lcom/google/android/location/o/ab;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;


# instance fields
.field private final b:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/android/location/o/ac;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/o/ac;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/location/o/ab;-><init>()V

    .line 27
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/google/android/location/o/ac;->b:Landroid/os/UserManager;

    .line 28
    return-void
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string v2, "getIdentifier"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 55
    const-string v2, "MultiUserUtilApi20"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find getIdentifier method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/google/android/location/o/ac;->b:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 39
    sget-object v3, Lcom/google/android/location/o/ac;->a:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
