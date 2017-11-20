.class Lcom/google/android/gms/internal/ry$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ry;->b(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aGH:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic aGI:Lcom/google/android/gms/people/Notifications$OnDataChanged;

.field final synthetic aGJ:I

.field final synthetic aGK:Lcom/google/android/gms/internal/ry;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ry;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ry$1;->aGK:Lcom/google/android/gms/internal/ry;

    iput-object p3, p0, Lcom/google/android/gms/internal/ry$1;->aGH:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/internal/ry$1;->aGI:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    iput-object p5, p0, Lcom/google/android/gms/internal/ry$1;->aFE:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ry$1;->aFK:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/ry$1;->aGJ:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ry$1;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ry$1;->aGH:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/internal/ry$1;->aGI:Lcom/google/android/gms/people/Notifications$OnDataChanged;

    iget-object v3, p0, Lcom/google/android/gms/internal/ry$1;->aFE:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ry$1;->aFK:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/ry$1;->aGJ:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->TO:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ry$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
