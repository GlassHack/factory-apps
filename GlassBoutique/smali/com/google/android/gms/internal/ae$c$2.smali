.class Lcom/google/android/gms/internal/ae$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ae$c;->b(Lcom/google/android/gms/internal/ag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uE:Lcom/google/android/gms/internal/ae$c;

.field final synthetic uF:Lcom/google/android/gms/internal/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ae$c;Lcom/google/android/gms/internal/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae$c$2;->uE:Lcom/google/android/gms/internal/ae$c;

    iput-object p2, p0, Lcom/google/android/gms/internal/ae$c$2;->uF:Lcom/google/android/gms/internal/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c$2;->uE:Lcom/google/android/gms/internal/ae$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/ae$c$2;->uF:Lcom/google/android/gms/internal/ag;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ag;)V

    return-void
.end method
