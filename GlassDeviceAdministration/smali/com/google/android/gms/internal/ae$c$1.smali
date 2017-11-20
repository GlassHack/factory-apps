.class Lcom/google/android/gms/internal/ae$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ae$c;->onApplicationDisconnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uD:I

.field final synthetic uE:Lcom/google/android/gms/internal/ae$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ae$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ae$c$1;->uE:Lcom/google/android/gms/internal/ae$c;

    iput p2, p0, Lcom/google/android/gms/internal/ae$c$1;->uD:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c$1;->uE:Lcom/google/android/gms/internal/ae$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->e(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c$1;->uE:Lcom/google/android/gms/internal/ae$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->e(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ae$c$1;->uD:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    :cond_0
    return-void
.end method
