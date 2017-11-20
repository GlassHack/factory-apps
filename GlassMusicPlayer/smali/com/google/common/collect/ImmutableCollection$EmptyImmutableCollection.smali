.class Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/dh;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/om;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 205
    array-length v0, p1

    if-lez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 208
    :cond_0
    return-object p1
.end method
