.class final Lcom/google/common/collect/Multisets$ImmutableEntry;
.super Lcom/google/common/collect/ks;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final count:I

.field final element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/google/common/collect/ks;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    .line 229
    iput p2, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    .line 230
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 231
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->count:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
