.class Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 424
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
