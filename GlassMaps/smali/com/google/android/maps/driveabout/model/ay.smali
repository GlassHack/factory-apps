.class public final Lcom/google/android/maps/driveabout/model/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/ag;

.field private final b:Lcom/google/android/maps/driveabout/model/aq;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/ag;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ay;->a:Lcom/google/android/maps/driveabout/model/ag;

    .line 66
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/ay;->b:Lcom/google/android/maps/driveabout/model/aq;

    .line 67
    iput p3, p0, Lcom/google/android/maps/driveabout/model/ay;->c:I

    .line 68
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/ay;->d:Ljava/lang/String;

    .line 69
    iput p5, p0, Lcom/google/android/maps/driveabout/model/ay;->f:I

    .line 70
    iput p6, p0, Lcom/google/android/maps/driveabout/model/ay;->e:I

    .line 71
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/ay;->g:[I

    .line 72
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/j;
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 91
    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/model/ag;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    .line 94
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 95
    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v2

    .line 98
    const/4 v3, -0x1

    .line 99
    const/4 v4, 0x0

    .line 100
    if-ne p1, v9, :cond_0

    .line 101
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 102
    invoke-static {v3, p4}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    aget-object v4, p4, v3

    .line 107
    :cond_0
    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    if-ne p1, v7, :cond_2

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    .line 112
    :cond_2
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 113
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 117
    if-eq p1, v7, :cond_3

    if-ne p1, v9, :cond_5

    .line 119
    :cond_3
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 121
    :goto_0
    new-array v7, v0, [I

    .line 122
    :goto_1
    if-ge v8, v0, :cond_4

    .line 123
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v8

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 126
    :cond_4
    new-instance v0, Lcom/google/android/maps/driveabout/model/ay;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/model/ay;-><init>(Lcom/google/android/maps/driveabout/model/ag;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V

    return-object v0

    :cond_5
    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ay;->a:Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ay;->b:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x9

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method
