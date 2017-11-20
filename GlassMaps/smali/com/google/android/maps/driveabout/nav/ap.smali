.class public final Lcom/google/android/maps/driveabout/nav/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ap;-><init>([Ljava/lang/String;)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ap;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    move v0, v1

    move v2, v1

    .line 64
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 65
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    .line 66
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    if-nez v2, :cond_2

    .line 79
    :goto_1
    return-object p0

    .line 73
    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 74
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 75
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    add-int/lit8 v2, v1, 0x1

    aget-object v4, p0, v0

    aput-object v4, v3, v1

    move v1, v2

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object p0, v3

    .line 79
    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 105
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    :goto_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 100
    if-lez v0, :cond_1

    .line 101
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 116
    if-ne p1, p0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/nav/ap;

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    check-cast p1, Lcom/google/android/maps/driveabout/nav/ap;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ap;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
