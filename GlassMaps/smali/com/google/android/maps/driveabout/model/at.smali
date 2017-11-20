.class public final Lcom/google/android/maps/driveabout/model/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/maps/driveabout/model/ap;


# direct methods
.method private constructor <init>(ILcom/google/android/maps/driveabout/model/ap;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/maps/driveabout/model/at;->a:I

    .line 29
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    .line 30
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/at;
    .locals 3

    .prologue
    .line 33
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 34
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/model/ap;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/ap;

    move-result-object v1

    .line 35
    new-instance v2, Lcom/google/android/maps/driveabout/model/at;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/at;-><init>(ILcom/google/android/maps/driveabout/model/ap;)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 65
    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/model/at;

    .line 66
    iget v2, p0, Lcom/google/android/maps/driveabout/model/at;->a:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/at;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    if-nez v2, :cond_5

    .line 68
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 69
    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 53
    .line 55
    iget v0, p0, Lcom/google/android/maps/driveabout/model/at;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 56
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 57
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/at;->b:Lcom/google/android/maps/driveabout/model/ap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ap;->hashCode()I

    move-result v0

    goto :goto_0
.end method
