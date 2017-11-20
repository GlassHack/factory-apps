.class public Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final colorARGB:I

.field private final hashCode:I

.field private final outlineColorARGB:I

.field private final size:I

.field private final text:Ljava/lang/String;

.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;III)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->text:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->typeface:Landroid/graphics/Typeface;

    .line 40
    iput p3, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->size:I

    .line 41
    iput p4, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->colorARGB:I

    .line 42
    iput p5, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->outlineColorARGB:I

    .line 43
    invoke-direct {p0}, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->hashCode:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->size:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->outlineColorARGB:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->colorARGB:I

    return v0
.end method

.method private computeHashCode()I
    .locals 2

    .prologue
    .line 68
    .line 70
    iget v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->size:I

    add-int/lit8 v0, v0, 0x1f

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->colorARGB:I

    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->outlineColorARGB:I

    add-int/2addr v0, v1

    .line 75
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

    if-nez v2, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;

    .line 60
    iget v2, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->size:I

    iget v3, p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->size:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->typeface:Landroid/graphics/Typeface;

    iget-object v3, p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->typeface:Landroid/graphics/Typeface;

    .line 61
    invoke-virtual {v2, v3}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->colorARGB:I

    iget v3, p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->colorARGB:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->outlineColorARGB:I

    iget v3, p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->outlineColorARGB:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->text:Ljava/lang/String;

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/glass/maps/map/TextGenerator$TextureCacheKey;->hashCode:I

    return v0
.end method
