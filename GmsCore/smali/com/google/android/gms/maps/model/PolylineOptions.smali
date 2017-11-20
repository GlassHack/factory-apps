.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/m;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private c:F

.field private d:I

.field private e:F

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lcom/google/android/gms/maps/model/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    .line 40
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    .line 48
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    .line 56
    iput v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    .line 58
    return-void
.end method

.method constructor <init>(ILjava/util/List;FIFZZ)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    .line 40
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    .line 75
    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    .line 76
    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    .line 77
    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    .line 78
    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    .line 79
    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    .line 80
    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    .line 81
    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    .line 82
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/google/android/gms/maps/internal/ck;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/m;->a(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;)V

    goto :goto_0
.end method
