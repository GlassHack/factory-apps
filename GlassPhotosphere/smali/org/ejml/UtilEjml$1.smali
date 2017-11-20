.class final Lorg/ejml/UtilEjml$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ejml/UtilEjml;->sortByIndex([DI)[Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$data:[D


# direct methods
.method constructor <init>([D)V
    .locals 0

    iput-object p1, p0, Lorg/ejml/UtilEjml$1;->val$data:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 4

    iget-object v0, p0, Lorg/ejml/UtilEjml$1;->val$data:[D

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/ejml/UtilEjml$1;->val$data:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-wide v2, v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/UtilEjml$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
