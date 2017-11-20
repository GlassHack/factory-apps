.class Lcom/google/android/gms/internal/ru$2;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFX:Lcom/google/android/gms/internal/ru;

.field final synthetic aFY:Ljava/lang/String;

.field final synthetic aFZ:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$2;->aFX:Lcom/google/android/gms/internal/ru;

    iput-object p3, p0, Lcom/google/android/gms/internal/ru$2;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ru$2;->aFY:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ru$2;->aFZ:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$2;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$2;->aFE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$2;->aFY:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ru$2;->aFZ:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/rb;->d(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
