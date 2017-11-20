.class public abstract Lcom/google/maps/api/android/lib6/gmm6/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c;-><init>(C)V

    return-void
.end method

.method private constructor <init>(C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c;->a:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c;->c:Lcom/google/maps/api/android/lib6/gmm6/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c;->c:Lcom/google/maps/api/android/lib6/gmm6/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c;->c:Lcom/google/maps/api/android/lib6/gmm6/d;

    monitor-enter v0

    monitor-exit v0

    goto :goto_0
.end method
