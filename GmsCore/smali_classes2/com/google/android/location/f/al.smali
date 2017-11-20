.class final Lcom/google/android/location/f/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/location/f/am;

    invoke-direct {v0}, Lcom/google/android/location/f/am;-><init>()V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/f/am;->a:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/f/am;->b:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/f/am;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/location/f/am;->d:I

    invoke-virtual {v0}, Lcom/google/android/location/f/am;->a()Lcom/google/android/location/f/ak;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 146
    check-cast p1, Lcom/google/android/location/f/ak;

    iget v0, p1, Lcom/google/android/location/f/ak;->d:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, Lcom/google/android/location/f/ak;->e:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, Lcom/google/android/location/f/ak;->f:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, Lcom/google/android/location/f/ak;->g:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
