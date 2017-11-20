.class final enum Lcom/google/common/collect/MapMaker$RemovalCause$4;
.super Lcom/google/common/collect/MapMaker$RemovalCause;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;ILcom/google/common/collect/gu;)V

    return-void
.end method


# virtual methods
.method final wasEvicted()Z
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x1

    return v0
.end method
