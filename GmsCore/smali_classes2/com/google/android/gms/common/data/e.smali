.class public Lcom/google/android/gms/common/data/e;
.super Lcom/google/android/gms/common/data/b;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/data/e;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/common/data/e;->c:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/data/g;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 45
    const-string v2, "data"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/g;->a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/g;

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-void
.end method

.method public static e()Lcom/google/android/gms/common/data/g;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/common/data/e;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->a([Ljava/lang/String;)Lcom/google/android/gms/common/data/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/e;->b(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/data/e;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)[B

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 59
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 60
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/common/data/e;->c:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    return-object v0
.end method
