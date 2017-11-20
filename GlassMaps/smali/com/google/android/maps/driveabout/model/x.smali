.class public final Lcom/google/android/maps/driveabout/model/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/model/ag;

.field private b:Lcom/google/android/maps/driveabout/model/aq;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private final g:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/ag;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/x;->a:Lcom/google/android/maps/driveabout/model/ag;

    .line 47
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/x;->b:Lcom/google/android/maps/driveabout/model/aq;

    .line 48
    iput p3, p0, Lcom/google/android/maps/driveabout/model/x;->c:I

    .line 49
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/x;->d:Ljava/lang/String;

    .line 50
    iput p5, p0, Lcom/google/android/maps/driveabout/model/x;->e:I

    .line 51
    iput p6, p0, Lcom/google/android/maps/driveabout/model/x;->f:I

    .line 52
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/x;->g:[I

    .line 53
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/x;
    .locals 10

    .prologue
    .line 69
    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/model/ag;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    .line 72
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 73
    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v2

    .line 76
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static {v3, p4}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    aget-object v4, p4, v3

    .line 83
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    .line 86
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 89
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 90
    new-array v7, v8, [I

    .line 91
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    .line 92
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/model/x;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/model/x;-><init>(Lcom/google/android/maps/driveabout/model/ag;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/x;->a:Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/x;->b:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x5

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/maps/driveabout/model/x;->e:I

    return v0
.end method
