.class Lcom/google/android/gms/internal/co$3;
.super Lcom/google/android/gms/internal/bx$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/co;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DK:Lcom/google/android/gms/internal/co;

.field final synthetic DM:Lcom/google/android/gms/fitness/request/UnsubscribeRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/co;Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/co$3;->DK:Lcom/google/android/gms/internal/co;

    iput-object p2, p0, Lcom/google/android/gms/internal/co$3;->DM:Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    invoke-direct {p0}, Lcom/google/android/gms/internal/bx$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/bx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/co$3;->a(Lcom/google/android/gms/internal/bx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/bx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bx$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bx$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/bx;->dH()Lcom/google/android/gms/internal/cc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/co$3;->DM:Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;Lcom/google/android/gms/internal/cg;Ljava/lang/String;)V

    return-void
.end method
