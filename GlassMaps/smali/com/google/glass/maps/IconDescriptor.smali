.class public Lcom/google/glass/maps/IconDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXTENSION:Ljava/lang/String; = ".png"


# instance fields
.field private final stepType:I

.field private final turnAngle:I

.field private final turnSide:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/glass/maps/IconDescriptor;->stepType:I

    .line 30
    iput p2, p0, Lcom/google/glass/maps/IconDescriptor;->turnSide:I

    .line 31
    iput p3, p0, Lcom/google/glass/maps/IconDescriptor;->turnAngle:I

    .line 32
    return-void
.end method

.method public static fromContentUri(Landroid/net/Uri;)Lcom/google/glass/maps/IconDescriptor;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 44
    const-string v1, "com.google.glass.maps.navicon"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".png"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 57
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 59
    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 60
    new-instance v1, Lcom/google/glass/maps/IconDescriptor;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/maps/IconDescriptor;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static fromStep(Lcom/google/android/maps/driveabout/nav/ah;)Lcom/google/glass/maps/IconDescriptor;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/google/glass/maps/IconDescriptor;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/IconDescriptor;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    instance-of v2, p1, Lcom/google/glass/maps/IconDescriptor;

    if-nez v2, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    check-cast p1, Lcom/google/glass/maps/IconDescriptor;

    .line 98
    iget v2, p0, Lcom/google/glass/maps/IconDescriptor;->stepType:I

    iget v3, p1, Lcom/google/glass/maps/IconDescriptor;->stepType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/maps/IconDescriptor;->turnAngle:I

    iget v3, p1, Lcom/google/glass/maps/IconDescriptor;->turnAngle:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/glass/maps/IconDescriptor;->turnSide:I

    iget v3, p1, Lcom/google/glass/maps/IconDescriptor;->turnSide:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/glass/maps/IconDescriptor;->stepType:I

    iget v1, p0, Lcom/google/glass/maps/IconDescriptor;->turnSide:I

    iget v2, p0, Lcom/google/glass/maps/IconDescriptor;->turnAngle:I

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/j;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 82
    .line 83
    iget v0, p0, Lcom/google/glass/maps/IconDescriptor;->stepType:I

    add-int/lit8 v0, v0, 0x1f

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/IconDescriptor;->turnAngle:I

    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/maps/IconDescriptor;->turnSide:I

    add-int/2addr v0, v1

    .line 86
    return v0
.end method

.method public toContentUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 68
    iget v0, p0, Lcom/google/glass/maps/IconDescriptor;->stepType:I

    iget v1, p0, Lcom/google/glass/maps/IconDescriptor;->turnSide:I

    iget v2, p0, Lcom/google/glass/maps/IconDescriptor;->turnAngle:I

    const-string v3, ".png"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/google/glass/maps/NavigationIconProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "icon"

    .line 70
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
