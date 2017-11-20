.class Lcom/google/android/gms/internal/fz$2;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fz;->unregisterOnDataChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PS:Lcom/google/android/gms/people/Notifications$OnDataChanged;

.field final synthetic PU:Lcom/google/android/gms/internal/fz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/people/Notifications$OnDataChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fz$2;->PU:Lcom/google/android/gms/internal/fz;

    iput-object p2, p0, Lcom/google/android/gms/internal/fz$2;->PS:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fz$2;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fz$2;->PS:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fc;->unregisterOnDataChangedListener(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fz$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
