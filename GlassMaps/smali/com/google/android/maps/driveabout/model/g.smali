.class final Lcom/google/android/maps/driveabout/model/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/model/g;-><init>(I)V

    .line 220
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    .line 225
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    iget v0, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 230
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    aput p1, v0, v1

    .line 234
    return-void
.end method

.method final a()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget v0, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    new-array v0, v0, [I

    .line 238
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/g;->a:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    return-object v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    .line 244
    return-void
.end method

.method final c()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/maps/driveabout/model/g;->b:I

    return v0
.end method
