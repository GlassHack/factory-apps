.class final Lcom/google/maps/api/android/lib6/c/dn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/do;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/do;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/dp;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/dp;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dn;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/dn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dn;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dn;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
