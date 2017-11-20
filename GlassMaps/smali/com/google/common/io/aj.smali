.class final Lcom/google/common/io/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(I)Lcom/google/common/io/am;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    new-instance v1, Lcom/google/common/io/ak;

    invoke-direct {v1, v0}, Lcom/google/common/io/ak;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method
