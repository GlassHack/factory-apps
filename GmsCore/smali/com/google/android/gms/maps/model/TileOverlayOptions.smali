.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/v;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/maps/model/a/ab;

.field private c:Lcom/google/android/gms/maps/model/w;

.field private d:Z

.field private e:F

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/maps/model/v;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lcom/google/android/gms/maps/model/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    .line 43
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z

    .line 48
    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    .line 49
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;ZFZ)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    .line 43
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z

    .line 63
    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    .line 64
    invoke-static {p2}, Lcom/google/android/gms/maps/model/a/ac;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/ab;

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Lcom/google/android/gms/maps/model/w;

    .line 81
    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    .line 82
    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F

    .line 83
    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z

    .line 84
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/u;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/u;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/ab;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/ab;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    return v0
.end method

.method final b()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Lcom/google/android/gms/maps/model/a/ab;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/a/ab;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/maps/model/w;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:Lcom/google/android/gms/maps/model/w;

    return-object v0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/google/android/gms/maps/internal/ck;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/v;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;)V

    goto :goto_0
.end method
