.class final enum Lcom/google/common/base/Pair$SecondComparator;
.super Ljava/lang/Enum;
.source "Pair.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SecondComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Pair$SecondComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/base/Pair",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Pair$SecondComparator;

.field public static final enum SECOND_COMPARATOR:Lcom/google/common/base/Pair$SecondComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    new-instance v0, Lcom/google/common/base/Pair$SecondComparator;

    const-string v1, "SECOND_COMPARATOR"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Pair$SecondComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Pair$SecondComparator;->SECOND_COMPARATOR:Lcom/google/common/base/Pair$SecondComparator;

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Pair$SecondComparator;

    sget-object v1, Lcom/google/common/base/Pair$SecondComparator;->SECOND_COMPARATOR:Lcom/google/common/base/Pair$SecondComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Pair$SecondComparator;->$VALUES:[Lcom/google/common/base/Pair$SecondComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Pair$SecondComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    const-class v0, Lcom/google/common/base/Pair$SecondComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Pair$SecondComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Pair$SecondComparator;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/common/base/Pair$SecondComparator;->$VALUES:[Lcom/google/common/base/Pair$SecondComparator;

    invoke-virtual {v0}, [Lcom/google/common/base/Pair$SecondComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Pair$SecondComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/google/common/base/Pair;Lcom/google/common/base/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Comparable;",
            ">;",
            "Lcom/google/common/base/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Comparable;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "pair1":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<Ljava/lang/Object;Ljava/lang/Comparable;>;"
    .local p2, "pair2":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<Ljava/lang/Object;Ljava/lang/Comparable;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 191
    .local v0, "left":Ljava/lang/Comparable;
    invoke-virtual {p2}, Lcom/google/common/base/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 198
    .local v2, "right":Ljava/lang/Comparable;
    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 199
    .local v1, "result":I
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    check-cast p1, Lcom/google/common/base/Pair;

    check-cast p2, Lcom/google/common/base/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Pair$SecondComparator;->compare(Lcom/google/common/base/Pair;Lcom/google/common/base/Pair;)I

    move-result v0

    return v0
.end method
