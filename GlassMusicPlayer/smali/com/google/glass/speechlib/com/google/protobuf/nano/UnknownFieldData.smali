.class public final Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    .line 48
    iput-object p2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 49
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p1, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    if-nez v2, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 61
    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v3, p1, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 66
    .line 67
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v0, 0x20f

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    return v0
.end method
