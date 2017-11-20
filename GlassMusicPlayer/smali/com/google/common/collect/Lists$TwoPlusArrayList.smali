.class Lcom/google/common/collect/Lists$TwoPlusArrayList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Ljava/lang/Object;

.field final rest:[Ljava/lang/Object;

.field final second:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    .line 332
    iput-object p2, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    .line 333
    invoke-static {p3}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    .line 334
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 343
    packed-switch p1, :pswitch_data_0

    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$TwoPlusArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(II)I

    .line 351
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 345
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
