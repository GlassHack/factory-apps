.class final Lcom/google/maps/api/android/lib6/c/eg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/google/maps/api/android/lib6/c/ef;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/ef;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/eg;->b:Lcom/google/maps/api/android/lib6/c/ef;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/eg;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eg;->b:Lcom/google/maps/api/android/lib6/c/ef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/c/ef;->a:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eg;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
