.class Lcom/google/android/gms/internal/ry$2;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ry;->unregisterOnDataChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGH:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic aGI:Lcom/google/android/gms/people/Notifications$OnDataChanged;

.field final synthetic aGK:Lcom/google/android/gms/internal/ry;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ry;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ry$2;->aGK:Lcom/google/android/gms/internal/ry;

    iput-object p3, p0, Lcom/google/android/gms/internal/ry$2;->aGH:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/internal/ry$2;->aGI:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/rb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ry$2;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ry$2;->aGH:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ry$2;->aGI:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rb;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->TO:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ry$2;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
