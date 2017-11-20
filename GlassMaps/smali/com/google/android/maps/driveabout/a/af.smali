.class final Lcom/google/android/maps/driveabout/a/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/af;->a:Ljava/lang/String;

    .line 193
    iput p2, p0, Lcom/google/android/maps/driveabout/a/af;->b:I

    .line 194
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    if-ne p0, p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 210
    :cond_3
    check-cast p1, Lcom/google/android/maps/driveabout/a/af;

    .line 211
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/af;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/a/af;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 212
    :cond_4
    iget v2, p0, Lcom/google/android/maps/driveabout/a/af;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/a/af;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 198
    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/af;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/a/af;->b:I

    add-int/2addr v0, v1

    .line 202
    return v0
.end method
