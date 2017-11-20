.class Lcom/google/android/gms/internal/ft$4;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ft;->setSyncToContactsSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OR:Lcom/google/android/gms/internal/ft;

.field final synthetic OT:Ljava/lang/String;

.field final synthetic OU:Z

.field final synthetic OV:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ft;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ft$4;->OR:Lcom/google/android/gms/internal/ft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ft$4;->OT:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ft$4;->OU:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ft$4;->OV:[Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ft$4;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ft$4;->OT:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ft$4;->OU:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ft$4;->OV:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method
