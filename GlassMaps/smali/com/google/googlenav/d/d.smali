.class public final Lcom/google/googlenav/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:I

.field private static d:I

.field private static final e:[Lcom/google/googlenav/d/d;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x16

    .line 39
    sput v0, Lcom/google/googlenav/d/d;->c:I

    .line 50
    sput v5, Lcom/google/googlenav/d/d;->d:I

    .line 57
    new-array v1, v5, [Lcom/google/googlenav/d/d;

    sput-object v1, Lcom/google/googlenav/d/d;->e:[Lcom/google/googlenav/d/d;

    .line 71
    const/16 v1, 0x100

    .line 72
    :goto_0
    if-gt v0, v5, :cond_0

    .line 73
    sget-object v2, Lcom/google/googlenav/d/d;->e:[Lcom/google/googlenav/d/d;

    add-int/lit8 v3, v0, -0x1

    new-instance v4, Lcom/google/googlenav/d/d;

    invoke-direct {v4, v0, v1}, Lcom/google/googlenav/d/d;-><init>(II)V

    aput-object v4, v2, v3

    .line 74
    mul-int/lit8 v1, v1, 0x2

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/google/googlenav/d/d;->b:I

    .line 66
    iput p2, p0, Lcom/google/googlenav/d/d;->a:I

    .line 67
    return-void
.end method

.method public static a(I)Lcom/google/googlenav/d/d;
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    sget v1, Lcom/google/googlenav/d/d;->c:I

    if-lt p0, v1, :cond_1

    const/16 v1, 0x16

    if-gt p0, v1, :cond_1

    .line 104
    sget v0, Lcom/google/googlenav/d/d;->d:I

    if-le p0, v0, :cond_0

    .line 105
    sget p0, Lcom/google/googlenav/d/d;->d:I

    .line 107
    :cond_0
    sget-object v0, Lcom/google/googlenav/d/d;->e:[Lcom/google/googlenav/d/d;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    .line 110
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/googlenav/d/d;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
