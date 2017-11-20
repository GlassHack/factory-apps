.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/l;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/l;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F

    .line 47
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    .line 51
    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F

    .line 59
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    .line 63
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    .line 70
    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;

    .line 73
    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F

    .line 47
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    .line 51
    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    .line 63
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    .line 92
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I

    .line 93
    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    .line 94
    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;

    .line 95
    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F

    .line 96
    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    .line 97
    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I

    .line 98
    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F

    .line 99
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    .line 100
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    .line 101
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I

    return v0
.end method

.method final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/google/android/gms/maps/internal/ck;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/l;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;)V

    goto :goto_0
.end method
