.class Lcom/google/android/gms/internal/fz$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OT:Ljava/lang/String;

.field final synthetic OZ:Ljava/lang/String;

.field final synthetic PS:Lcom/google/android/gms/people/Notifications$OnDataChanged;

.field final synthetic PT:I

.field final synthetic PU:Lcom/google/android/gms/internal/fz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fz$1;->PU:Lcom/google/android/gms/internal/fz;

    iput-object p2, p0, Lcom/google/android/gms/internal/fz$1;->PS:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    iput-object p3, p0, Lcom/google/android/gms/internal/fz$1;->OT:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/fz$1;->OZ:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/fz$1;->PT:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fz$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fz$1;->PS:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    iget-object v1, p0, Lcom/google/android/gms/internal/fz$1;->OT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/fz$1;->OZ:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/fz$1;->PT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/people/PeopleClient$OnDataChangedListener;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->xB:Lcom/google/android/gms/common/api/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fz$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->xD:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method
