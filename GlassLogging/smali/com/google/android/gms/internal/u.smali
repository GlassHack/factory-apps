.class public final Lcom/google/android/gms/internal/u;
.super Lcom/google/android/gms/dynamic/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/e",
        "<",
        "Lcom/google/android/gms/internal/w;",
        ">;"
    }
.end annotation


# static fields
.field private static final kJ:Lcom/google/android/gms/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/internal/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/u;->kJ:Lcom/google/android/gms/internal/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.adshield.AdShieldCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/v;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/u;->kJ:Lcom/google/android/gms/internal/u;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/u;->c(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/v;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/e$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/t;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/t;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/v;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/e$a;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/u;->y(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/w;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Lcom/google/android/gms/dynamic/b;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/v$a;->e(Landroid/os/IBinder;)Lcom/google/android/gms/internal/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/w;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/w$a;->f(Landroid/os/IBinder;)Lcom/google/android/gms/internal/w;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/u;->c(Landroid/os/IBinder;)Lcom/google/android/gms/internal/w;

    move-result-object v0

    return-object v0
.end method
