.class public Lcom/google/android/maps/driveabout/model/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/model/k;

.field protected final b:Lcom/google/android/maps/driveabout/model/j;

.field protected final c:I

.field protected final d:I


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/j;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/bb;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 32
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/bb;->b:Lcom/google/android/maps/driveabout/model/j;

    .line 33
    iput p3, p0, Lcom/google/android/maps/driveabout/model/bb;->c:I

    .line 34
    iput p4, p0, Lcom/google/android/maps/driveabout/model/bb;->d:I

    .line 35
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/bb;
    .locals 4

    .prologue
    .line 47
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 48
    const/4 v0, -0x1

    .line 49
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/bb;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/be;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v3

    .line 56
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/bb;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 61
    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/model/bc;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/maps/driveabout/model/bc;-><init>(Lcom/google/android/maps/driveabout/model/j;II)V

    move-object v0, v1

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_1
    const/4 v0, 0x2

    .line 65
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v0

    .line 68
    :goto_1
    new-instance v1, Lcom/google/android/maps/driveabout/model/bd;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/bd;-><init>(Lcom/google/android/maps/driveabout/model/k;)V

    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method
