.class Lcom/google/android/gms/internal/fs$1;
.super Lcom/google/android/gms/people/People$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fs;->loadAutocompleteList(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)Lcom/google/android/gms/common/api/PendingResult;
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
.field final synthetic HN:Ljava/lang/String;

.field final synthetic OM:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

.field final synthetic OO:Lcom/google/android/gms/internal/fs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fs$1;->OO:Lcom/google/android/gms/internal/fs;

    iput-object p2, p0, Lcom/google/android/gms/internal/fs$1;->HN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fs$1;->OM:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    invoke-direct {p0}, Lcom/google/android/gms/people/People$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected F(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fs$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fs$1$1;-><init>(Lcom/google/android/gms/internal/fs$1;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs$1;->b(Lcom/google/android/gms/internal/fc;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs$1;->F(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/google/android/gms/internal/fc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fs$1;->HN:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fs$1;->OM:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V

    return-void
.end method
