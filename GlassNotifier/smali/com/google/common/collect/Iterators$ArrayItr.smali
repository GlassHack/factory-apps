.class final Lcom/google/common/collect/Iterators$ArrayItr;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 995
    new-instance v0, Lcom/google/common/collect/Iterators$ArrayItr;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/common/collect/Iterators$ArrayItr;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p0, "this":Lcom/google/common/collect/Iterators$ArrayItr;, "Lcom/google/common/collect/Iterators$ArrayItr<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 1003
    iput-object p1, p0, Lcom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    .line 1004
    iput p2, p0, Lcom/google/common/collect/Iterators$ArrayItr;->offset:I

    .line 1005
    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "this":Lcom/google/common/collect/Iterators$ArrayItr;, "Lcom/google/common/collect/Iterators$ArrayItr<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/Iterators$ArrayItr;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
