.class Lcom/google/android/gms/internal/rw$4;
.super Lcom/google/android/gms/people/People$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rw;->sendAutocompleteSelectedFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)Lcom/google/android/gms/common/api/PendingResult;
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

.field final synthetic aGG:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rw$4;->aGC:Lcom/google/android/gms/internal/rw;

    iput-object p3, p0, Lcom/google/android/gms/internal/rw$4;->aGE:Lcom/google/android/gms/people/model/AutocompleteBuffer;

    iput p4, p0, Lcom/google/android/gms/internal/rw$4;->aGG:I

    iput p5, p0, Lcom/google/android/gms/internal/rw$4;->aGB:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/rw$4;->aGF:J

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rw$4;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/rw$4;->aGE:Lcom/google/android/gms/people/model/AutocompleteBuffer;

    iget v4, p0, Lcom/google/android/gms/internal/rw$4;->aGG:I

    iget v5, p0, Lcom/google/android/gms/internal/rw$4;->aGB:I

    iget-wide v6, p0, Lcom/google/android/gms/internal/rw$4;->aGF:J

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/people/model/AutocompleteBuffer;IIJ)V

    return-void
.end method
