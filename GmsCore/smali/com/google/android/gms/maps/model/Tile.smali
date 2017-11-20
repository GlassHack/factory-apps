.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/t;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/maps/model/t;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    .line 72
    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->d:I

    .line 52
    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->a:I

    .line 53
    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->b:I

    .line 54
    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->c:[B

    .line 55
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->d:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Lcom/google/android/gms/maps/internal/ck;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/Tile;->d:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/maps/model/Tile;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/maps/model/Tile;->b:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Tile;->c:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->b(Landroid/os/Parcel;I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/t;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;)V

    goto :goto_0
.end method
