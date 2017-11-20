.class final enum Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$1;
.super Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/md;)V

    return-void
.end method


# virtual methods
.method final resultIndex(I)I
    .locals 1

    .prologue
    .line 154
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
