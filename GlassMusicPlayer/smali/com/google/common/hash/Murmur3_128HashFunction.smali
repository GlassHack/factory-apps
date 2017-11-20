.class final Lcom/google/common/hash/Murmur3_128HashFunction;
.super Lcom/google/common/hash/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    .line 47
    return-void
.end method


# virtual methods
.method public final bits()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x80

    return v0
.end method

.method public final newHasher()Lcom/google/common/hash/l;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/common/hash/p;

    iget v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/p;-><init>(I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_128("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
