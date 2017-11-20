.class public final Lcom/google/android/gms/people/model/PersonBuffer;
.super Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/model/DataBufferWithSyncInfo",
        "<",
        "Lcom/google/android/gms/people/model/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final MG:Lcom/google/android/gms/internal/fq$b;

.field private final MH:Lcom/google/android/gms/internal/fq$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/fq$b;Lcom/google/android/gms/internal/fq$a;)V
    .locals 0
    .param p1, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p2, "phoneDecoder"    # Lcom/google/android/gms/internal/fq$b;
    .param p3, "emailDecoder"    # Lcom/google/android/gms/internal/fq$a;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p2, p0, Lcom/google/android/gms/people/model/PersonBuffer;->MG:Lcom/google/android/gms/internal/fq$b;

    iput-object p3, p0, Lcom/google/android/gms/people/model/PersonBuffer;->MH:Lcom/google/android/gms/internal/fq$a;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/people/model/Person;
    .locals 6
    .param p1, "position"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ff;

    iget-object v1, p0, Lcom/google/android/gms/people/model/PersonBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/PersonBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/people/model/PersonBuffer;->MG:Lcom/google/android/gms/internal/fq$b;

    iget-object v5, p0, Lcom/google/android/gms/people/model/PersonBuffer;->MH:Lcom/google/android/gms/internal/fq$a;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ff;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;Lcom/google/android/gms/internal/fq$b;Lcom/google/android/gms/internal/fq$a;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/people/model/PersonBuffer;->get(I)Lcom/google/android/gms/people/model/Person;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "People:size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/people/model/PersonBuffer;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
