.class Lcom/google/android/gms/internal/rr$1;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rr;->loadAutocompleteList(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$a",
        "<",
        "Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aFy:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

.field final synthetic aFz:Lcom/google/android/gms/internal/rr;

.field final synthetic anH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rr$1;->aFz:Lcom/google/android/gms/internal/rr;

    iput-object p3, p0, Lcom/google/android/gms/internal/rr$1;->anH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/rr$1;->aFy:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rr$1;->a(Lcom/google/android/gms/internal/rb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/rb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rr$1;->anH:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/rr$1;->aFy:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/common/api/a$b;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V

    return-void
.end method

.method protected ba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rr$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rr$1$1;-><init>(Lcom/google/android/gms/internal/rr$1;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rr$1;->ba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;

    move-result-object v0

    return-object v0
.end method
