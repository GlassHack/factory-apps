.class public interface abstract Lcom/google/android/speech/context/SpeechContext;
.super Ljava/lang/Object;
.source "SpeechContext.java"


# virtual methods
.method public abstract getDisambigContactNamesSupplier()Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getGenericTokensSupplier()Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRegionExperimentSupplier()Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/params/RegionExperiment;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTopContactNamesSupplier()Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
