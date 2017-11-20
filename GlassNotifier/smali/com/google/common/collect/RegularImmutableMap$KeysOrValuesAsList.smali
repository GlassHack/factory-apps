.class final Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeysOrValuesAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 250
    iput p2, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->offset:I

    .line 251
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    .line 252
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 256
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 257
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->alternatingKeysAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->offset:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    return v0
.end method
