.class public final Lcom/google/maps/api/android/lib6/c/ef;
.super Ljava/lang/Object;


# instance fields
.field volatile a:Z

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ef;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/eg;

    invoke-direct {v0, p0, p2}, Lcom/google/maps/api/android/lib6/c/eg;-><init>(Lcom/google/maps/api/android/lib6/c/ef;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ef;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/c/ef;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ef;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ef;->a:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ef;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ef;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
