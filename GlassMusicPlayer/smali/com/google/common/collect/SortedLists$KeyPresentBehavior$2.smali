.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$2;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/md;)V

    return-void
.end method


# virtual methods
.method final resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .locals 4

    .prologue
    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, p4

    .line 75
    :goto_0
    if-ge v1, v0, :cond_1

    .line 76
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    .line 77
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 78
    if-lez v3, :cond_0

    .line 79
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 81
    goto :goto_0

    .line 84
    :cond_1
    return v1
.end method
