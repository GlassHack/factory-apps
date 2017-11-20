.class Lcom/google/android/gms/internal/ru$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ru;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFE:Ljava/lang/String;

.field final synthetic aFK:Ljava/lang/String;

.field final synthetic aFV:Ljava/lang/String;

.field final synthetic aFW:Z

.field final synthetic aFX:Lcom/google/android/gms/internal/ru;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ru;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru$1;->aFX:Lcom/google/android/gms/internal/ru;

    iput-object p3, p0, Lcom/google/android/gms/internal/ru$1;->aFE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ru$1;->aFK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ru$1;->aFV:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ru$1;->aFW:Z

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$1;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$1;->aFE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ru$1;->aFK:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ru$1;->aFV:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ru$1;->aFW:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
