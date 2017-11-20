.class public abstract Lcom/google/android/gms/people/model/AggregatedPersonBuffer;
.super Lcom/google/android/gms/people/model/DataBufferWithSyncInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/model/DataBufferWithSyncInfo",
        "<",
        "Lcom/google/android/gms/people/model/AggregatedPerson;",
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
