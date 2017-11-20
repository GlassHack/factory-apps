.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/e;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/LatLng;

.field private c:D

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/maps/model/e;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    .line 48
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    .line 55
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    .line 56
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    .line 74
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    .line 75
    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 76
    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    .line 77
    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    .line 78
    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    .line 79
    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    .line 80
    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    .line 81
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    .line 82
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    return-wide v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    return v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/gms/maps/internal/ck;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/e;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
