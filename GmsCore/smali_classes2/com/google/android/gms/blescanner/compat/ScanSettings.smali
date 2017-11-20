.class public final Lcom/google/android/gms/blescanner/compat/ScanSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/gms/blescanner/compat/p;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/compat/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIJ)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a:I

    .line 103
    iput p2, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b:I

    .line 104
    iput p3, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c:I

    .line 105
    iput-wide p4, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->d:J

    .line 106
    return-void
.end method

.method public synthetic constructor <init>(IIIJB)V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/blescanner/compat/ScanSettings;-><init>(IIIJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->d:J

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/blescanner/compat/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b:I

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->d:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-wide v0, p0, Lcom/google/android/gms/blescanner/compat/ScanSettings;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    return-void
.end method
