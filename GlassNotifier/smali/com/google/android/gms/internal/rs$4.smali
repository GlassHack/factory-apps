.class Lcom/google/android/gms/internal/rs$4;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rs;->setSyncToContactsSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFC:Lcom/google/android/gms/internal/rs;

.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFF:Z

.field final synthetic aFG:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs$4;->aFC:Lcom/google/android/gms/internal/rs;

    iput-object p3, p0, Lcom/google/android/gms/internal/rs$4;->aFE:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/rs$4;->aFF:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/rs$4;->aFG:[Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rs$4;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rs$4;->aFE:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/rs$4;->aFF:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/rs$4;->aFG:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method
