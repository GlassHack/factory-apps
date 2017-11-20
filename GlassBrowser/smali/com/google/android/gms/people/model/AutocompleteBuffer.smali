.class public Lcom/google/android/gms/people/model/AutocompleteBuffer;
.super Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/model/DataBufferWithSyncInfo",
        "<",
        "Lcom/google/android/gms/people/model/AutocompleteEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/people/model/AutocompleteEntry;
    .locals 3
    .param p1, "position"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/eq;

    iget-object v1, p0, Lcom/google/android/gms/people/model/AutocompleteBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/AutocompleteBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/eq;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/model/AutocompleteBuffer;->get(I)Lcom/google/android/gms/people/model/AutocompleteEntry;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutocompleteList:size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/AutocompleteBuffer;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
