.class public final Lcom/google/android/maps/driveabout/store/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/maps/driveabout/store/ad;

.field public final b:[B

.field public final c:I

.field public final d:[B


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/store/ad;I[B)V
    .locals 2

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    if-ltz p2, :cond_0

    const/16 v0, 0x1f

    if-le p2, v0, :cond_1

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "refCount must be between 0 and 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_1
    array-length v0, p3

    const v1, 0xffffff

    if-le v0, v1, :cond_2

    .line 1216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_2
    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    .line 1219
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    .line 1220
    iput p2, p0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    .line 1221
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    .line 1222
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/store/ad;I[BLcom/google/android/maps/driveabout/store/z;)V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;I[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/store/ad;[B)V
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;I[B)V

    .line 1209
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/store/ad;[BLcom/google/android/maps/driveabout/store/z;)V
    .locals 0

    .prologue
    .line 1200
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;[B)V

    return-void
.end method
