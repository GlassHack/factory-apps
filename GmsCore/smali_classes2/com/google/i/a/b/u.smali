.class public final Lcom/google/i/a/b/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/location/f/aj;

.field static final b:Lcom/google/android/location/f/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/i/a/b/v;

    invoke-direct {v0}, Lcom/google/i/a/b/v;-><init>()V

    sput-object v0, Lcom/google/i/a/b/u;->a:Lcom/google/android/location/f/aj;

    .line 32
    new-instance v0, Lcom/google/i/a/b/w;

    invoke-direct {v0}, Lcom/google/i/a/b/w;-><init>()V

    sput-object v0, Lcom/google/i/a/b/u;->b:Lcom/google/android/location/f/aj;

    return-void
.end method

.method static final a(Lcom/google/g/a/b/b/c;)Lcom/google/android/location/f/aj;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/i/a/b/y;

    invoke-direct {v0, p0}, Lcom/google/i/a/b/y;-><init>(Lcom/google/g/a/b/b/c;)V

    return-object v0
.end method

.method static final a(Lcom/google/g/a/b/b/c;Ljava/io/DataInput;)Lcom/google/g/a/b/b/a;
    .locals 2

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    new-array v0, v0, [B

    .line 81
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 82
    new-instance v1, Lcom/google/g/a/b/b/a;

    invoke-direct {v1, p0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method static final a(Lcom/google/g/a/b/b/a;Ljava/io/DataOutput;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v0

    .line 87
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 88
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method static synthetic b(Lcom/google/g/a/b/b/c;)Lcom/google/android/location/f/aj;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/i/a/b/x;

    invoke-direct {v0, p0}, Lcom/google/i/a/b/x;-><init>(Lcom/google/g/a/b/b/c;)V

    return-object v0
.end method
