.class public final Lcom/google/android/gms/common/ui/SignInButtonCreatorImpl;
.super Lcom/google/android/gms/common/internal/ae;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/ae;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    .line 47
    :try_start_0
    const-string v1, "com.google.android.gms"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/e/i;II)Lcom/google/android/gms/e/i;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/common/ui/SignInButtonCreatorImpl;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Could not load GMS resources!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 40
    :cond_1
    new-instance v2, Lcom/google/android/gms/common/internal/an;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/internal/an;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v2, v1, p2, p3}, Lcom/google/android/gms/common/internal/an;->a(Landroid/content/res/Resources;II)V

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    return-object v0
.end method
