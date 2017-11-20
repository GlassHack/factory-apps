.class Lcom/google/android/gms/internal/fx$1;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fx;->sendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PP:Ljava/lang/String;

.field final synthetic PQ:I

.field final synthetic PR:Lcom/google/android/gms/internal/fx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$1;->PR:Lcom/google/android/gms/internal/fx;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$1;->PP:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/fx$1;->PQ:I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$1;->PP:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/fx$1;->PQ:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;I)V

    return-void
.end method
