.class Lcom/google/android/gms/internal/rw$3;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rw;->sendAutocompleteShownFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IJ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGB:I

.field final synthetic aGC:Lcom/google/android/gms/internal/rw;

.field final synthetic aGE:Lcom/google/android/gms/people/model/AutocompleteBuffer;

.field final synthetic aGF:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rw$3;->aGC:Lcom/google/android/gms/internal/rw;

    iput-object p3, p0, Lcom/google/android/gms/internal/rw$3;->aGE:Lcom/google/android/gms/people/model/AutocompleteBuffer;

    iput p4, p0, Lcom/google/android/gms/internal/rw$3;->aGB:I

    iput-wide p5, p0, Lcom/google/android/gms/internal/rw$3;->aGF:J

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rw$3;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/rw$3;->aGE:Lcom/google/android/gms/people/model/AutocompleteBuffer;

    const/4 v4, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/rw$3;->aGB:I

    iget-wide v6, p0, Lcom/google/android/gms/internal/rw$3;->aGF:J

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)V

    return-void
.end method
