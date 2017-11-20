.class public final Lcom/google/maps/api/android/lib6/c/br;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lcom/google/maps/api/android/lib6/c/br;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/maps/api/android/lib6/c/br;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    new-instance v0, Lcom/google/maps/api/android/lib6/c/br;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Not on the main thread"

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/br;-><init>(Ljava/lang/Thread;Ljava/lang/String;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/br;->c:Lcom/google/maps/api/android/lib6/c/br;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/br;->a:Ljava/lang/Thread;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/br;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/maps/api/android/lib6/c/br;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/c/br;->c:Lcom/google/maps/api/android/lib6/c/br;

    return-object v0
.end method

.method public static c()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Not running on main thread."

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Running on main thread."

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/br;->a:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/br;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
