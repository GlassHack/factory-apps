.class final Lcom/google/android/location/places/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    new-instance v1, Lcom/google/android/location/m/a/ap;

    invoke-direct {v1}, Lcom/google/android/location/m/a/ap;-><init>()V

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/a/ap;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2

    .prologue
    .line 64
    check-cast p1, Lcom/google/android/location/m/a/ap;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method
