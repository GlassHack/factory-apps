.class public final Lcom/google/android/gms/internal/xw;
.super Ljava/lang/Object;


# static fields
.field public static final aZf:[I

.field public static final aZg:[J

.field public static final aZh:[F

.field public static final aZi:[D

.field public static final aZj:[Z

.field public static final aZk:[Ljava/lang/String;

.field public static final aZl:[[B

.field public static final aZm:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZf:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZg:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZh:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZi:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZj:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZk:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZl:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/xw;->aZm:[B

    return-void
.end method

.method static I(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final b(Lcom/google/android/gms/internal/xl;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/xl;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xl;->mj(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/xl;->vU()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xl;->mj(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/xl;->mn(I)V

    return v0
.end method

.method static mD(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static mE(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
