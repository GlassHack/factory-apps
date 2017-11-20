.class Lcom/google/android/gms/internal/rr$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/rr$1;->ba(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FT:Lcom/google/android/gms/common/api/Status;

.field final synthetic aFA:Lcom/google/android/gms/internal/rr$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rr$1;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rr$1$1;->aFA:Lcom/google/android/gms/internal/rr$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/rr$1$1;->FT:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutocompleteEntries()Lcom/google/android/gms/people/model/AutocompleteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rr$1$1;->FT:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
